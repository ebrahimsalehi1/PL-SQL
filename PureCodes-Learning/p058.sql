-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
------------------------------------------------------------
select *
from employees
where employee_id>ANY(100,101,102,103);
------------------------------------------------------------
select *
from employees
where employee_id>100 or employee_id>101 or employee_id>102 or employee_id>103;
------------------------------------------------------------

select *
from employees
where employee_id>ANY(select employee_id from employees where department_id=20);
------------------------------------------------------------

