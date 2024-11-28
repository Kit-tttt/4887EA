proc sql;
    create table Turnover as
    select FlatType, sum(price) as TotalTurnover
    from EA4887
    group by FlatType
    order by TotalTurnover desc;
quit;

proc print data=Turnover (firstobs=2 obs=2);
title "Property Type with the Second Most Turnover";
run;