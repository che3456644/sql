
select * from Students

select *, ROW_NUMBER() over(partition by subject order by marks desc) [Row Number Desc]
from  Students

select *, ROW_NUMBER() over(partition by subject order by marks) [Row Number Asc]
from Students

select *, ROW_NUMBER() over(partition by student_name order by marks desc) [Rank Desc]
from Students

select *, RANK() over(partition by student_name order by marks desc) [Rank Desc]
from Students

select *, RANK() over(partition by subject order by marks desc) [Rank Desc]
from Students

select *, DENSE_RANK() over(partition by subject order by marks desc) [Dense Rank Desc]
from Students

select *, DENSE_RANK() over(partition by student_name order by marks desc) [Dense Rank Desc]
from Students

select *, DENSE_RANK() over(partition by student_name order by marks) [Dense Rank Asc]
from Students

