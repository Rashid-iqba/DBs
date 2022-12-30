--calculate the percentage of total marks of student obtain in each subject
CREATE table #temp(Id int,firstName varchar(100), lastName varchar (100), Marks float)
insert into #temp(Id, firstName, lastName, Marks)
VALUES
(1,'arun','prasanth',40)
,(2,'ann','antony',45)
,(3,'sruthy','abc',41)
,(4,'new','abc',47)
,(5,'arun','prasanth',45)
,(6,'arun','prasanth',49)
,(7,'ann','antony',49)

select * from #temp




CREATE table #tempr(Name varchar(100))
INSERT into #tempr values('Abdullah'),('Adam'),('Alison'),('Jiny'),('Johny'),('Oliver')



CREATE table #tempy(Id int primary key,firstName varchar(100), lastName varchar (100), City varchar(100))
insert into #tempy(Id, firstName, lastName, City)
VALUES
(1,'Adam','Gil','Kolkata')
,(2,'Abdullah','Jalal','Kolkata')
,(3,'Alison','Ser','Delhi')
,(4,'John','Tore','Noida')
,(5,'Adam','Harp','Noida')
,(6,'Alison','Jones','Delhi')

select * from #tempy

--FIND the users residing in same city but have different first name

select * from #tempy self 



--u r given a table of movies popularity searches by users. find the minimum,average, maximum rental prices for each movies popularity rating.
--popularity id efined below:

--0 reviews: NEW
--1 to 5 reviews : Rising
--6 to 15 rev : Trending
--16 to 40 rev : Hit
--above 40 rev: super hit


IF OBJECT_ID('tempdb..#temp') is not null
drop table #Temp

CREATE table #tempmov(movie varchar(100), review int, relaese date,price float, screentype varchar (100))
insert into #temmovp(movie, review, relaese,price)
--u r given a table of movies popularity searches by users. find the minimum,average, maximum rental prices for each movies popularity rating.
--popularity id efined below:

--0 reviews: NEW
--1 to 5 reviews : Rising
--6 to 15 rev : Trending
--16 to 40 rev : Hit
--above 40 rev: super hit


IF OBJECT_ID('tempdb..#temp') is not null
drop table #Temp

CREATE table #temp(movie varchar(100), review int, relaese date,price float, screentype varchar (100))


insert into #temp(movie, review, relaese,price

IF OBJECT_ID('tempdb..#temp') is not null
drop table #Temp




-- ***********************************************************************************************************

CREATE table #tempmovie(movie varchar(100), review int, relaese date,price float, screentype varchar (100))
insert into #tempmovie(movie, review, relaese,price,screentype)
VALUES('XYZ1',0,'2022-02-12',200,'multiplex')
,('XYZ2',0,'2022-05-12',300,'multiplex')
,('XYZ3',4,'2022-02-17',500,'multiplex')
,('XYZ4',8,'2021-06-12',800,'single screen')
,('XYZ5',20,'2021-02-16',300,'multiplex')
,('XYZ6',50,'2020-06-22',250,'single screen')








select CONCAT(movie,' ',Price) TAG, review,price,

CASE 
WHEN review = 0  
         THEN 'NEW'
WHEN review BETWEEN 1 AND 5   
         THEN 'Rising'
WHEN review BETWEEN 6 AND 15 
        THEN 'Trending'
WHEN review BETWEEN 16 AND 40 
        THEN 'Hit'
WHEN review > 40 
        THEN 'Blockbuster' 
END 
AS
 PopularityRating from #tempmovie