-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------------------------------
select count(*)
from employees e full outer join departments d on e.department_id=d.department_id;
-------------------------------------------------------------------------------------
select count(*)
from employees e left outer join departments d on e.department_id=d.department_id
where e.department_id is null;
-------------------------------------------------------------------------------------
select count(*)
from employees e right outer join departments d on e.department_id=d.department_id
where e.department_id is null;
-------------------------------------------------------------------------------------
select count(*)
from employees e inner  join departments d on e.department_id=d.department_id;
-------------------------------------------------------------------------------------
select 106+1+16
from dual;
-------------------------------------------------------------------------------------

