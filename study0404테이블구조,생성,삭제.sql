create table emp01(
empno number(4),
ename varchar2(20),
sal number(7,2))
/
create table emp02
as
select * from emp
/
create table emp03
as
select empno, ename from emp
/
select * from emp03
/
create table emp04
as
select * from emp
where deptno=10

/
select * from emp04
/
alter table emp01
add(job varchar2(9))
/
alter table emp01
modify(job varchar2(30))
/
alter table emp01
drop column job
/
alter table emp02
set unused(job)
/
alter table emp02
drop unused columns
/
drop table emp01
/
truncate table emp02
/
rename emp02 to test
/
