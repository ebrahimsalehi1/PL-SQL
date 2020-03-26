-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

declare
  a number not null := 1;
begin

  a := 100/a;
  
  if a is null then
    dbms_output.put_line('a is null');
  else
    dbms_output.put_line('a is '||a);
    
  end if;
  
  
end;