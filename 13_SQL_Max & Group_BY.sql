

select * from dbo.Sales

select max(totalamount) [Maximum Amount] from dbo.Sales

select max(SaleDate) [Maximum Sale Date] from dbo.Sales

select max(PaymentMethod) [Maximum PayMethod] from dbo.Sales

-- Maximum quantity sold for each productID

select ProductID,max(Quantity) [maximum quantity] from dbo.Sales
group by ProductID 

-- Maximum total anount for all distinct dates in saledate column

select saledate,max(totalamount) [Maximum Total Amount] from dbo.Sales
group by SaleDate