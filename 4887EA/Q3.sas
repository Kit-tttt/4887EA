proc freq data=EA4887 noprint;
    tables FlatType / out=HouseTypeFreq (rename=(percent=Contribution));
run;

data HouseTypeFreq;
    set HouseTypeFreq;
    Contribution = Contribution / 100;
run;

proc print data=HouseTypeFreq;
title "Contribution of House Types in the Dataset";
run;

proc sort data=HouseTypeFreq out=MostCommonType;
    by descending count;
run;

proc print data=MostCommonType (obs=1);
title "Most Common Property Type in the UK";
run;