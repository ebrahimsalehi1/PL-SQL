-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-----------------------------------------------------------------------------------------
select e.employee_id,e.last_name,e.job_id,
      (case e.job_id when 'AD_VP' then 100 when 'AD_PRES' then 200 when 'IT_PROG' then 300 else 0 end ) as job_id2
from employees e;
-----------------------------------------------------------------------------------------
select e.employee_id,e.last_name,e.job_id,
      (case e.job_id when 'AD_VP' then 100 when 'AD_PRES' then 200 when 'IT_PROG' then 300 else 0 end ) as job_id2
from employees e
where  (case e.job_id when 'AD_VP' then 100 when 'AD_PRES' then 200 when 'IT_PROG' then 300 else 0 end )=300;
-----------------------------------------------------------------------------------------
declare
  a number := 6;
  b number;
begin

  b := (case a 
        when 1 then 100
        when 2 then 200
        when 3 then 300
        else 0
      end);  
      
   dbms_output.put_line('value b is :'||b);   

end;
-----------------------------------------------------------------------------------------
delete job_history e
where  (case 1 when 1 then 100 when 2 then 200 when 3 then 300 else 0 end )=200;
-----------------------------------------------------------------------------------------
update job_history e
set e.department_id=(case 1 when 1 then 100 when 2 then 200 when 3 then 300 else 0 end )
where  (case 1 when 1 then 100 when 2 then 200 when 3 then 300 else 0 end )=200;
-----------------------------------------------------------------------------------------
