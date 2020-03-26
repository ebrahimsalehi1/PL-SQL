-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------------------------
select e.employee_id,e.last_name,e.salary,e.job_id,decode(e.job_id,'AD_VP',100,'AD_PRES',200,'IT_PROG',300,0) as job_id2
from employees e;
-------------------------------------------------------------------------------
select e.employee_id,e.last_name,e.salary,e.job_id,decode(e.job_id,'AD_VP',100,'AD_PRES',200,'IT_PROG',300,0) as job_id2
from employees e
where decode(e.job_id,'AD_VP',100,'AD_PRES',200,'IT_PROG',300,0)=100;
-------------------------------------------------------------------------------
declare
  a number := 1;
  b number ;
begin

  b := decode(a,1,100,2,200,3,300,0); -- RAISE ERROR
  
end;
-------------------------------------------------------------------------------
select *
from employees
where decode(department_id,null,1,0)=1
--department_id is null
;
-------------------------------------------------------------------------------
 