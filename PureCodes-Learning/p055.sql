-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------
select rowid,e.employee_id,e.first_name,e.salary
from employees e
order by e.employee_id;
-------------------------------------------------------
update employees
set salary=25500
where rowid='AAATaoAAMAAACMjAAA';
-------------------------------------------------------
select * from employees
where rowid='AAATaoAAMAAACMjAAA';
-------------------------------------------------------
