/*
 * 12-1
 * Starting with the SASHELP data set Heart, run a binary logistic regression 
 * with Status as the Response variable and Dead as the event of interest.
 * Select the two variables Chol_Status (Cholesterol Status0 and BP_Status
 * (Blood Pressure Status) as classification variables. Create a filter using
 * BP_Status ne 'Optimal' and set parameterization of effects to Reference.
 */

/*
 *
 * Task code generated by SAS Studio 3.6 
 *
 * Generated on '9/24/17, 7:56 PM' 
 * Generated by 'sasdemo' 
 * Generated on server 'LOCALHOST' 
 * Generated on SAS platform 'Linux LIN X64 2.6.32-642.6.2.el6.x86_64' 
 * Generated on SAS version '9.04.01M4P11092016' 
 * Generated on browser 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0' 
 * Generated on web client 'http://localhost:10080/SASStudio/36/main?locale=en_US&zone=GMT-05%253A00' 
 *
 */

ods noproctitle;
ods graphics / imagemap=on;

proc logistic data=SASHELP.HEART;
	where BP_Status ne 'Optimal';
	class Chol_Status BP_Status / param=ref;
	model Status(event='Dead')=Chol_Status BP_Status / link=logit technique=fisher;
run;