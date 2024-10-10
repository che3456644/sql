

--- Check Constraint 
--- It checks for certain conditions that can be applied on the columns of a table, if this condition is not fullfilled , we will not be able to insert the records into the table

--- Case 1 : Table doesn't exist
create table test_check (
EID int,
firstname varchar(256),
age tinyint check(age>=10)
)

select * from test_check

insert into test_check values (1,'Chetan',21)

insert into test_check values (2,'Virat',9)

update test_check set EID = 11 where EID = 1

--- Case 2 : Table exists
alter table test_check
add check (eid>5)

insert into test_check values (3,'Himanshu',21)

insert into test_check values (21,'Himanshu',21)

