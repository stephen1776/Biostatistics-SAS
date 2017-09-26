/*
 * 13-3
 * Repeat prob 13-2 except add necessary statements (and edit the task)
 * so that column 1 is Heart_Attack = 1 and row 1 is Chol_High = 1.
 */

proc format;
	value yesno 1 = '1:Yes'
				0 = '2:No';
run;
proc freq data=WORK.RISK order = formatted;
	format Chol_High Heart_Attack yesno.;
	tables  (Chol_High) *(Heart_Attack) / chisq relrisk nopercent  
		nocum plots=none;
run;