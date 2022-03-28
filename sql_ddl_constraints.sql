create database practice;
use practice ;
-- 1 
create table TRG_DEPT(
ID int(7),
NAME varchar(25)
);
-- 3
create table TRG_EMP(
ID int(7),
LAST_NAME varchar(25),
FIRST_NAME varchar(25),
DEPT_ID int(7)
);
-- 4
alter table TRG_EMP modify LAST_NAME varchar(50);
-- 5 salay not included
create table employee
select ID as ID, FIRST_NAME as FIRST_NAME, LAST_NAME as LAST_NAME, DEPT_ID as DEPT_ID
from TRG_EMP;
-- 6
drop table TRG_EMP;
-- 7 not working rename employee to emp !
alter table EMPLOYEE Rename to EMP;
-- 8 
alter table emp drop column FIRST_NAME;
desc emp;
-- Constraints assignment 
-- 1
alter table TRG_EMP add constraint my_emp_id_pk primary key(ID);
-- 2
alter table TRG_DEPT add constraint my_dept_id_pk primary key(ID);
-- 3
alter table TRG_EMP add(DEPT_ID int(7));
alter table TRG_EMP drop primary key;
alter table TRG_dept add primary key(ID);
alter table TRG_EMP add constraint my_emp_dept_id_fk foreign key(DEPT_ID) references TRG_DEPT(ID); 
-- 4
desc trg_dept;
desc trg_emp;
select constraint_name, constraint_type from information_schema.table_constraints where table_name in ('trg_dept', 'trg_emp');
-- 5
select object_name, object_type from user_objects where (object_name like '%trg_emp%') OR (object_name like '%DEPARTMENT%');
-- 6
alter table trg_emp add commission decimal(2,2);
alter table trg_emp add constraint commission_check check (commission >=0); 
desc trg_emp;