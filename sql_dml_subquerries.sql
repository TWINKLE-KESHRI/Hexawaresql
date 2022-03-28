-- DML queries file
use practicedml;
-- 1
create table my_employee1(
id int(4),
first_name varchar(25),
last_name varchar(25),
userid varchar(8),
salary double(9,2)
);
-- 1
desc my_employee1;
-- 2
insert into my_employee1 values (1,'Ralph','Patel','rpatel',895);
delete from my_employee1;
-- 3
insert into my_employee1(id, last_name, first_name, userid, salary) values (2,'Dancs','Betty','bdancs',860);
-- 4
select * from my_employee1;
-- 5

-- 6 changing second becouse third is not given
alter table my_employee1 add  primary key(id);
update my_employee1 set last_name = 'drecler' where id = 2; 
-- 7
select * from my_employee1;
update my_employee1 set salary = 1000 where salary < 900 ;
-- 8
delete from my_employee1 where first_name = 'betty';
-- 9
delete from my_employee1;

-- subquery file
show databases;
use practice1and2;
show tables;
select * from emp;
-- 1
select employee, hire_date from emp where deptno in (select deptno from emp where employee = 'smith') and employee!= 'smith';
-- 2
select emp, employee from emp where sal > (select avg(sal) from emp) order by sal;
-- 3
select emp, employee from emp where deptno in (select deptno from emp where employee like '%u%');
-- 4
select employee, sal from emp where mgr in (select emp from emp where employee ='blake');
-- 5
select deptno, employee, job_title from emp where deptno in(select deptno from emp where job_title = 'salesman');
-- 6
select emp, employee, sal from emp where deptno in (select deptno from emp where employee like '%a%') and sal > (select avg(sal) from emp);