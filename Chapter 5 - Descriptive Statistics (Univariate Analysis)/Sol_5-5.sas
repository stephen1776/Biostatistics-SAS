/*
 * 5-5
 * Using the BP data set from quest 5-3, compute the frequencies for the
 * two variables Drug and Gender. Omit cumulative statistics from the 
 * output. Suppress all plots.
 */

/*
 *
 * Task code generated by SAS Studio 3.6 
 *
 * Generated on '9/7/17, 8:28 PM' 
 * Generated by 'sasdemo' 
 * Generated on server 'LOCALHOST' 
 * Generated on SAS platform 'Linux LIN X64 2.6.32-642.6.2.el6.x86_64' 
 * Generated on SAS version '9.04.01M4P11092016' 
 * Generated on browser 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0' 
 * Generated on web client 'http://localhost:10080/SASStudio/36/main?locale=en_US&zone=GMT-05%253A00' 
 *
 */

proc freq data=WORK.BP;
	tables Drug Gender / nocum plots=none;
run;