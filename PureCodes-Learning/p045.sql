-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
----------------------------------------------
declare
  v1 number;
begin
  v1 := pkg1.test1;
  DBMS_OUTPUT.put_line('result is :'||v1);
end;
--------------------------------------------------
create or replace package pkg1 is

  PI constant number := 3.1415;
  x constant number := 120;
  y number;
  z number := 2017;
  
  function test1 return number;

end;
--------------------------------------------------
create or replace package body pkg1 is

  procedure test2 is
  begin
    DBMS_OUTPUT.PUT_LINE('test2 is running');
  end;

  function test1 return number is
  begin
    test2;
    return x;

  end;  
  

begin

  pkg1.y := 2018;
  
end;
--------------------------------------------------
