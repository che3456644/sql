

select * from Products

-- Example 1 : Add a column to categorize each product into categories high, medium & low

select 
*,
case 
	when price > 500 then 'High'
	when price <=500 and price > 200 then 'Mdium'
	else 'Low' --- if else is not assigned then it will consider as NULL
end as [High/Medium/Low]

from Products

-- Example 2 : provide priority toeach category and sort the data according to that priority

select * from Products
order by 
case
	when Category in ('Electronics') then 1
	when Category in ('Furniture') then 2
	when Category = 'Accessories' then 3
end
