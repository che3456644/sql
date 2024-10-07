

select * from Products

-- we need to group the data based on columns category and price into different categories i.e affordable and premium 

select 
*,
case 
	when category = 'electronics' then
	case
		when price >=100 then 'Premium electronics'
		else 'Affordable electronics'
		end
	when Category = 'furniture' then 
	case
		when price >=200 then 'Premium furniture'
		else 'Affordable furniture'
		end
	when Category = 'accessories' then 
	case
		when price >= 30 then 'Premium accessories'
		else 'Affordable accessories'
		end
end as [Affordable & Premium]
from Products

--------------------------------------TEST--------------------------------------------

select 
*,
case 
	when category = 'electronics' then
	case when price >=100 then 'Premium electronics'
		 else 'Affordable electronics'
		 end
	when Category = 'furniture' then 
	case when price >=200 then 'Premium furniture'
		 else 'Affordable furniture'
		 end
else
	case when price >= 30 then 'Premium accessories'
		 else 'Affordable accessories'
		 end
end as [Affordable & Premium]
from Products