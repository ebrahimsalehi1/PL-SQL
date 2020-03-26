-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-----------------------------------------------------------------
select *
from employees e,departments d
where e.department_id (+) = d.department_id ;
-----------------------------------------------------------------
select *
from employees
where department_id is null;
-----------------------------------------------------------------
select *
from departments
where department_id not in (select department_id from employees where department_id is not null);
-----------------------------------------------------------------
select 16+106
from dual;
-----------------------------------------------------------------
-----------------------------------------------------------------
