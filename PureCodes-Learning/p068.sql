-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
------------------------------------------------------------------------------------
select *
from employees
where employee_id not in (100,null);
------------------------------------------------------------------------------------
select *
from departments
where department_id not in (select department_id from employees where department_id is not null);
------------------------------------------------------------------------------------
select *
from employees
where employee_id<>100 and employee_id <>null;
------------------------------------------------------------------------------------
