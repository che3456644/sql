use constraints

--- Unique Constraint
--- It ensures that a column consists of unique values

--- Case 1: when the table already exists

alter table test_unique 
add unique (lastname)


--- Case 2 : we need to create the table 

create table test_unique (
SID int unique,
age tinyint not null,
firstname varchar(256) not null unique,
lastname varchar(256)  
)

select * from test_unique

insert into test_unique values (1,21,'chetan','bhagat')

insert into test_unique values (1,21,'mahendra','dhoni') ---Cannot insert duplicate key in object. The duplicate key value is (1).

insert into test_unique values (null,35,'Virat','Kohli')

insert into test_unique values (null,38,'Shikar','Dhawan') ---Cannot insert duplicate key in object. The duplicate key value is Null.

insert into test_unique values (3,21,'vipin','bhagat')

truncate table test_unique 