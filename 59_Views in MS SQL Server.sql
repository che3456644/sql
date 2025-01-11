

select * from Employees

select * into emp_bkp from Employees

select * from emp_bkp


----- a view is a virtual table, it is a stored sql query 
----- it helps in reducing the complexity of the code 
----- it helps in implementing security 

create view View_1 as (
select * from emp_bkp
)

select * from View_1

create view View_2 as (
select EmployeeID,FirstName,LastName,DepartmentID,HireDate from emp_bkp
)

select * from View_2

