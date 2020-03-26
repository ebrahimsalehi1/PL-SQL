-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

--------------------------------------------------------
create or replace function test1(a number,b number) return number is
begin
  return a*b;
end;
--------------------------------------------------------
select test1(10,20)
from dual;
--------------------------------------------------------
declare
  c number;
begin
  
  c:= test1(10,20);
  
  dbms_output.put_line('result is :'||c);

end;
--------------------------------------------------------

