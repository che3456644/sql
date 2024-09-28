

select * from dbo.Sales

select sum(quantity) [TotalQaunatity] from dbo.Sales

select sum(TotalAmount) [TotalAmount] from dbo.Sales

select sum(quantity) [Total Quantity], sum (totalamount) [Sum Of Total Amount] from dbo.Sales

select avg(quantity) [Average quantity] from dbo.Sales

select avg(quantity) [Avg Quantity], avg(totalamount) [Avg amount] from dbo.Sales

-- Sum of quantity , sum of total amount , avg of quantity, avg of total amount for each distinct product

select ProductID ,
sum(Quantity) as [Total Quantity] , 
sum(totalamount) as [sum of amount] , 
avg(quantity) as [average quantity sold], 
avg(Totalamount) as [average amount] ,
min(Quantity) as [Minimum quantity],
min (totalamount) as [Minimum total amount],
max(Quantity) as [Max quantity],
max(totalamount) as [Max total amount] from dbo.Sales
group by ProductID

select * from dbo.Sales

-- sum of quantity, sum of amount, avg of quantity & avg of amount for distinct combinations of productID & storeid

select
productid,
storeid,
sum(quantity) [Total Quantity],
sum(totalamount)[sum of amount],
avg(quantity) [Avg quantity],
avg(totalamount) [Avg amount]
from dbo.Sales
group by ProductID,StoreID

select count(*) [Number of Rows] from dbo.Sales

select count(paymentmethod) [No of Records]  from dbo.Sales

select count(distinct productid) [Distinct Products] from dbo.Sales

select paymentMethod, count(distinct paymentmethod) [Distinct pay mode] from dbo.Sales
group by PaymentMethod

select paymentMethod, count(*)[pay mode] from dbo.Sales
group by PaymentMethod
