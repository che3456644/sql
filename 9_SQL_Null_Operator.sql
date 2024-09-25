

select * from dbo.Employees

insert into dbo.Employees
values (9,'Tushar','','Marketing',59000,'2018-10-25')

insert into dbo.Employees
values (10,'Rishikesh','Ugemuge','0',60000,'2022-11-26')

select * from dbo.Employees where Department = null

select * from dbo.Employees where Department is null

select * from dbo.Employees where Department is not null