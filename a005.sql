select ename, sal*12+nvl(comm, 0) as 연봉
from emp
/
