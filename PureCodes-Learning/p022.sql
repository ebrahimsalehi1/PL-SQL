-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

select e.department_id,d.department_name,to_number(avg(e.salary)) as sal
from employees e,departments d
where e.department_id=d.department_id
group by e.department_id,d.department_name
order by sal desc
