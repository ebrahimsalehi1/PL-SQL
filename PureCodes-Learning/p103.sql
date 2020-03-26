-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

declare
  n number:=0;
begin

  if n>0 then
    dbms_output.put_line('n>0');
  elsif n<0 then
    dbms_output.put_line('n<0');
  else
    raise_application_error(-20000,'error ');
  end if;  

end;
