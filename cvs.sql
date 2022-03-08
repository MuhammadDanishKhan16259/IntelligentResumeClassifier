-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 04:09 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `cvs`
--

CREATE TABLE `cvs` (
  `id` int(11) NOT NULL,
  `intro` text NOT NULL,
  `dept` varchar(10) NOT NULL,
  `years` int(11) NOT NULL,
  `rawExp` longtext NOT NULL,
  `rawSki` longtext NOT NULL,
  `lang` mediumtext NOT NULL,
  `raw` longtext NOT NULL,
  `cvlink` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvs`
--

INSERT INTO `cvs` (`id`, `intro`, `dept`, `years`, `rawExp`, `rawSki`, `lang`, `raw`, `cvlink`) VALUES
(2, 'Ammar', 'HR', 1, '', 'python and java and mysql', '', '', ''),
(3, 'Mubashir', 'HR', 5, '', 'sql and php', '', '', ''),
(4, 'xyz', 'IT', 0, '', '', '', '', ''),
(5, 'avc', 'IT', 0, '', 'mysql and php', '', '', ''),
(6, 'Ammar Shahi', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nJava \nPython\nMySQL', ' urdu english sindhi', '', 'docx1.docx'),
(7, 'Nw Clent', 'DEV', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nJava \nPython\nMySQL', ' urdu english sindhi', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\ncontact info:\n+923123456789\nemail:\nskills:\njava \npython\nmysql\ncontact info:\n+923123456789\nemail:\ncontact info:\nurdu , english , sindhi', 'docx1.docx'),
(8, 'placeholder', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nJava \nPython\nMySQL', ' urdu english sindhi', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\ncontact info:\n+923123456789\nemail:\nskills:\njava \npython\nmysql\ncontact info:\n+923123456789\nemail:\ncontact info:\nurdu , english , sindhi', 'docx_1.docx'),
(9, 'placeholder', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nJava \nPython\nMySQL', ' urdu english sindhi', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\ncontact info:\n+923123456789\nemail:\nskills:\njava \npython\nmysql\ncontact info:\n+923123456789\nemail:\ncontact info:\nurdu , english , sindhi', 'docx_2.docx'),
(10, 'placeholder', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nJava \nPython\nMySQL', ' urdu english sindhi', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\ncontact info:\n+923123456789\nemail:\nskills:\njava \npython\nmysql\ncontact info:\n+923123456789\nemail:\ncontact info:\nurdu , english , sindhi', 'docx_3.docx'),
(11, 'placeholder', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nJava \nPython\nMySQL', ' urdu english sindhi', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\ncontact info:\n+923123456789\nemail:\nskills:\njava \npython\nmysql\ncontact info:\n+923123456789\nemail:\ncontact info:\nurdu , english , sindhi', 'docx_4.docx'),
(12, 'placeholder', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nJava \nPython\nMySQL', ' urdu english sindhi', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\ncontact info:\n+923123456789\nemail:\nskills:\njava \npython\nmysql\ncontact info:\n+923123456789\nemail:\ncontact info:\nurdu , english , sindhi', 'docx_5.docx'),
(13, 'placeholder', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nJava \nPython\nMySQL', ' urdu english sindhi', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\ncontact info:\n+923123456789\nemail:\nskills:\njava \npython\nmysql\ncontact info:\n+923123456789\nemail:\ncontact info:\nurdu , english , sindhi', 'docx_1.docx'),
(14, 'placeholder', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nJava \nPython\nMySQL', ' urdu english sindhi', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\ncontact info:\n+923123456789\nemail:\nskills:\njava \npython\nmysql\ncontact info:\n+923123456789\nemail:\ncontact info:\nurdu , english , sindhi', 'docx_2.docx'),
(15, 'placeholder', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nJava \nPython\nMySQL', ' urdu english sindhi', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\ncontact info:\n+923123456789\nemail:\nskills:\njava \npython\nmysql\ncontact info:\n+923123456789\nemail:\ncontact info:\nurdu , english , sindhi', 'docx_3.docx'),
(16, 'placeholder', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nJava \nPython\nMySQL', ' urdu english sindhi', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\ncontact info:\n+923123456789\nemail:\nskills:\njava \npython\nmysql\ncontact info:\n+923123456789\nemail:\ncontact info:\nurdu , english , sindhi', 'docx_4.docx'),
(17, 'placeholder', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nJava \nPython\nMySQL', ' urdu english sindhi', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\ncontact info:\n+923123456789\nemail:\nskills:\njava \npython\nmysql\ncontact info:\n+923123456789\nemail:\ncontact info:\nurdu , english , sindhi', 'docx_5.docx'),
(18, 'placeholder', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nJava \nPython\nMySQL', ' urdu english sindhi', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\ncontact info:\n+923123456789\nemail:\nskills:\njava \npython\nmysql\ncontact info:\n+923123456789\nemail:\ncontact info:\nurdu , english , sindhi', 'docx_3.docx'),
(19, 'placeholder', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nJava \nPython\nMySQL', ' urdu english sindhi', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\ncontact info:\n+923123456789\nemail:\nskills:\njava \npython\nmysql\ncontact info:\n+923123456789\nemail:\ncontact info:\nurdu , english , sindhi', 'docx_4.docx'),
(20, 'placeholder', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nJava \nPython\nMySQL', ' urdu english sindhi', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\ncontact info:\n+923123456789\nemail:\nskills:\njava \npython\nmysql\ncontact info:\n+923123456789\nemail:\ncontact info:\nurdu , english , sindhi', 'docx_5.docx'),
(21, 'placeholder', 'HR', 18, '\nExperience:\nCompany A: year 2007 - 2020\nCompany B: year 2007 – 2012', '\nSkills:\n•	PHP \n•	C#\n•	HTML/CSS\n•	JQUERY\n•	JavaScript\n•	Asp.net', '', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2007 - 2020\ncompany b: year 2007 – 2012\nskills:\n•	php \n•	c#\n•	html/css\n•	jquery\n•	javascript\n•	asp.net\ncontact info:\n+923123456782\nemail: \n\n', 'docx_3.docx'),
(22, 'placeholder', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nMS Office (Word, Power Point, Excel).\nHtml5\nCss3                       \nJavaScript\nreact.js\nReact native (UI)\n Redux\nFirebase authentication\nBootstrap                 \n Firebase Database.', '', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\nskills:\nms office (word, power point, excel).\nhtml5\ncss3                       \njavascript\nreact.js\nreact native (ui)\n redux\nfirebase authentication\nbootstrap                 \n firebase database.\ncertificates & achievements:\n react js & react native with redux (11/2019 - 01/2020) \nshort certificate course on react js & react native with redux \ncisco certified network associate (08/2021 - present)\n entry-level information technology (it)\n\ncontact info:\n+923123456782\nemail: ', 'docx_4.docx'),
(23, 'placeholder', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSKILLS:\nDatabase SQL Server Management, MS Access \nTerminal Ubuntu\nMatlab \nAndroid Studio\nComputer Graphics (Adobe Flash)\nMS Office (Word, Excel, Power point)\nMS Visio\nMS Office Project\nJustin mind\nTechnical Report Writing\nSRS Report\nWeb Design and Development (Html, Css, JavaScript, Php, Ajax)\n\nCERTIFICATIONS & COURSES:\nMATRIC (Computer Science) Certificate\nINTERMEDIATE(Pre-Engineering) Certificate \nBS in Software Engineering \n\n', '', '\n\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\nskills:\ndatabase sql server management, ms access \nterminal ubuntu\nmatlab \nandroid studio\ncomputer graphics (adobe flash)\nms office (word, excel, power point)\nms visio\nms office project\njustin mind\ntechnical report writing\nsrs report\nweb design and development (html, css, javascript, php, ajax)\n\ncertifications & courses:\nmatric (computer science) certificate\nintermediate(pre-engineering) certificate \nbs in software engineering \n\n', 'docx_5.docx'),
(24, '\nBasic Information:\nSample paragraph holding info about basic info of Applicant', 'HR', 18, '\nExperience:\nCompany A: year 2007 - 2020\nCompany B: year 2007 – 2012', '\nSkills:\n•	PHP \n•	C#\n•	HTML/CSS\n•	JQUERY\n•	JavaScript\n•	Asp.net', '', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2007 - 2020\ncompany b: year 2007 – 2012\nskills:\n•	php \n•	c#\n•	html/css\n•	jquery\n•	javascript\n•	asp.net\ncontact info:\n+923123456782\nemail: \n\n', 'docx_3.docx'),
(25, '\nBasic Information:\nSample paragraph holding info about basic info of Applicant', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSkills:\nMS Office (Word, Power Point, Excel).\nHtml5\nCss3                       \nJavaScript\nreact.js\nReact native (UI)\n Redux\nFirebase authentication\nBootstrap                 \n Firebase Database.', '', '\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\nskills:\nms office (word, power point, excel).\nhtml5\ncss3                       \njavascript\nreact.js\nreact native (ui)\n redux\nfirebase authentication\nbootstrap                 \n firebase database.\ncertificates & achievements:\n react js & react native with redux (11/2019 - 01/2020) \nshort certificate course on react js & react native with redux \ncisco certified network associate (08/2021 - present)\n entry-level information technology (it)\n\ncontact info:\n+923123456782\nemail: ', 'docx_4.docx'),
(26, '\n\nBasic Information:\nSample paragraph holding info about basic info of Applicant', 'HR', 29, '\nExperience:\nCompany A: year 2001 - 2020\nCompany B: year 2010 – 2020', '\nSKILLS:\nDatabase SQL Server Management, MS Access \nTerminal Ubuntu\nMatlab \nAndroid Studio\nComputer Graphics (Adobe Flash)\nMS Office (Word, Excel, Power point)\nMS Visio\nMS Office Project\nJustin mind\nTechnical Report Writing\nSRS Report\nWeb Design and Development (Html, Css, JavaScript, Php, Ajax)\n\nCERTIFICATIONS & COURSES:\nMATRIC (Computer Science) Certificate\nINTERMEDIATE(Pre-Engineering) Certificate \nBS in Software Engineering \n\n', '', '\n\nbasic information:\nsample paragraph holding info about basic info of applicant\nexperience:\ncompany a: year 2001 - 2020\ncompany b: year 2010 – 2020\nskills:\ndatabase sql server management, ms access \nterminal ubuntu\nmatlab \nandroid studio\ncomputer graphics (adobe flash)\nms office (word, excel, power point)\nms visio\nms office project\njustin mind\ntechnical report writing\nsrs report\nweb design and development (html, css, javascript, php, ajax)\n\ncertifications & courses:\nmatric (computer science) certificate\nintermediate(pre-engineering) certificate \nbs in software engineering \n\n', 'docx_5.docx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cvs`
--
ALTER TABLE `cvs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cvs`
--
ALTER TABLE `cvs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
