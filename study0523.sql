create sequence dept_deptno_seq
increment by 10
start with 10

/
select dept_deptno_seq.nextval from dual
/
select dept_deptno_seq.currval from dual
/
create sequence emp_seq
start with 1
increment by 1
maxvalue 100000
/
drop table emp01
/
create table emp01(
empno number(4) primary key,
ename varchar(10),
hiredate date
)
/
insert into emp01
values(emp_seq.nextval, 'JULIA', sysdate)
/
select* from emp01
/
drop sequence dept_deptno_seq
/
create table emp01
as
select * from emp
/
select table_name, index_name, column_name
from user_ind_columns
where table_name in('EMP','EMP01')

/
select distinct empno, ename
from emp01
where ename='SYJ'
/
create index idx_emp01_ename
on emp01(ename)
/
drop index idx_emp01_ename
/
create index idx_emp01_deptno
on emp01(deptno)
/
create table dept01
as
select * from dept where 1=0
/
create unique index idx_dept01_deptno
on dept01(deptno)
/
create index idx_dept01_loc
on dept01(loc)
/
create index idx_dept01_com
on dept01(deptno, dname)
/
select index_name, column_name
from user_ind_columns
where table_name = 'DEPT01'
/
create index idx_emp01_annsal
on emp01(sal*12)
/
select index_name, column_name
from user_ind_columns
where table_name = 'EMP01'

/
begin
dbms_output.put_line('Hello World!');
end;
/
