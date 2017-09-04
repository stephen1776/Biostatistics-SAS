*Programn to read the text file Health.txt and create a
 SAS data set called Health in the Work library
 
 Programmer: Ron Cody
 Date: February 2, 2016;
 
 data Health;
    infile '/folders/myfolders/Health.txt' pad;
    Input @1  Subj       3.
          @4  Gender    $1.
          @5  Age        2.
          @7  Heart_Rate 2.
          @9  SBP        3.
          @12 DBP        3.
          @16 Chol       3.;
run;