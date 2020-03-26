-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------
select *
from employees
where 
      --employee_id between 102 and 103
      --employee_id>=102 and employee_id<=103
      --not (employee_id between 102 and 103)
      employee_id<102 or employee_id>103;
-------------------------------------------------------
select *
from employees
where hire_date between sysdate-10000 and sysdate;
-------------------------------------------------------
select *
from employees
where first_name between 'abc' and 'efg';
-------------------------------------------------------
      