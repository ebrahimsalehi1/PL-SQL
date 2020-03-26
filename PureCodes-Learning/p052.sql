-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
--------------------------------------------------------
declare
  str varchar(100):='';
begin
  --dbms_output.put_line('val='||str);
  
  if '' is null then
    dbms_output.put_line('null');
  end if;
  
  if '' is not null then
    dbms_output.put_line('null');
  end if;
  
  
end;
--------------------------------------------------------
select *
from employees
where '' is  null
        --'' is not null
        --''=null
        --''!=null
        ;
--------------------------------------------------------
        