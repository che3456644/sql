

select * from EmployeeSalaries

-- Incorrect Query
select *
,LAST_VALUE(EmployeeName) over(order by salary desc) [EMP with lowest salary]
from EmployeeSalaries

-- Correct Query
select *
,LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) [EMP with lowest salary]
from EmployeeSalaries

select *
,LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) [EMP with lowest salary]
,LAST_VALUE(Salary) over(order by salary desc rows between unbounded preceding and unbounded following) [lowest salary]
from EmployeeSalaries

select *
,LAST_VALUE(EmployeeName) over(partition by department order by salary desc rows between unbounded preceding and unbounded following) [EMP with lowest salary]
,LAST_VALUE(Salary) over(partition by department order by salary desc rows between unbounded preceding and unbounded following) [lowest salary]
from EmployeeSalaries

-- LAST VALUE WINDOW FUNCTION
select *
,LAST_VALUE(EmployeeName) over(partition by department order by salary rows between unbounded preceding and unbounded following) [EMP with highest salary]
,LAST_VALUE(Salary) over(partition by department order by salary rows between unbounded preceding and unbounded following) [highest salary]
from EmployeeSalaries

-- FIRST VALUE WINDOW FUNCTION
select *
,FIRST_VALUE(EmployeeName) over(partition by department order by salary desc) [EMP with HIGHEST salary]
,FIRST_VALUE(Salary) over(partition by department order by salary desc) [HIGHEST salary]
from EmployeeSalaries

