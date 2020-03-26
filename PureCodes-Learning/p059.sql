-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-----------------------------------------------------------------
select *
from employees
where EXISTS (select * from employees where employee_id=1);
-----------------------------------------------------------------
select *
from employees
where EXISTS (select null from dual where 1=0 );
-----------------------------------------------------------------
select *
from employees e1
where exists (select * from employees e2 where e2.salary<e1.salary);
-----------------------------------------------------------------
