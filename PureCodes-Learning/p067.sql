-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
--------------------------------------------------------
select e.employee_id,e.job_id,e.salary,j.job_id,j.max_salary
from employees e,jobs j
where e.salary>j.max_salary
--and e.employee_id=124
;
--------------------------------------------------------
select e.employee_id,count(*)
from employees e,jobs j
where e.salary>j.max_salary
--and e.employee_id=124
group by e.employee_id
order by 2 desc;
--------------------------------------------------------
