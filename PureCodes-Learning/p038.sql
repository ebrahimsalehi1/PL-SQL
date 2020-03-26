-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

-------------------------------------------------------------
create or replace procedure p1(i  number,j  number) is
  c number;
begin

  c := i*j;
  DBMS_OUTPUT.put_line('the value is ' || c);
  
end;
-------------------------------------------------------------
begin

  p1(10,20);
  
end;
-------------------------------------------------------------
