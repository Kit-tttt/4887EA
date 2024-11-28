/*PROC IMPORT
	out=EA4887
	datafile='/home/u64002645/Project_Housing.csv'
	dbms=csv
	replace;
RUN;*/

data Last20Rows;
    set EA4887 nobs=nobs;
    if _n_ > nobs - 20;
run;

proc print data=Last20Rows;
title "Last 20 Rows of the Dataset";
run;

