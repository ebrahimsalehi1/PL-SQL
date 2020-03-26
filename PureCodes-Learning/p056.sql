-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
---------------------------------------------------------
select *
from
(
select rownum rnum,e.employee_id,e.first_name,e.last_name
from employees e)
where rnum between 4 and 5;
---------------------------------------------------------
select rownum rnum,e.employee_id,e.first_name,e.last_name
from employees e
order by rownum desc;
---------------------------------------------------------
