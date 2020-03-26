-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------------------------
select count(*)
from employees e cross join departments d;
-------------------------------------------------------------------------------
select count(*)
from employees e , departments d;
-------------------------------------------------------------------------------
select e.employee_id,b.col1 --count(*)
from employees e cross join (select 1 col1 from dual union select 2 from dual) b
where e.employee_id=100;
-------------------------------------------------------------------------------
select e.employee_id,b.col1 --count(*)
from employees e , (select 1 col1 from dual union select 2 from dual) b
where e.employee_id=100;
-------------------------------------------------------------------------------
