/*
 * 14-6
 * Compute the sample size per group for the following study:
 * Test of two proportions
 * Two-tailed
 * Alpha = 0.05
 * p1 = 0.5
 * p2 = 0.75
 * Power: 80%
 */



ods noproctitle;
ods graphics / imagemap=on;

proc power ;
	twosamplefreq test=pchi sides=2 groupproportions=(0.5 0.75) power=0.8 
		alpha=0.05 npergroup=.;
	plot x=power;
run;