

select * from append1

select * from append2

select c1,c2,c3 from append1
union all
select c1,c2,c3 from append2

select c1,c2,c3 from append1 -- c1 is int, c2 is nvchar, c3 is int
union 
select c1,c2,c3 from append2

-- numbers of columns present in the select list have to be same 
-- data types of the columns have to be same
-- order in which columns are written has to be the same

-- Aliase names which are specified in 1st select statement will be assigned to the columns

select c1 [Column1] ,c2 [Column2],c3 [Column3] from append1
union 
select c1 [Col1] ,c2 [Col2],c3 [Col3] from append2
