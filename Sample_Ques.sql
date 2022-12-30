CREATE TAble #Tbl_Orders
(
id int
,cust_id int
,order_date datetime
,order_quantity int
,order_details varchar(100)
,total_order_cost int
)

INSERT INTO #Tbl_Orders(id,cust_id,order_date,order_quantity,order_details,total_order_cost)
VALUES(1,3,'2022-01-26',1,'coat',200),(2,3,'2022-01-24',1,'shoe',200),(3,1,'2022-01-23',1,'skirt',100),(4,2,'2022-01-27',1,'Jeans',400)
,(5,2,'2022-01-20',1,'pant',300)

CREATE TAble #Tbl_Customers
(
id int
,first_name varchar(100)
,last_name varchar(100)
,city varchar(100)
,address_d varchar(100)
,phone_number varchar(100)
)

INSERT INTO #Tbl_Customers(id,first_name,last_name,city,address_d,phone_number)
VALUES(1,'John','Wick','London','','090900'),(2,'Jack','Jonnes','Florida','','090900'),(3,'Sara','Will','Hawaii','','090900'),(4,'Abdullah','Jalal','Kolkata','','090900')
--,(1,'John','Wick',London,'','090900')


select * from #Tbl_Orders
select * from #Tbl_Customers

--uniq username in the sense (entire dataset has a unique user's firstname)
--sum (may be required during percentage calculation)
--percentage must be represented as fractions
--assuming a user can atmost palce 1 order per day
--Calculate the percentage of the  total money spent by a customer on each order,percentage must be in fractions?
