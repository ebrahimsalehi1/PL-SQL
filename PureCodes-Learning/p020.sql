-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

select e.department_id,d.department_name,avg(e.salary)
from employees e,departments d
where e.department_id=d.department_id
group by e.department_id,d.department_name;

select e.job_id,j.job_title,avg(e.salary)
from employees e,jobs j
where e.job_id=j.job_id
group by e.job_id,j.job_title;
