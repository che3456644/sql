select * from EmployeeSales

-- 1) Write a query to calculate the total sales amount for each department in the EmployeeSales table.
select Department,sum(saleamount) [Total sale amount] from EmployeeSales
group by Department

-- 2) Write a query to count the number of sales made by each employee.
select EmployeeID,count(SaleID) [Sales count] from EmployeeSales
group by EmployeeID

-- 3) Write a query to calculate the average sale amount for each department.
select Department,avg(SaleAmount) [AVG.sale amount] from EmployeeSales
group by Department

-- 4) Write a query to find the total sales amount for each employee, but only include employees who have made more than one sale.
select EmployeeID,sum(SaleAmount)[Total sales] from EmployeeSales
group by EmployeeID 
having count(SaleID) > 1

-- 5) Write a query to find the total sales for each month in 2023.
select month(SaleDate) as month, sum(SaleAmount) as TotalSales from EmployeeSales
where year(SaleDate) = 2023
group by month(SaleDate);
