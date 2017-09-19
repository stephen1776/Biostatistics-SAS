/*
 * Programmer: Stephen Blatti
 * 09/04/2017
 * 4-1
 * Write a short data step to read the text file Diabetes_No_Varnames.csv 
 * and create a temporary SAS data set called Diabetes. The data in this
 * file is the same as the data in the Diabetes.xls file except that the 
 * first row does not contain variable (column) names. Use the names 
 * insulin, Sunj, Diet_Drinks, and Glucose for the variables. You may
 * decide to make the variable Subj character or numeric, your choice.
 * Use a LENGHTH statement to set a length of 1 for the variable Insulin
 * and a length of 9 for Diet_Drinks. 
 */
data Diabetes;
length Insulin$ 1 Diet_Drinks$ 9;
infile '/folders/myfolders/Biostatistcs by Example/problems/Diabetes_No_Varnames.csv' dsd;
input Subj Insulin$ Diet_Drinks$ Glucose;
run;

title"First 25 Observations from Diabetes";
proc print data=Diabetes (obs=25);
run;