use db1;

create table emp(
[name] varchar (100),
[annual_salary] float,


)

insert into emp
values('raju',23000),('rohan',56000),('roy',70000)



select * from emp



create view [Monthly Salary] 
as select name,annual_salary/12 as monthly from emp

select * from [Monthly Salary]





create table customer(

customer_id int,cust_name varchar(100),city varchar(100),grade varchar(100),salesman_id int

)


insert into customer values(1,'ram','newyork',200,1),(2,'shayam','newyork',300,1),(3,'rohan','india',100,3),(4,'rahul','newyork',400,4)


create view [grade] as select * from customer where grade = (select MAX(grade) from customer); 

select * from grade




create Table Employees(emp_id int,emp_name varchar(50),hire_date DATE,dept_id int)



insert into Employees values(1,'roy','2018-01-01',1),(2,'rohan','2018-06-01',2),(3,'raj','2018-02-01',3),(4,'rakesh','2018-05-01',4),(5,'rajesh','2018-03-01',5),(6,'rani','2018-07-01',6)


select * from Employees;



create table Department(dept_id int ,department varchar (30),salary int)

insert into Department values(1,'IT',12500),(2,'Accounts',15500),(3,'marketing',20500),(4,'HR',18500)
select * from Department






 --a

create view [EmpDetails] 
as
select 
emp_id,Employees.dept_id,emp_name,department as  dept_name,salary,DATEDIFF(year,hire_date,GETDATE()) as experience from Employees join
Department on Employees.dept_id=Department.dept_id 


select * from EmpDetails





--b
create view [TopEmp] as
 select top 3
 emp_id,Employees.dept_id,emp_name,department as dept_name,salary,DATEDIFF(YEAR,hire_date,GETDATE()) as experience from Employees join Department on Employees.dept_id=Department.dept_id order by salary desc




 select * from TopEmp


