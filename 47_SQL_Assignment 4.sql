select * from Employees

select * from Departments

-- 1) Write a SQL query to list the names of employees along with the names of the departments they work in.
select E.FirstName,E.LastName,D.DepartmentName from Employees E
join Departments D
on E.DepartmentID=D.DepartmentID

-- 2) Write a SQL query to list all the departments and the employees working in them, including departments with no employees.
select D.departmentName,E.firstname,E.lastname from Departments D
left join Employees E
on D.DepartmentID=E.DepartmentID

-- 3) Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching department ID).
select E.firstname,E.lastname from Employees E
left join Departments D
on E.departmentID=D.DepartmentID
where D.departmentID is null

-- 4) Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.
select E2.firstname,E2.lastname from Employees E1
join Employees E2
on E1.DepartmentID=E2.DepartmentID
where E1.FirstName='jane' and E1.LastName='Doe'
and E2.EmployeeID<>E1.EmployeeID

--5) Write a SQL query to find the department with the highest total salary paid to its employees.
select top 1 D.DepartmentName
from Departments D
join Employees E
on D.DepartmentID = E.DepartmentID
group by D.DepartmentName
order by sum(E.Salary) desc

