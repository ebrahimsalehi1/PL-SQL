-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

begin
  for i in 1..10
  loop
     
     dbms_output.put_line('loop '||i);
  
  end loop;

end;