-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
----------------------------------------------------------------
begin

  DBMS_OUTPUT.PUT_LINE('value is: '||pkg1.y);

  DBMS_OUTPUT.PUT_LINE('value is: '||pkg1.z);

end;
----------------------------------------------------------------
create or replace package pkg1 is

  PI constant number := 3.1415;
  x constant number := 120;
  y number;
  z number := 2017;
  function test1 return number;
  
end;
----------------------------------------------------------------
create or replace package body pkg1 is

  function test1 return number is
  begin

    return x;

  end;
  
begin
/*
some codes
*/
  pkg1.y := 2018;
end;
----------------------------------------------------------------
