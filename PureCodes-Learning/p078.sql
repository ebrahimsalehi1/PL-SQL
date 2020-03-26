-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------------------------------------
create or replace view emp_dept_viw as
select e.employee_id,d.department_id,e.first_name,e.last_name,e.salary,d.department_name
from employees e left outer join departments d on e.department_id=d.department_id;
-------------------------------------------------------------------------------------------
select * 
from emp_dept_viw;
-------------------------------------------------------------------------------------------
