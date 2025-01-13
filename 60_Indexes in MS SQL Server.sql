

---- Indexes

/*In SQL, indexes are database objects used to improve the speed of data retrieval 
operations on a table. They work like an index in a book, helping the database engine 
locate data quickly without having to scan every row in the table. */

select * from dbo.Employees

create index IC_1 on dbo.employees(salary desc)

create index IC_2 on dbo.employees(firstname,lastname)

drop index dbo.employees.IC_1