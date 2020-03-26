-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
----------------------------------------------------------------------------------------
select count(*)
from employees e left outer join departments d on e.department_id=d.department_id;
----------------------------------------------------------------------------------------
select count(*)
from employees e left outer join departments d using (department_id);
----------------------------------------------------------------------------------------
select count(*)
from employees e , departments d 
where e.department_id=d.department_id (+);
----------------------------------------------------------------------------------------
