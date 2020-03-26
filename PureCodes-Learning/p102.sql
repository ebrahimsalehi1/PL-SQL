-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
---------------------------------------------------------------------------------------------------
-- AD_PRES , AD_VP , IT_PROG
select e.department_id,
       sum(decode(e.job_id,'AD_PRES',e.salary,null)) as AD_PRES,
       sum(decode(e.job_id,'AD_VP',e.salary,null)) as AD_VP,
       sum(decode(e.job_id,'IT_PROG',e.salary,null)) as IT_PROG
       
from employees e
group by e.department_id;
---------------------------------------------------------------------------------------------------
-- AD_PRES , AD_VP , IT_PROG
select * from
(
select e.department_id,e.job_id,e.salary
from employees e
)
pivot
(
   sum(salary) for job_id in ('AD_PRES' , 'AD_VP' , 'IT_PROG')
);
---------------------------------------------------------------------------------------------------
