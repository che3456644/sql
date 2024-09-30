

select * from dbo.Sales
where TotalAmount>=161

select productid,sum(totalamount) [Sum of Sales] from dbo.Sales
group by ProductID
having sum(totalamount)<700

select * from dbo.Sales

select productid,sum(totalamount) [sum of sales] from dbo.Sales
where TotalAmount>=161
group by ProductID
having sum(totalamount)>=250
order by ProductID desc

select productid,sum(totalamount) [sum of sales] from dbo.Sales
where TotalAmount>=161
group by ProductID
having sum(totalamount)>=250
order by sum(totalamount) asc