proc means data=EA4887 mean noprint;
    class FlatType;
    var TotalReceptions;
    output out=ReceptionsMean mean=AvgReceptions;
run;

proc sort data=ReceptionsMean out=SortedReceptionsMean;
    by descending AvgReceptions;
run;

proc print data=SortedReceptionsMean (obs=1);
title "Property Type with the Most Number of Receptions on Average";
run;