-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

declare
  i number:=0;
   b boolean:=false;
begin

  while i<10 or b=true
  loop
  
     i:=i+1;
     dbms_output.put_line('loop '||i);
     
  end loop;
  
end;