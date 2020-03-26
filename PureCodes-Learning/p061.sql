-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------------
select *
from employees e1
where e1.employee_id>ALL (select e2.employee_id from employees e2 where e2.department_id=20);
-------------------------------------------------------------------
select *
from employees e1
where not(e1.employee_id<=ANY (select e2.employee_id from employees e2 where e2.department_id=20));
-------------------------------------------------------------------
