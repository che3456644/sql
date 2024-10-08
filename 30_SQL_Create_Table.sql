
create database Student

create table student_details (
Student_Name nvarchar(256),
Gender char(1),
Age tinyint,
Event_Date date,
Distance decimal(5,2))

select * from student_details

insert into student_details(Student_Name,Gender,Age,Event_Date,Distance)
values('Chetan Bhagat','M',21,'2024-10-08',125.22)

insert into student_details 
values('Gaurav Rajgadkar','M',21,'2024-10-08',126.25)

insert into student_details
values ('Ghanshyam Kharkar','M',22,'2024-10-08',135.07),
('Chirag Bhagat','M',23,'2024-10-08',110.18)

insert into student_details(Student_Name,Age)
values('Dhananjay Pidurkar',21)

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'