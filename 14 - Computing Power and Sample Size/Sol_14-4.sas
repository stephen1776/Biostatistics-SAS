/*
 * 14-4
 * Compute the sample size per group for the following study:
 * ANOVA
 * Two-tailed
 * Alpha = 0.05
 * Mean of group 1: 50
 * Mean of group 2: 60
 * Mean of group 3: 65
 * Estimated pooled standard deviation: 8
 * Powers: 90%
 */

ods noproctitle;
ods graphics / imagemap=on;

proc power ;
	onewayanova test=overall groupmeans=(50 60 65) stddev=8 power=0.9 alpha=0.05 
		npergroup=.;
	plot x=power;
run;

