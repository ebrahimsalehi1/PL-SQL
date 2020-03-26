-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------------------------------------
select e1.employee_id,e1.first_name,e1.manager_id,e2.first_name
from employees e1,employees e2
where e1.manager_id = e2.employee_id (+)
order by e1.employee_id;
-------------------------------------------------------------------------------------------
select distinct e1.employee_id,e1.first_name
from employees e1,employees e2
where e1.first_name=e2.first_name and e1.employee_id!=e2.employee_id
order by e1.first_name;
-------------------------------------------------------------------------------------------
select first_name,count(*)
from employees
group by first_name
having count(*)>1;
-------------------------------------------------------------------------------------------
