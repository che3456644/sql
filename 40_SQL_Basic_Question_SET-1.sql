

--1) how do you select all columns form the employees table ?

select * from Employees

--2) how do you select only the firstname and lastname columns from the employees table ?

select FirstName,LastName from Employees

--3) how do you find all emplyees who work in the 'IT' department ?

select * from Employees where Department = 'IT'

--4) how do you select Employees with a salary greater than 70,000?

select * from Employees where Salary >70000

--5) how do you sort the result by lastname in ascending order?

select * from Employees order by LastName asc

--6) how do you select distinct departments from the employees table ?

select distinct department from employees

--7) how do you count the number of employees in each department?

select department,count(*) [no.of employees] from employees group by department

select department,count(employeeid) [no.of employees] from employees group by department


--8) how do you find the maximum salary in the employees table?

select max(salary) [maximum salary] from employees

--9) how do you find average salary of employees in the 'finance' department?

select avg(salary) [avg salary finance] from employees where department like 'finance'

--10) how do you select employees whose last name starts with 'M'?

select * from employees where lastname like 'M%'
