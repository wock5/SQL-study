
insert into dept01
values (20, 'research', 'dallas')
/
create table emp01
as
select * from dept
/
update emp01
set deptno=30
/
update emp01
set sal = sal * 1.1
/
update emp01
set hiredate = sysdate
/
delete from table_name
where conditions,

/
delete from dept01
/
drop table dept01
/
create table dept01
as
select * from dept
/
drop table dept01
/
create table dept01
as
select * from dept
/
delete from dept01
where deptno=30
/
create table emp01
as
select * from emp
/
delete from emp01
where deptno=(select deptno
from dept
where dname='sales')
/
