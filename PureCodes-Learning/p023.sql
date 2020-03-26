-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

select department_id,job_id,count(*),sum(salary)
from employees 
group by department_id,job_id
having count(*)=5 and sum(salary) between 10000 and 15000
  and min(salary)/max(salary)>1
