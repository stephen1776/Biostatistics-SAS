/* 
* Programmer: Stephen Blatti
* 09/03/2017
 * 3-3:
 * Repeat prob 3-2 except use the CVS file Diabetes.csv as the sourse of your data
 */

/* Generated Code (IMPORT) */
/* Source File: Diabetes.csv */
/* Source Path: /folders/myfolders/Biostatistcs by Example/problems */
/* Code generated on: 9/3/17, 4:33 PM */

%web_drop_table(WORK.Diabetes);


FILENAME REFFILE '/folders/myfolders/Biostatistcs by Example/problems/Diabetes.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.Diabetes;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.Diabetes; RUN;


%web_open_table(WORK.Diabetes);

/*
 *
 * Task code generated by SAS Studio 3.6 
 *
 * Generated on '9/3/17, 4:34 PM' 
 * Generated by 'sasdemo' 
 * Generated on server 'LOCALHOST' 
 * Generated on SAS platform 'Linux LIN X64 2.6.32-642.6.2.el6.x86_64' 
 * Generated on SAS version '9.04.01M4P11092016' 
 * Generated on browser 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0' 
 * Generated on web client 'http://localhost:10080/SASStudio/36/main?locale=en_US&zone=GMT-05%253A00&http%3A%2F%2Flocalhost%3A10080%2FSASStudio%2F36%2F=' 
 *
 */

title1 "List Data for WORK.DIABETES";

proc print data=WORK.DIABETES
	(obs=5) label;
	var Subj Insulin Diet_Drinks Glucose;
run;

title1;