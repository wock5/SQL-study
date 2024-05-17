create table emp06(
empno number(4)
constraint emp06_empno_pk primary key ,
ename varchar2(10)
constraint emp06_ename_nn not null,
job varchar2(9),
deptno number(2)
constraint emp06_deptno_fk references dept(deptno)
)
/
create table emp07(
empno number(4)
constraint emp07_empno_pk primary key ,
ename varchar2(10)
constraint emp07_ename_nn not null,
sal number(7,2)
constraint emp07_sal_ck check(sal between 500 and 5000),
gender varchar2(1)
constraint emp07_gender_ck check (gender in('m','f'))
)
/
create table emp01(
empno number(4)
constraint emp01_empno_pk primary key ,
ename varchar2(10)
constraint emp01_ename_nn not null,
job varchar2(9),
deptno number(4)
constraint emp01_deptno_fk references dept01(deptno)
)
/
alter table emp01
disable constraint emp01_deptno_fk
/
select constraint_name, constraint_type,
table_name, r_constraint_name, status
from user_constraints
where table_name='emp01'
/
delete from dept01
where deptno=10
/
alter table emp01
enable constraint emp01_deptno_fk
/
alter table dept01
disable primary key
/
create table dept_copy
as
select * from dept
/
create table emp_copy
as
select * from emp
/
