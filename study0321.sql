select sysdate,next_day(sysdate,'¼ö¿äÀÏ')
from dual
/
select instr('welcome to oracle','O',6,2)
from dual
/
select hiredate,last_day(hiredate)
from emp
/
