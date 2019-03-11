SELECT productname, bought_tog, count(distinct(orderid)) as times_bought_together
FROM (
  SELECT so1.productname as productname, so2.productname as bought_tog, so1.orderid
  FROM sample_order so1
  INNER join sample_order so2
  ON so1.orderid = so2.orderid AND so1.productname != so2.productname) tog
GROUP BY productname, bought_tog