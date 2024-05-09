insert into dept
values(10, 'test', 'seoul')
/
insert into dept
values(10, 'test', 'seoul')
/
select constraint_name, constraint_type, table_name
from user_constraints
/
select *
from user_cons_columns
/
create table emp01(
empno number(4),
ename varchar2(10),
job varchar2(9),
deptno number(2)
)
/
insert into emp01
values(null, null, 'salesman', 30)
/
select * from emp01
/
select * from emp01
/
drop table emp02
/
create table emp02(

/
create table emp03(
empno number(4) unique,
ename varchar2(10) not null,
job varchar2(9),
deptno number(2)
)
/
insert into emp03
values(7499, 'allen','salesman',30)
/
insert into emp03
values(null, 'jones', 'manager',20)
/
insert into emp03
values(null, 'jones', 'salesman',10)
/
create table emp04(
empno number(4) constraint emp04_empno_uk unique,
ename varchar2(10) constraint emp04_ename_nn not null,
job varchar2(9),
deptno number(2)
)
/
create table emp05(
empno number(4) constraint emp05_empno_pk primary key,
ename varchar2(10) constraint emp05_ename_nn not null,
job varchar2(9),
deptno number(2)
)
/
create table emp06(
empno number(4)
constraint emp06_empno_pk primary key,
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
create table dept01(
deptno number(2) primary key,
dname varchar2(14),
loc varchar2(13) default 'seoul'
)
/
create table emp01(
empno number(4) primary key,
ename varchar2(10) not null,
job varchar2(9) unique,
deptno number(4) references dept(deptno)
)
/
create table emp02(
empno number(4),
ename varchar2(10) not null,
job varchar2(9),
deptno number(4),
primary key(empno),
unique(job),
foreign key(deptno) references dept(deptno)
)
/
create table emp03(
empno number(4),
ename varchar2(10) constraint emp03_ename_nn not null,
job varchar2(9),
deptno number(4),
constraint emp03_empno_pk primary key(empno),
constraint emp03_job_uk unique(job),
constraint emp03_deptno_fk foreign key(deptno)
references dept(deptno)
)
/
create table member01(
name varchar2(10),
address varchar2(30),
hphone varchar2(16),
constraint member01_combo_pk primary key(name, hphone)
)
/
create table emp01(
empno number(4),
ename varchar2(10),
job varchar2(9),
deptno number(4)
)
/
alter table emp01
add constraint emp01_empno_pk primary key(empno)
/
alter table emp01
add constraint emp01_deptno_fk
foreign key(deptno) references dept(deptno)
/
alter table emp01
modify ename constraint emp01_ename_nn not null
/
alter table emp05
drop constraint emp05_ename_nn
/
create table dept01(
deptno number(2) constraint dept01_deptno_pk primary key,
dname varchar2(14),
loc varchar2(13)
)
/
insert into dept01
values(10, 'accounting', 'new york')
/
insert into dept01
values(20, 'research', 'dallas')
/
create table emp01(
empno number(4)
constraint emp01_empno_pk primary key,
ename varchar2(10)
constraint emp01_ename_nn not null,
job varchar2(9),
deptno number(4)
constraint emp01_deptno_fk references dept01(deptno)
)
/
