

select * from Employees

create procedure ivf_test
as 
begin 
	select * from Employees
end

ivf_test

execute ivf_test

----- Example 

create procedure IVF_test1
as
begin 
	select FirstName,LastName,Salary from Employees
end

execute IVF_test1 

------------

alter procedure IVF_test1
as 
begin
	select FirstName,LastName,Salary,Email from Employees
end

execute IVF_test1