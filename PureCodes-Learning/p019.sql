-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

select avg(e.salary)
from employees e;

select sum(salary)
from employees;

select count(salary)
from employees;

select avg(salary),sum(salary),count(salary),sum(salary)/count(salary)
from employees;

select min(salary),max(salary)
from employees;

select count(salary),count(*),count(commission_pct),count(1),count(department_id)
from employees;

