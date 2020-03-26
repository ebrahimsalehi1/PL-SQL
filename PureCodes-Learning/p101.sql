-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------------------------
select e.employee_id,e.last_name,e.job_id,--(case when e.job_id= 'AD_VP' then 100 when e.job_id='AD_PRES' then 200 end) as col1
  (case when e.salary>5000 then 'A' when e.salary<5000 then 'B' else 'C' end) as col2
from employees e;
-------------------------------------------------------------------------------
declare
  a number:=1;
  b number;
begin
 
 b := (case when a>1 then 100
            when a<1 then 200
            else 300
            end);
            

dbms_output.put_line('b is '||b);
end;
-------------------------------------------------------------------------------
