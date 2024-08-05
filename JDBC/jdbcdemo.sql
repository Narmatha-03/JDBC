create database jdbcdemo;
use jdbcdemo;
create table employee(empid int PRIMARY KEY, ename varchar(30), salary int);
insert into employee values(101, "Narmatha" , 100000), (102, "Rudra" , 70000), (103, "Nivethitha" , 80000), (104, "Arjun" , 100000), (105, "MadhuMitha" , 100000), (106, "PreethiShree" , 90000), (107, "Ezhil" , 100000);
delimiter $$
create procedure GetEmp()
begin
select * from employee;
end$$
delimiter ;
delimiter $$
create procedure GetEmpId(In id int)
begin
select * from employee where empid=id;
end$$
delimiter ;
delimiter $$
create procedure GetNameById(In id int, Out empname varchar(40))
begin
select ename from employee where empid=id into empname;
end$$
delimiter ;