

--- Order of Execution 

select * from EmployeeSalaries

--- Correct Query
select distinct top 1 Department,avg(salary) [Avg Salary] from EmployeeSalaries
where Salary > 50000
group by Department
having avg(salary)>55000
order by Department 


--- From & Joins
--- Where
--- Group BY
--- Having
--- Select
--- Distinct
--- Order By
--- Top

--- Incorrect Query
select distinct top 1 Department,avg(salary) [Avg Salary] from EmployeeSalaries
where Salary > 50000
group by Department
having [AVG Salary] > 50000
order by Department 