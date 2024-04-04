select dname
from dept
where deptno = ( select deptno
		      from emp
		      where ename='SCOTT' )

/
select ename, sal
from emp
where sal > (select avg(sal)
		  from emp)
/
select ename, sal, deptno
from emp
where deptno in ( select distinct deptno
		       from emp
		       where sal>=3000)
/
select ename, sal
from emp
where sal > all(select sal
		     from emp
		     where deptno = 30)
/
select ename, sal
from emp
where sal > all(select sal
		     from emp
		     where deptno = 30)
/
select ename, sal
from emp
where sal > any ( select sal
		       from emp
		       where deptno = 30 )
/
select ename, sal
from emp
where sal > any ( select sal
		       from emp
		       where deptno = 30)
/
select ename, sal
from emp
where sal > any ( select sal
		       from emp
		       where deptno = 30)
/
