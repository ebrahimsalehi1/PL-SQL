-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

declare
  i  number:=0;
begin

  loop
     i:=i+1;
     dbms_output.put_line('loop value '||i);
     exit when i>=10;
  end loop;

end;