/*
 * 12-4
 * Repeat 12-3 but with reference level for Age_Group = '1:less 60'
 * and for Chol_High = '0'
 */


ods noproctitle;
ods graphics / imagemap=on;

proc logistic data=WORK.RISK;
	class Age_Group(ref='1:Less 60') Chol_High(ref = '0') / param=ref;
	model Heart_Attack(event='1')=Age_Group Chol_High / link=logit 
		technique=fisher;
run;