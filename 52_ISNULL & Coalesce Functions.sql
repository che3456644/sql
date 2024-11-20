

select * from Customers

-- Isnull

select isnull(null,'1 st value null')

select isnull('abx',null)

select isnull(null,null)

select coalesce('A','B','C')

select coalesce(null,'B','C')

select coalesce(null,null,'C')

-- 
select * from Customers

select customerid,email,phonenumber from customers 

select customerid,isnull(email,'Email NA'),isnull(phonenumber,'PH NO NA') from customers

select customerid,coalesce(email,phonenumber,'contact NA')[coalesce function] from customers

select * from customers