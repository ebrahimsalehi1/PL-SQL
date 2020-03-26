-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

declare
  i number := 0;
begin

  <<loop1>>
  loop
  
    i:=i+1;
    dbms_output.put_line(i);
    exit loop1 when i>5;
    
    <<loop2>>
    loop
      exit loop2;
      continue loop1;
      
    end loop loop2;
    
  end loop loop1;

end;