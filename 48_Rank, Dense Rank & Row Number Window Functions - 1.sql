
select * from Students

-- Row number -> In case of a tie row numbers are assigned randomly
select *, ROW_NUMBER() over(order by marks desc) as [Row Number]
from Students

-- Rank -> if there's a tie next rank/ranks will be skipped
select *,rank()over(order by marks desc) as [Rank Function]
from Students

-- Dense_Rank -> if there's a tie ranks will notbe skipped
select *, DENSE_RANK() over(order by marks desc) [Dense Rank]
from Students

------------------------------------------------------------------------------

-- Row number -> In case of a tie row numbers are assigned randomly
select *, ROW_NUMBER() over(order by marks asc) as [Row Number]
from Students

-- Rank -> if there's a tie next rank/ranks will be skipped
select *,rank()over(order by marks asc) as [Rank Function]
from Students

-- Dense_Rank -> if there's a tie ranks will notbe skipped
select *, DENSE_RANK() over(order by marks asc) [Dense Rank]
from Students