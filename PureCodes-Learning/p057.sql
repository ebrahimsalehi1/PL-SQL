-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
----------------------------------------------------------
select *
from employees
where employee_id >ALL(100,101,102);
----------------------------------------------------------
select *
from employees
where employee_id>100 and employee_id>101 and employee_id>102;
----------------------------------------------------------
select *
from employees
where employee_id >ALL(select employee_id from employees where department_id=20);
----------------------------------------------------------
