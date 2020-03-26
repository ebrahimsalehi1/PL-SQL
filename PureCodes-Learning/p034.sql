-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

select nvl(to_char(department_id),'-'),count(*)
from employees
group by department_id
union
select 'all departments',count(*)
from employees

