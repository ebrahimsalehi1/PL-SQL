-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
----------------------------------------------------------------------------------
select *
from employees e left outer join departments d using (department_id)
where e.salary>1000 and e.employee_id=202 and department_id>10;
----------------------------------------------------------------------------------
select *
from employees e left outer join departments d on e.department_id=d.department_id
where e.salary>1000 and e.employee_id=202 and d.department_id>10;
----------------------------------------------------------------------------------
select *
from employees e left outer join departments d on e.department_id =d.department_id (+)
where e.salary>1000 and e.employee_id=202 and d.department_id>10;
----------------------------------------------------------------------------------
select *
from employees e right outer join departments d on e.department_id (+) =d.department_id 
where e.salary>1000 and e.employee_id=202 and d.department_id>10;
----------------------------------------------------------------------------------
select *
from employees e full outer join departments d on e.department_id  =d.department_id --(+)
where e.salary>1000 and e.employee_id=202 and d.department_id>10;
----------------------------------------------------------------------------------
select *
from employees e inner join departments d on e.department_id (+) =d.department_id 
where e.salary>1000 and e.employee_id=202 and d.department_id>10;
----------------------------------------------------------------------------------
