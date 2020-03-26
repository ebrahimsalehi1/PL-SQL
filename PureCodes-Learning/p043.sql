-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-----------------------------------------------------
create or replace package pkg1 is

  PI constant number := 3.1415;
  x constant number := 120;
  function test1 return number;
  
end;
-----------------------------------------------------
create or replace package body pkg1 is

  function test1 return number is
  begin

    return x;

  end;

end;
-----------------------------------------------------
declare 
v1 number;
begin

  --pkg1.x := 120;
  v1 := pkg1.test1;
  DBMS_OUTPUT.PUT_LINE('value:'|| v1);

end;
-----------------------------------------------------
