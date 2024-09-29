

select * from dbo.Sales

-- total sales, avg sales , total quantity, avg quantity, for each distinct product

select 
ProductID,
sum(totalamount) [Sum of Sales],
sum(quantity) [Total Quantity],
avg(totalamount) [Avg Amount],
avg(quantity) [Avg Quantity]
from dbo.Sales
group by
ProductID
having sum(totalamount)<700 and sum(quantity) = 21