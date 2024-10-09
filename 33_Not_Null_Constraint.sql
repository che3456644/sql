

create database constraints

use constraints

--- Constraints
--- Conditions that can be applied on columns of a table and these condtions are to be followed while inserting records into the table 

--- Not Null Constriant

--- Case 1 : We will have to create a new table 
create table test_not_null(
EID int not null,
age tinyint,
FirstName varchar(256)
)

select * from test_not_null

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME like 'test_not_null'

insert into test_not_null values(1,21,'Chetan')

insert into test_not_null values(null,21,'Chetan')

insert into test_not_null values(1,null,'Tufan')

--- Case 2 : The table is already exists
--- We want to make firstname column nullable

alter table test_not_null
alter column firstname varchar(256) not null

insert into test_not_null values(3,25,null)

alter table test_not_null 
alter column age tinyint not null ---------Cannot insert the value NULL into column 'age' because we already have insert null value in age column  


