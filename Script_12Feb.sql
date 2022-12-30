--Calculate the percentage of the  total money spent by a customer on each order,percentage must be in fractions upto 2-3 precision?

select first_name,order_details,total_order_cost,SUM(total_order_cost) OVER (Partition BY first_name) AS TotalSpent
 from #Tbl_Customers TC
join #Tbl_Orders TOR
ON TC.id = TOR.cust_id

select first_name,order_details,total_order_cost,
SUM(total_order_cost) OVER (Partition BY first_name)TotalSpent,
ROUND((CAST(total_order_cost as float)/SUM(total_order_cost) OVER (Partition BY first_name))*100,3) AS [TotalSpent%]
 from #Tbl_Customers TC
join #Tbl_Orders TOR
ON TC.id = TOR.cust_id




select 2/4
select cast(2 as float)/4

select convert(float,2)/4

select GETDATE()
select CONVERT(DAte,GETDATE(),103)

select CONVERT(DATE,'12-02-2022',103)

select *,sum(cust_id) OVER(Partition by Cust_id) from #Tbl_Orders

select *,ROW_NUMBER() OVER(Partition by Cust_id order by cust_id)AS RN FROM #Tbl_Orders


select *, sum(total_order_cost) over (partition by cust_id) as total
from #Tbl_Orders

with cte as(
select *,ROW_NUMBER()OVER(partition by cust_id order by id)AS RN from #Tbl_Orders
)
select * from cte where RN>1

select R.* from
(select TC.*,ROW_NUMBER()OVER(partition by cust_id order by cust_id)AS RN from #Tbl_Orders TOR
join #Tbl_Customers TC ON TC.id=TOR.cust_id)R where RN>1


select distinct first_name from #Tbl_Customers as c
join
(select cust_id, count(cust_id) over (partition by cust_id) as cnt
from #Tbl_Orders ) as a
on c.id=a.cust_id where cnt>1

WITH CTE AS(
select *,ROW_NUMBER() OVER(Partition by Cust_id order by cust_id)AS RN from #Tbl_Orders TOR
join #Tbl_Customers TC ON TOR.cust_id=TC.id
)
select 'A'
select  first_name from CTE where RN > 1 group by first_name

select * from #Tbl_Customers
select * from #Tbl_Orders

select distinct first_name from 
(select TC.*,ROW_NUMBER() OVER(Partition by Cust_id order by cust_id)AS RN from #Tbl_Orders TOR
join #Tbl_Customers TC ON TOR.cust_id=TC.id)R where R.RN>1