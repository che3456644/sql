

select * from Customers

select * from Orders

select * from Products

-- 1) Identify pairs of customer who live in the same country
select x.CustomerName,y.CustomerName from Customers x join Customers y on x.Country = y.Country and x.CustomerID <> y.CustomerID and x.CustomerID>y.CustomerID

-- 2) Find the customer who has spent the most on their orders
select customername from 
(select CustomerName,sum(price) [Amount spent],DENSE_RANK()over(order by sum(price) desc) [DR]
from Customers c inner join Orders o on c.CustomerID = o.CustomerID inner join Products p  on o.ProductID = p.ProductID
group by CustomerName) m where DR = 1

-- 3) Find customer who have ordered more than one type of products 
select CustomerName,count(productID) from Customers c join Orders o on c.CustomerID = o.CustomerID
group by CustomerName
having count(productid)>1

-- 4) List all products and their corresponding orders, using a RIGHT JOIN, including products that have never been ordered 
select OrderID,p.ProductID,ProductName from Orders o right join Products p on o.ProductID = p.ProductID

-- 5) Retrive all orders placed by customers from the USA
select OrderID from Customers c inner join Orders o on c.CustomerID = o.CustomerID where country in ('USA')

-- 6) Find the names of customers who have ordered a product priced above $500
select distinct CustomerName from Customers c inner join Orders o on o.CustomerID = c.CustomerID inner join Products p on p.ProductID = o.ProductID
where price > 500

-- 7) Find customers who have ordered the same product more than once
select distinct m.customername from
(select CustomerName,ProductID,count(orderid) [count] from Customers c inner join Orders o on c.CustomerID = o.CustomerID 
group by CustomerName,ProductID
having count(orderid)>1)m
