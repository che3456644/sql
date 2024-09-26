

select * from dbo.Employees

select * into #1 from dbo.Employees

select * from #1

update #1 
set Department = 'Doctor' 
where Department is null

select * from #1

update #1 
set Salary = 70000, HireDate = '2022-11-21'
where EmployeeID = 7 

select * from #1 where EmployeeID = 7

select * into #2 from dbo.Employees

select * from #2

update #2
set Department = 'IT'