from expExtraction import expExtract



if __name__=="__main__":
    yr,exp,ski,lang=expExtract('docx1.docx')
    print(yr)
    print("-----------Experience----------")
    print(exp)
    print("-----------Skill----------")
    print(ski)
    print("---------Languages----------")
    print(lang)
