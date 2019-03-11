/* Since there are 4 years, we split the data by year by months in matrix form */
select productname as productname, 
sum(case when year(orderdate) = 2014 then quantity else 0 end) as '2014',
sum(case when year(orderdate) = 2015 then quantity else 0 end) as '2015',
sum(case when year(orderdate) = 2016 then quantity else 0 end) as '2016',
sum(case when year(orderdate) = 2017 then quantity else 0 end) as '2017',
sum(quantity) as 'Total in Months'
from sample_order
group by productname
order by sum(case when year(orderdate) = 2017 then quantity else 0 end) desc;