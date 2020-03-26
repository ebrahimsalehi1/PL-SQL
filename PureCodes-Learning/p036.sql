-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

-----------------------------------------------------------
create or replace function test1(a in number,b out number) return number is
begin
  b:=a+10;
  return b;
end;
-----------------------------------------------------------
/*
select test1(10,20)
from dual
*/
-----------------------------------------------------------

declare
  c1 number;
  c2 number;
begin
  c2:=20;
  c2:=test1(10,c2);
  
  dbms_output.put_line('result:'||c2);
  
end;
-----------------------------------------------------------
