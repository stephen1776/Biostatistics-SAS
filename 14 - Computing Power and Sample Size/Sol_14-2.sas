/*
 * 14-2
 * Compute the sample size per group for the following study:
 * Two-sample t-test
 * Two-tailed
 * Alpha = 0.05
 * Mean of group 1: 50
 * Mean of group 2: 65
 * Estimated pooled standard deviation: 12 and 15
 * Powers: 80% and 90%
 */


ods noproctitle;
ods graphics / imagemap=on;

proc power ;
	twosamplemeans test=diff sides=2 groupmeans=(50 65) stddev=12 15 power=0.8 0.9 
		alpha=0.05 npergroup=.;
	plot x=power;
run;