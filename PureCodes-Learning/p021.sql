-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

select e.department_id,e.job_id,avg(e.salary) sal_avg,sum(e.salary) sal_sum,count(e.salary) sal_count
from employees e 
group by e.department_id,e.job_id
--order by sal_avg,sal_sum,sal_count
--order by 3 desc,4,5 desc
order by avg(e.salary),sum(e.salary)