------------UC1----------------
create database payroll_server2
use payroll_server2


------------UC2----------------
create table employee_payroll
(
id int identity,
name varchar(35),
salary money,
start_date date
)


-------------UC3---------------
insert into employee_payroll values
('Pranali',12000.0,'2018-06-09'),
('Dipti',30000.0,'2022-01-07'),
('Nutan',33300.0,'2020-09-09'),
('Rachit',45000.0,'2022-08-07'),
('Jyoti',39000.0,'2021-09-01')

-------------UC4---------------
select * from employee_payroll


-------------UC5---------------
select * from employee_payroll where name='Pranali';
select * from employee_payroll where start_date between '2020-01-1'and getdate();


----------UC6----------------
alter table employee_payroll add gender varchar(1)

update employee_payroll set gender='M' where name in('Rachit')

update employee_payroll set gender='F' where name in ('Pranali','Dipti','Nutan','Jyoti');

select * from employee_payroll


-----------UC7------------------
select SUM(salary) from employee_payroll

select MAX(salary) from employee_payroll

select MIN(salary) from employee_payroll

select AVG(salary) from employee_payroll

select gender from employee_payroll group by gender

select SUM(salary) from employee_payroll group by gender