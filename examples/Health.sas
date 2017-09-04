*Programn to read the text file Health.txt and create a
 SAS data set called Health in the Work library
 
 Programmer: Ron Cody
 Date: February 2, 2016;
 
 data Health;
    infile '/folders/myfolders/Health.txt';
    input Subj Gender $ Age Heart_Rate SBP DBP Chol;
run;