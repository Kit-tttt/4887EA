data FilteredData;
    set EA4887;
    if FlatType in ("flat", "terraced house");
run;

proc sgplot data=FilteredData;
    vbox TotalBaths / category=FlatType;
    title "Distribution of Bathrooms Between Flat and Terraced House";
run;

proc means data=FilteredData mean median min max;
    class FlatType;
    var TotalBaths;
run;