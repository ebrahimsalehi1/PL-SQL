-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
----------------------------------------------------------------------------
select *
from employees e ,departments d
where e.department_id = d.department_id(+);
----------------------------------------------------------------------------
select *
from employees e ,departments d
where e.department_id = d.department_id(+) or d.department_id=10;
----------------------------------------------------------------------------
select *
from employees e ,departments d
where e.department_id = d.department_id(+) or d.location_id=10;
----------------------------------------------------------------------------
select *
from employees e ,departments d
where e.department_id = d.department_id(+) or e.job_id='IT';
----------------------------------------------------------------------------
