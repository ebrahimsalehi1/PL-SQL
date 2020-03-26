-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
---------------------------------------------------------------------
declare
  i  number:=0;
begin

  loop
  
    i := i+1;
    
        dbms_output.put_line(i);

    --exit when i>10; 
    if i>10 then
      exit;
    else
      continue;
    end if;
    
  end loop;

end;
---------------------------------------------------------------------
declare
  i  number:=0;
begin

  while true
  loop
  
    i := i+1;
    
        dbms_output.put_line(i);

    --exit when i>10; 
    if i>10 then
      exit;
    else
      continue;
    end if;
    
  end loop;

end;
---------------------------------------------------------------------
