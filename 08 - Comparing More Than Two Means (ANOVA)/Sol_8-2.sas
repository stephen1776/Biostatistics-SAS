/*
 * 8-2
 * Repeat problem 8-1, except use the SAS data set Blood_Pressure.sas7bdat.
 */

LIBNAME PROBLEMS '/folders/myfolders/Biostatistcs by Example/problems/';

Title;
ods noproctitle;
ods graphics / imagemap=on;

proc glm data=PROBLEMS.blood_pressure;
	class Drug;
	model SBP=Drug;
	means Drug / hovtest=levene welch plots=none;
	lsmeans Drug / adjust=tukey pdiff alpha=.05;
	run;
quit;
