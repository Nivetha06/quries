create database mydata;
show databases;
use mydata;
create table students(myname varchar(20),dept varchar(12));
insert into students values('nivi','ece');
insert into students values('abi','csc');
insert into students values('varsh','it');
insert into students values('gayu','ece');
alter table students add(phone int(10));
insert into students (phone) values(94436940);
insert into students (phone) values(88983739);
select *from students;
use mydata;
drop table students;
create database university;
use university;
create table employee(id int,n_name varchar(20),mail varchar(30),phonenumber int,role varchar(20),department varchar(30),salary int(20));
select *from employee;
insert into employee values(1,'nivi','a@gmail.com',986678908,'professor',1,20000);
insert into employee values(2,'abi','b@gmail.com',883567896,'sysadmin',2,12000);
insert into employee values(3,'varsh','c@gmail.com',667899888,'clerk',1,10000);
insert into employee values(4,'gayu','gayu@gmail.com',89908908,'professor',5,18600);
insert into employee values(5,'manish','manish@gmail.com',893478908,'professor',3,15300);
insert into employee values(6,'baks','baks@gmail.com',98669935,'clerk',3,11000);
insert into employee values(7,'deepi','deep@gmail.com',678078908,'sysadmin',4,10000);
insert into employee values(8,'pooja','pooja@gmail.com',786678708,'sysadmin',4,12200);
insert into employee values(9,'moni','moni@gmail.com',86678908,'professor',1,18300);
insert into employee values(10,'bini','bini@gmail.com',98559788,'clerk',3,9000);
insert into employee values(11,'vaish','vaish@gmail.com',945678908,'sysadmin',3,14500);
insert into employee values(12,'dharu','dharu@gmail.com',969578908,'clerk',4,22000);
insert into employee values(13,'robert','mariya@gmail.com',786678908,'professor',2,15000);
insert into employee values(14,'krish','nv@gmail.com',95789966,'professor',2,17000);
insert into employee values(15,'rosy','rosy@gmail.com',876897898,'sysadmin',1,11000);
drop table employee;
create table students(id int auto_increment,n_name varchar(20),mail varchar(20),phonenumber int,s_year int,department varchar(10),cgpa int,primary key(id));
select *from students;
insert into students (n_name,mail,phonenumber,s_year,department,cgpa) values('rosy','ro@gmail.com',8373688,3,2,8);
insert into students (n_name,mail,phonenumber,s_year,department,cgpa) values('nive','nive@gmail.com',56793688,4,4,9);
insert into students (n_name,mail,phonenumber,s_year,department,cgpa) values('pooj','po@gmail.com',9975447,1,5,7);
insert into students (n_name,mail,phonenumber,s_year,department,cgpa) values('manisha','m@gmail.com',8468688,3,2,7);
insert into students (n_name,mail,phonenumber,s_year,department,cgpa) values('bagu','b@gmail.com',9637888,4,1,5);
insert into students (n_name,mail,phonenumber,s_year,department,cgpa) values('dp','dp@gmail.com',83731232,2,2,9);
insert into students (n_name,mail,phonenumber,s_year,department,cgpa) values('monica','mo@gmail.com',95766333,4,2,7);
insert into students (n_name,mail,phonenumber,s_year,department,cgpa) values('gayuu','ga@gmail.com',7843688,1,5,8);
insert into students (n_name,mail,phonenumber,s_year,department,cgpa) values('ram','ram@gmail.com',84201688,1,1,6);
insert into students (n_name,mail,phonenumber,s_year,department,cgpa) values('krishna','kr@gmail.com',8223688,3,1,9);
insert into students (n_name,mail,phonenumber,s_year,department,cgpa) values('vijay','vijay@gmail.com',8373600,2,2,5);
insert into students (n_name,mail,phonenumber,s_year,department,cgpa) values('vinish','vini@gmail.com',8373778,4,3,7);
insert into students (n_name,mail,phonenumber,s_year,department,cgpa) values('paramu','paramu@gmail.com',8344688,2,4,6);
insert into students (n_name,mail,phonenumber,s_year,department,cgpa) values('priya','priya@gmail.com',83736968,3,5,8);
insert into students (n_name,mail,phonenumber,s_year,department,cgpa) values('mythu','mythu@gmail.com',66373688,4,4,9);

create table department(department_id int auto_increment,department_name varchar(20),primary key(department_id));
select *from department;
insert into department(department_name) values('ece');
insert into department(department_name) values('eee');
insert into department(department_name) values('mech');
insert into department(department_name) values('cse');
insert into department(department_name) values('it');
drop table department;
select *from department;


select n_name from employee where role='professor';

select *from students where cgpa>7.5;

select *from students where s_year=1;

select * from employee where role='clerk' and department=4;

select *from students where n_name like'r%';

select *from employee where role='professor' and n_name like'r%q';

select *from employee where role='professor' and salary between 10000 and 30000;

select *from students where cgpa>8;

select avg(salary),role from employee group by role;

select count(*),role from employee group by role;

select count(*),department.department_name from students join department on students.department=department.department_id group by department;



select  department_name, avg(cgpa) as avg_cgpa from students 
				inner join department
                on students.department = department.department_id
                group by department.department_name order by avg_cgpa desc limit 1;
select department.department_name,students.department from 
department inner join students on department.department_id=students.department
where (select max(cgpa)from students where cgpa in((select avg(cgpa) from students group by department)));


select * from employee where salary=(select max(salary) from employee where role='professor');
select max(salary) from employee where role='professor';

select * from employee where salary=(select min(salary) from employee where role='clerk');
select min(salary) from employee where role='clerk';

select mail,phonenumber from students where cgpa<5;

select mail from students where mail like '%gmail%';

select department_name,avg(cgpa) as avg_cgpa from department inner join students on department.department_id=students.department group by department_name order by avg_cgpa desc limit 1;








