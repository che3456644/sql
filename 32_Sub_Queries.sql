

select * from Customers

select * from Orders

select * from Customers 
where customer_id in (
select distinct customer_id from Orders where order_date between '2024-08-01' and '2024-08-31'
)

select * from Customers
where customer_id in (
select distinct customer_id from Orders where order_date not between '2024-08-01' and '2024-08-31'
)
select * from Employees

--- fetch the data form employee table where salary > average salary 

select * from Employees where Salary > (
select avg(Salary) from Employees
)

select avg(salary) [Avg Salary] from Employees
