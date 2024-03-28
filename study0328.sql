select *
from emp
where deptno=10
/
select *
from emp
where hiredate < '1982/01/01'
/
select *
from emp
where deptno=10 and JOB= 'MANAGER'
/
select*
from emp
where not deptno=10
/
select*
from emp
where sal>= 2000 and sal<=3000
/
select*
from emp
where sal>=2000 and sal<=3000
/
select*
from emp
where comm= 300 or comm= 500 or comm =1400
/
select*
from emp
where sal between 2000 and 3000
/
select*
from emp
where sal not between 2000 and 3000
/
select*
from emp
where hiredate between '1987/01/01' and '1987/12/31'
/
select *
from emp
where comm not in (300,500,1400)
/
select*
from emp
where ename like 'F%'
/
select*
from emp
where ename like '%A%'
/
select*
from emp
where ename like '%N'
/
select*
from emp
where ename like '_A%'
/
select *
from emp
where ename not like '%A%'
/
select*
from emp
order by sal asc
/
select*
from emp
order by sal
/
select *
from emp
order by sal desc
/
select*
from emp
order by sal
/
select*
from emp
order by sal desc
/
select*
from emp
order by sal desc, ename asc
/
select substr('welcome to oracle',4,3)
from dual
/
select *
from emp
where substr(hiredate,4,2)='09'
/
select sysdate, next_day(sysdate, '수요일')
from dual
/
select
hiredate, last_day (hiredate)
from emp
/
select sysdate,to_char(sysdate, 'yyyy-mm-dd')
from dual

/
select hiredate,to_char (hiredate, 'yyyy/mm/dd day')
from emp
/
select hiredate, to_char (hiredate, 'yy/mon/dd dy')
from emp
/
select to_char(sysdate, 'yyyy/mm/dd, hh24:mi:ss')
from dual
/
select to_char (1230000)
from dual
/
select ename, sal, to_char (sal, 'l999,999')
from emp
/
select to_char (123456, '0000000000'),
to_char (123456, '999,999,999')
from dual
/
select ename, hiredate from emp
where hiredate=to_date(19810220,'yyyymmdd')

/
select trunc(sysdate-to_date('2008/01/01','yyyy/mm/dd'))
from dual
/
select ename, deptno,
case when deptno=10 then 'accounting'
when deptno=20 then 'research'
when deptno=30 then 'sales'
when deptno=40 then 'operations'
end as dname
from emp
/
select sum(sal)
from emp
/
select sum(comm)
from emp
/
select avg(sal)
from emp
/
select max(sal), min(sal)
from emp
/
select max(sal)
from emp
/
select count(comm)
from emp
/
select count(*),count(comm)
from emp
/
select count(job) 업무수
from emp
/
select deptno
from emp
group by deptno
/
select deptno
from emp
group by deptno
/
select deptno, avg(sal)
from emp
group by deptno
/
select deptno, max(sal), min(sal)
from emp
group by deptno
/
select deptno, count(*), count(comm)
from emp
group by deptno
/
select deptno,avg(sal)
from emp
group by deptno
having avg(sal) >=2000
/
select deptno, max(sal), min(sal)
from emp
group by deptno
having max(sal) >2900
/
select *
from emp,dept
/
select *
from emp,dept
where emp.deptno=dept.deptno
/
select ename, dname
from emp,dept
where emp.deptno=dept.deptno
and ename='SCOTT'
/
select e.ename, d.dname, e.deptno, d.deptno
from emp e, dept d
where e.deptno = d.deptno
and e.ename='SCOTT'
/
select * from salgrade
/
select ename, sal, grade
from emp, salgrade
where sal between losal and hisal
/
select employee.ename||'의 매니저는'
||manager.ename||'입니다.'
from emp employee, emp manager
where employee.mgr= manager.empno
/
select employee.ename||'의 매니저는'
||manager.ename||'입니다.'
from emp employee,emp manager
where employee.mgr=manager.empno(+)
/
