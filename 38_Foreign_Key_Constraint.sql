

-- Foreign Key Constraint

-- Case : 1 When the new table has to be created 

create table test_Primary_key(
ID int primary key,
name varchar(256)
)

insert into test_Primary_key values (1,'Chetan'),(2,'Gaurav'),(3,'Ravan')

select * from test_Primary_key

create table test_foreign_key(
ID int foreign key references test_primary_key(id),
course varchar(256)
)

insert into test_foreign_key values (1,'A')

select * from test_foreign_key

insert into test_foreign_key values (null,'B')

insert into test_foreign_key values (6,'C')  -- You cannot insert a those values in the foreign key column in a table which are not contain the primary key column 

-- Case 2 : Table already exists

create table test_foreign_key_2 (ID int, course varchar(256))

alter table test_foreign_key_2
add foreign key (id) references test_primary_key(id)