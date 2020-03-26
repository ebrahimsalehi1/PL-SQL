-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
--------------------------------------------------------------
select *
from employees 
where --employee_id in (100,101)
   first_name in ('David','John');
--------------------------------------------------------------
select *
from employees 
where department_id in (select department_id from departments where department_id=10);
--------------------------------------------------------------
select *
from employees 
where department_id in (select d.department_id 
                        from departments d,locations l 
                        where d.location_id=l.location_id and l.country_id='DE');
--------------------------------------------------------------
   