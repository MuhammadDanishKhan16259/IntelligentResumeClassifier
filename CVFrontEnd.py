from asyncio.windows_events import NULL
import os
import json
import re
from flask import Flask, flash, request, redirect, url_for, render_template, session, send_from_directory
from werkzeug.utils import secure_filename
from flask_session import Session
from expExtraction import expExtract
UPLOAD_FOLDER = 'D:\\Python\\Flask\\FlaskFIles'
ALLOWED_EXTENSIONS = {'docx'}

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = 'E:\\Fall 2021\\Project\\Pro 4\\cvrater-main\\CVs'
# app.config['UPLOAD_FOLDER'] = 'CVs'


app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)


import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="test"
)



def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS
#HELPING FUNCTIONS
def insertToDb(intro, dept, yr, exp, ski, lan, raw, filename):
    mycursor = mydb.cursor()
    query= "INSERT INTO `cvs` (`intro`, `dept`, `years`, `rawExp`, `rawSki`, `lang`, `raw`, `cvlink`) VALUES ( \"{}\",\"{}\",\"{}\",\"{}\",\"{}\",\"{}\",\"{}\",\"{}\")".format(intro, dept, str(yr), exp, ski, lan, raw, filename)
    print(query)
    #values=(name, dept, str(yr), exp, ski, lan, filename)
    mycursor.execute(query)
    mydb.commit()

    print(mycursor.rowcount, "record inserted.")


#URI
@app.route("/")
def index():
    if not session.get("username"):
        # if not there in the session then redirect to the login page
        return redirect("/login")
    return render_template('index.html',username=session.get("username"))
  
  
@app.route("/login", methods=["POST", "GET"])
def login():
    if request.method == "POST":
        # record the user name
        username= request.form.get("username")
        password= request.form.get("password")

        mycursor = mydb.cursor()
        query= "SELECT * FROM login WHERE username= '{}' AND password='{}'".format(username,password)
        mycursor.execute(query)
        myresult = mycursor.fetchall()
        if myresult:
                session["username"]=username
                return redirect("/")
    return render_template("login.html")

@app.route("/signup", methods=["POST", "GET"])
def signup():
    if request.method == "POST":
        # record the user name
        email= request.form.get("email")
        username= request.form.get("username")
        password= request.form.get("password")
        
        mycursor = mydb.cursor()
        query= "INSERT INTO login ( `username`, `password`, `email`) VALUES ('{}','{}', '{}')".format(username,password, email)
        print(query)
        mycursor.execute(query)
        mydb.commit()
        
        return redirect("/")
    return render_template("signup.html")

@app.route('/logout')
def logout():
    session["username"]=NULL
    return redirect("/")
@app.route('/upload')
def form():
    return render_template('uploadform.html', username= session.get("username")) 

@app.route('/cvrate', methods=["POST", "GET"])
def cvrate():
    if request.method=="POST":
        keywords=request.form.get("keywords")
        experience=request.form.get("experience")
        dept=request.form.get("dept")
        addKeys=request.form.get("addKeys")
        return rankingHtml(keywords, experience, dept, addKeys)
    return render_template('cvrate.html',username=session.get("username"))




def cvSort(myresult, keywords, experience, dept, addkeys):

    dict_name=dict()
    dict_years=dict()
    dict_exp= dict()
    dict_ski=dict()
    dict_lang=dict()
    dict_link= dict()
    dict_raw= dict()
    dict_score= dict()
    keywords=keywords.lower()
    keywords=keywords.replace(',',' ')
    keywords_list=keywords.split()

    addkeys=addkeys.lower()
    addkeys=addkeys.replace(',',' ')
    addkeys_list=addkeys.split()

    for x in myresult:
        dict_name[str(x[0])]= x[1]
        dict_years[str(x[0])]= x[2]
        dict_exp[str(x[0])]= x[3]
        dict_ski[str(x[0])]= x[4]
        dict_lang[str(x[0])]= x[5]
        dict_raw[str(x[0])]= x[6]
        dict_link[str(x[0])]= x[7]
        dict_score[str(x[0])]= 0

    print(dict_exp)
    print(keywords_list)


    #Scoring on experience

    experience = int(experience)
    yrclass=0
    for key in dict_years:
            if dict_years[key]<2:
                yr_class = 1
            elif dict_years[key]>2 and dict_years[key]<5:
                yr_class= 2
            elif dict_years[key]>4 and dict_years[key]<10:
                yr_class= 3
            elif dict_years[key]>10:
                yr_class= 4

            if experience-yr_class==0:
                dict_score[key]= dict_score[key]+5
            elif abs(experience-yr_class)==1:
                dict_score[key]= dict_score[key]+3
            elif abs(experience-yr_class)==2:
                dict_score[key]= dict_score[key]+1

    print("After Scoring on Experience years")
    print(dict_score)

            
    #Scoring main Keywords
    for keyword in keywords_list:
        for key_ski in dict_ski:
            if re.search(keyword,dict_ski[key_ski])!=None:
                dict_score[key_ski]= dict_score[key_ski]+1

    print("After Scoring on Skills")
    print(dict_score)

    #Scoring add Keywords
    for addKey in addkeys_list:
        for key in dict_raw:
            if re.search(addKey,dict_raw[key])!=None:
                dict_score[key]= dict_score[key]+0.5

    print("After Scoring on additional")
    print(dict_score)
    #Return a giant list of tuples

    #first sort the score dictionary
    sorted_score=dict(sorted(dict_score.items(), key=lambda item: item[1], reverse=True))
    output_list=[]
    for key in sorted_score:
        output_list.append((dict_name[key], dict_years[key], dict_ski[key], dict_lang[key], dict_score[key], dict_link[key]))
    print(output_list)
    return output_list

def rankingHtml(keywords, experience, dept, addKeys):
    mycursor = mydb.cursor()
    query= "SELECT id, intro, years, rawExp, rawSki, lang, raw , cvlink FROM cvs WHERE dept='{}'".format(dept)
    mycursor.execute(query)
    myresult = mycursor.fetchall()
    output_list=cvSort(myresult,keywords, experience, dept, addKeys)
    
    return render_template('ratedCV.html',output=output_list, username=session.get("username"))

        

@app.route('/CVs/<path:filename>', methods=['GET', 'POST'])
def download(filename):
    return send_from_directory(app.config['UPLOAD_FOLDER'],
                               filename, as_attachment=True)

@app.route('/style.css', methods=['GET', 'POST'])
def stylesheet():
    return render_template('style.css')
    
@app.route('/file', methods=['GET', 'POST'])
def upload_file():
    exp=0
    filename=""
    if request.method == 'POST':
        # check if the post request has the file part
        uploaded_files = request.files.getlist("file[]")
        print (uploaded_files)
        if len(uploaded_files)==0:
            print("No file part")
            return redirect(request.url)
        files_processed=[]
        for file in uploaded_files:
            if file and allowed_file(file.filename):
                files_processed.append(file.filename)
                name="placeholder"
                dept= request.form.get("dept")
                filename = secure_filename(file.filename)
                file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
                intro,yr,exp,ski,lang,raw=expExtract(os.path.join(app.config['UPLOAD_FOLDER'], filename))
                insertToDb(intro, dept, yr, exp, ski, lang, raw, filename)
                
##    return "file:"+filename+" uploaded"
    print(files_processed)
    return "Files uploded"+ str(files_processed)




if __name__ == '__main__':
   app.run()
