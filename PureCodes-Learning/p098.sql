-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------------------------
create or replace function test_fun(p1 in number) return number is
begin

  update employees 
  set salary = salary*1.1;
  
  return sql%rowcount;
end;
-------------------------------------------------------------------------------
select test_fun(1) from dual;
-------------------------------------------------------------------------------
declare
  a number;
begin
  a := test_fun(1);
  dbms_output.put_line('result:'||a);
end;
-------------------------------------------------------------------------------
