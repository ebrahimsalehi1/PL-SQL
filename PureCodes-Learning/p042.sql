-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-----------------------------------------------------------
create package pkg1 is

  function test1 return number;

end;
-----------------------------------------------------------
create package body pkg1 is

  function test1 return number is
  begin
    
    return 1000;
  
  end;

end;
-----------------------------------------------------------
declare
  v1 number;
begin

  v1 := pkg1.test1;
  dbms_output.put_line('result is:'||v1);
  
end;
-----------------------------------------------------------
