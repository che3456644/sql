

select * from dbo.Sales

select min(quantity) [Minimum Quantity] from dbo.Sales

select min(saledate) [Minimum  saledate] from dbo.Sales

select min(PaymentMethod) [Minimum pay method] from dbo.Sales

-- show minimum tota amount for each storeid

select storeid, min(totalamount) [Minimum Total Amount] from dbo.Sales
group by storeid

