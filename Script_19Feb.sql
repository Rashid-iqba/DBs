---calculate the percentage of total marks of student obtain in each subject
--find the student appearing in more than 1 subject
drop table if exists #temp
--if OBJECT_ID('tempdb..#temp') is not null
--drop table #temp
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
,(8,'ann','ser',59)

select * from #temp

SELECT firstName,lastName,Marks,
SUM(Marks) OVER(Partition by firstName,lastName) AS [SUM],CAST(Marks as float)/SUM(Marks) OVER(partition by firstName,lastName)*100 AS Per
 from #temp

 select distinct firstName,lastName from
( select firstName,lastName,Marks,ROW_NUMBER() OVER(Partition by firstName,LastName ORDER BY firstName) AS RN 
 from #temp)A where A.RN>1

--select *, round(cast(Marks as float)/sum(Marks) over(partition by firstName,lastname)*100,2) as [%] from #temp
--============================================================================================================================
CREATE table #temp(Name varchar(100))
INSERT into #temp values('Abdullah'),('Adam'),('Alison'),('Jiny'),('Johny'),('Oliver')

select * from #temp

--calculate the count of first letter of each name appeared in all for each subjects by using only count()

select name,LEFT(Name,1) AS FirstLetter,
count(1) over(partition by left(name,1)) as cnt from #temp
--=======================================================================
CREATE table #temp(Id int primary key,firstName varchar(100), lastName varchar (100), City varchar(100))
insert into #temp(Id, firstName, lastName, City)
VALUES
(1,'Adam','Gil','Kolkata')
,(2,'Abdullah','Jalal','Kolkata')
,(3,'Alison','Ser','Delhi')
,(4,'John','Tore','Noida')
,(5,'Adam','Harp','Noida')
,(6,'Alison','Jones','Delhi')

select * from #temp

--FIND the users residing in same city but have different first name

select T1.* from #temp t1
join #temp t2
ON 
t1.Id<>t2.Id
AND t1.city=t2.city
AND t1.firstName <> t2.firstName

--======================================================================
--u r given a table of movies popularity searches by users. 
--find the minimum,average, maximum rental prices for each movies popularity rating.
--popularity id efined below:

--0 reviews: NEW
--1 to 5 reviews : Rising
--6 to 15 rev : Trending
--16 to 40 rev : Hit
--above 40 rev: super hit


IF OBJECT_ID('tempdb..#temp') is not null
drop table #Temp

CREATE table #temp(movie varchar(100), review int, relaese date,price float, screentype varchar (100))
insert into #temp(movie, review, relaese,price,screentype)
VALUES('XYZ1',0,'2022-02-12',200,'multiplex')
,('XYZ2',0,'2022-05-12',300,'multiplex')
,('XYZ3',4,'2022-02-17',500,'multiplex')
,('XYZ4',8,'2021-06-12',800,'single screen')
,('XYZ5',20,'2021-02-16',300,'multiplex')
,('XYZ6',50,'2020-06-22',250,'single screen')


select * from #temp

--0 reviews: NEW
--1 to 5 reviews : Rising
--6 to 15 rev : Trending
--16 to 40 rev : Hit
--above 40 rev: super hit

select CONCAT(movie,' ',Price) TAG, review,price,
CASE WHEN review = 0 THEN 'NEW'
WHEN review BETWEEN 1 AND 5 THEN 'Rising'
WHEN review BETWEEN 6 AND 15 THEN 'Trending'
WHEN review BETWEEN 16 AND 40 THEN 'Hit'
WHEN review > 40 THEN 'Blockbuster' END AS PopularityRating
 from #temp

 with CTE AS(
 select CONCAT(movie,' ',Price) TAG, review,price,
CASE WHEN review = 0 THEN 'NEW'
WHEN review BETWEEN 1 AND 5 THEN 'Rising'
WHEN review BETWEEN 6 AND 15 THEN 'Trending'
WHEN review BETWEEN 16 AND 40 THEN 'Hit'
WHEN review > 40 THEN 'Blockbuster' END AS PopularityRating
 from #temp
)
select * from CTE
select PopularityRating,MIN(Price) AS MinP,MAX(Price) AS MaxP,
 AVG(Price) AVGP from CTE group by PopularityRating

 select * from #temp