create table #temp_employee(employee_id int, name varchar(100))
INSERT into #temp_employee(employee_id, name)
VALUES
(1,'Salah')
,(2,'Samuel')
,(3,'Karthik')

--write a sql query to find longest streak for each employee

IF OBJECT_ID('tempdb..#temp_attendance') is not null
drop table #temp_attendance
create table #temp_attendance(employee_id int, attend_dt date)
INSERT into #temp_attendance(employee_id, attend_dt)
VALUES
 (1,CONVERT(date,'22-01-01',11))
,(1,CONVERT(date,'22-01-02',11))
,(1,CONVERT(date,'22-01-05',11))
,(2,CONVERT(date,'22-01-01',11))
,(2,CONVERT(date,'22-01-02',11))
,(2,CONVERT(date,'22-01-04',11))
,(2,CONVERT(date,'22-01-05',11))
,(2,CONVERT(date,'22-01-06',11))
,(3,CONVERT(date,'22-01-02',11))
,(3,CONVERT(date,'22-01-04',11))


select * from  #temp_attendance
select * from #temp_employee
--Write a sql query to find longest streak for each employee, want the employee name?

 select * from  #temp_attendance
select * from #temp_employee
 select max(A.DRK)AS LongestStreak,te.name from
 (select *,DENSE_RANK() OVER(Partition by employee_id Order by attend_dt asc)As DRK from #temp_attendance)A
 join #temp_employee te
 on te.employee_id=A.employee_id
 group by te.name

 --========================================================================
 create table #temp(dept_id int, employee_id int, amount float, manager_id int)
INSERT into #temp(dept_id, employee_id, amount, manager_id)
VALUES
(1,1,8000,3)
,(1,2,5000,3)
,(1,3,10000,null)
,(2,4,15000,null)
,(2,5,16000,4)
,(3,6,8000,null)
,(4,7,20000,Null)
,(4,8,19000,7)

select * from #temp
select COUNT(1) As C from  #temp group by dept_id

select *,DENSE_RANK() OVER(order by amount desc)AS DRK from #temp



SELECT *,DENSE_RANK() OVER(Partition by amount Order by Dept_id)As drk FROM #temp

SELECT *,DENSE_RANK() OVER(Partition by dept_id Order by employee_id)As drk FROM #temp


select * from #temp
select * from
(select *,DENSE_RANK() OVER(order by amount desc)as DRK from #temp where manager_id is not null)A
where A.DRK = 1

select * from #temp
select * from #temp t1
join #temp t2 on t1.employee_id=t2.manager_id where t2.amount>t1.amount


select COALESCE(NULL,NULL,'ABDULLAH',NULL)
select COALESCE(NULL,NULL,'ABDULLAH',NULL,'jalal')

select IIF(500>700,'No','Yes')

select IIF(500>700,'Yes','don''t'' know')

select * from #temp

select t1.employee_id,t1.amount from #temp t1 join #temp t2
ON t1.manager_id=t2.employee_id where t1.amount > t2.amount;

if OBJECT_ID('tempdb..#tempMID') is not null
drop table #tempMID
SELECT distinct manager_id,amount into #tempMID from #temp where manager_id is not null
select * from #tempMId

select * from #temp

select distinct t1.employee_id,t1.amount from #temp t1 join #tempMId t2
ON t1.employee_id=t2.manager_id where t1.amount > t2.amount;