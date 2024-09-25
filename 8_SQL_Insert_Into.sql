

select * from dbo.Employees

insert into dbo.Employees (EmployeeID,FirstName,LastName,Department,Salary,HireDate)
values (6,'Dhananjay','Pidurkar','IT',60000,'2023-04-20')

insert into dbo.Employees (EmployeeID,FirstName,LastName)
values (7,'Chirag','Bhagat')

insert into dbo.Employees
values (8,'Faiyan','Khan','HR',69000,'2022-05-15')

select * from dbo.Employees

select * from INFORMATION_SCHEMA.COLUMNS
where table_name = 'Employees' 