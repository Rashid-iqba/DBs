DURATION: 40 mins

-- Q1) Find the id of employees who doesn't have any manager?
-- Q2) Find the highest salary/amount among employees having no manager?
-- Q3) Find the second highest salary/amount among employees having no manager?
-- Q4) Find id of employees who earn highest in each department?
-- Q5) Find the employees who earn more than their manager without using windows function?
-- Q6) Find the employees who earn more than their manager using windows function?






-- --Find the id of employees who doesn't have any manager?
-- select [employee_id] from [#temp] where [manager_id] is null

-- --Find the highest salary/amount among employees having no manager?
-- select * from #temp where amount=(select max([amount])as "Highest amount" from [#temp] where [manager_id] is null)

-- --Find the second highest salary/amount among employees having no manager?
-- select * from #temp where amount=(SELECT MAX(amount) FROM #temp WHERE amount < (SELECT MAX(amount) FROM #temp where [manager_id] is null))





create table #temp(dept_id int, employee_id int, amount float, manager_id int)
INSERT into #temp(dept_id, employee_id, amount, manager_id)
VALUES
(1,1,8000,3)
,(1,2,5000,3)
,(1,3,10000,null)
,(2,4,15000,null)
,(2,5,16000,4)
,(3,6,8000,null)

SELECT * from #temp;






