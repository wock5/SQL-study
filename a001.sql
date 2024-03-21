select ename, sal*12+nvl(comm, 0) as연봉
from emp
/
