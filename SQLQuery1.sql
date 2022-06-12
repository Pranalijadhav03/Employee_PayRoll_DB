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