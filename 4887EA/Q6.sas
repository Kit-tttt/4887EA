proc sql;
    create table AvgPrice as
    select TotalBeds, TotalBaths, avg(price) as AvgPrice
    from EA4887
    group by TotalBeds, TotalBaths;
quit;

proc print data=AvgPrice;
title "Relationship Between Bedrooms, Bathrooms, and Average Price";
run;

proc sgplot data=AvgPrice;
    scatter x=TotalBeds y=AvgPrice / group=TotalBaths;
    title "Relationship Between Bedrooms, Bathrooms, and Average Price";
run;