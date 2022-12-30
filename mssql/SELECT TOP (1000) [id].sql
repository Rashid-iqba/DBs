SELECT TOP (1000) [id]
      ,[emp_name]
      ,[age]
      ,[address]
      ,[depart]
  FROM [db1].[dbo].[employee]

  SELECT * from countryTbl
  
  SELECT * from OccupationTbl
    SELECT * from citizen

  
  CREATE TABLE citizen(
      id int PRIMARY KEY IDENTITY(1,1) ,
      name VARCHAR(100),
      salary INT ,
      country int FOREIGN KEY REFERENCES countryTbl(id),
      occupation  int FOREIGN KEY REFERENCES OccupationTbl(id),
  
  )


INSERT into citizen(name,salary,country,occupation)
VALUES('Rani',8000,3,2),('Rohan',10000,3,4),('Ram',13000,1,3),('Raj',12000,4,2),('Rahul',9000,3,3)

UPDATE citizen SET occupation=1 WHERE name='Rozi'


select * FROM citizen as c left JOIN OccupationTbl as o on c.occupation=o.id LEFT JOIN countryTbl as co on c.country=co.id


SELECT name from citizen where salary=(SELECT MAX(salary) from citizen)

SELECT COUNT(id) from citizen

SELECT SUM(salary) from citizen
SELECT  SUM(DISTINCT(salary)) from citizen

SELECT AVG(salary) from citizen
SELECT  AVG(DISTINCT(salary)) from citizen





SELECT name FROM citizen WHERE country = ( SELECT ID FROM countryTbl WHERE NAME='INDIA') 
AND  Occupation = ( SELECT ID FROM OccupationTbl WHERE NAME='ENGINEER' ) 





SELECT * FROM countryTbl AS CO left JOIN citizen AS CT ON CO.id=CT.country

use db1;

CREATE SCHEMA myschema2

CREATE TABLE [myschema2].[testing1] 
(
  id int IDENTITY(1,1),occupation NVARCHAR(100),country NVARCHAR(100)
) 

SELECT * FROM  [myschema2].[testing1]

create SCHEMA [myschema3];

create table [myschema2].[emp]
(
  id INT IDENTITY(1,1),
  name NVARCHAR(100)
)


TRUNCATE TABLE [myschema2].[emp]
 
 SELECT * FROM [myschema2].[emp]



;
 CREATE PROCEDURE [myschema2].[mysp]
 as 
 SELECT * from citizen
 SELECT * from countryTbl
 GO;

 EXEC [mysp]


 create PROCEDURE [mysp] @name NVARCHAR(100)
 as 
     select * from citizen WHERE  name = @name 
 GO;




 CREATE PROCEDURE SelectAllCustomers @City nvarchar(30)
AS
SELECT * FROM countryTbl WHERE  name = @City
GO;

SELECT * from countryTbl left join citizen on countryTbl.id=citizen.country GROUP BY countryTbl.name

-