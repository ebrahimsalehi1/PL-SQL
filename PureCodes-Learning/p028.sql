-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

select department_id,group_id(),count(*)
from employees
group by department_id,rollup(department_id)
