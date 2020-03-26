-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

select department_id,job_id,grouping(job_id),count(*)
from employees
group by cube(department_id,job_id)
order by 1