
/*
A Common Table Expression (CTE) in SQL is a temporary result set that you can reference within a 
SELECT, INSERT, UPDATE, or DELETE statement. CTEs are defined using the WITH keyword, 
and they can make complex queries easier to write, understand, and maintain by breaking them into simpler parts.
*/

select * from Employees

select * into #temp1 from Employees

select * from #temp1

--- Example 1 : CTE

with CTE as (
select * from #temp1
)

select * from cte

--- Example 2

with test_cte as (
select EmployeeID,FirstName from #temp1 where EmployeeID in (2,4)
)

select * from test_cte

--- Example 3

with [common table expression] as (
select * from #temp1 where EmployeeID in (2,3,4,5)
)

select * into #temp2 from [common table expression]

select * from #temp2

--- Example 4

with cte_1 as (
select * from #temp1 where EmployeeID in (6,7,8)
)

update #temp1 set EmployeeID = 69 where EmployeeID in (select distinct EmployeeID from cte_1)

select * from #temp1

--- Example 5

with cte_2 as (
select * from #temp1 where EmployeeID = 10
)

delete from #temp1 where EmployeeID in (select distinct EmployeeID from cte_2)

select * from #temp1

--- Example 6

with cte_3 as (
select * from #temp1 where EmployeeID in (69)
)

insert into #temp1 select * from cte_3

select * from #temp1