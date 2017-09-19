/*
 * Programmer: Stephen Blatti
 * 09/04/2017
 * 4-2
 * The file diabetes.txt is a text file with the following layout:
 * Write a DATA step to read this text file and create a temporary SAS
 * data set called Diabetes.
 */

data Diabetes;
infile '/folders/myfolders/Biostatistcs by Example/problems/Diabetes.txt' pad;
input	@1	Subj$			2.
		@3	Insulin$		1.
		@4	Diet_Drinks$	9.
		@13	Glucose			3.;
run;

title"First 25 Observations from Diabetes";
proc print data=Diabetes (obs=25);
run;