-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
----------------------------------------------------
declare
  j number;
begin
  
  if j=null then
    dbms_output.put_line('j=null');
  elsif j!=null then
    dbms_output.put_line('j!=null');
  elsif null=null then
    dbms_output.put_line('null=null');
  elsif null!=null then
    dbms_output.put_line('null!=null');
  elsif j is null then
    dbms_output.put_line('j is null'); 
  end if;  

end;
----------------------------------------------------
select *
from employees
where 
    --null=null
    --null!=null
    --department_id=null
    --department_id!=null
    --department_id is null
    department_id is not null
----------------------------------------------------
    