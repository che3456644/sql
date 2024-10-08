

--- copying data from existing table to the new table

--- case1 : the new table simply doesn't exist
--- case2 : the new table structure/new table exists


--- Case 1:
select * from dbo.Sales

-- all columns were copied from existing table 
-- this statement will result in the creation of new_table_1 which will be having structure & records both same as that of dbo.sales table
-- same as that of dbo

select * into New_Table_1 from dbo.Sales

---------------------------------- certain columns to be copied ------------------------------------

drop table New_Table_1

select productid,quantity into new_table_1 from dbo.sales

select * from new_table_1

--- Case 2 : New table structure/table already exist

select top 0 * into new_table_2 from dbo.Sales

select * from new_table_2

insert into new_table_2 select * from dbo.Sales

--- copying cetain columns

select * into new_table_3 from dbo.Sales where 1=0

select * from new_table_3

insert into new_table_3 (ProductID,SaleDate) select productid, saledate from dbo.Sales

