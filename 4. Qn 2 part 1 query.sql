/*Question 2(1) */
/* Check of the years included for the data */
select year(orderdate) as year
from sample_order 
group by year(orderdate)
order by year(orderdate);

/* Since there are 4 years, we split the data by year by months in matrix form */
select month(orderdate) as months, 
sum(case when year(orderdate) = 2014 then sales else 0 end) as '2014',
sum(case when year(orderdate) = 2015 then sales else 0 end) as '2015',
sum(case when year(orderdate) = 2016 then sales else 0 end) as '2016',
sum(case when year(orderdate) = 2017 then sales else 0 end) as '2017',
sum(sales) as 'Total in Months'
from sample_order
group by month(orderdate)
order by month(orderdate);
