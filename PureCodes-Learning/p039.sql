-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------------
create or replace procedure p2(x in number,y in number,z in number,result1 out number,result2 out number) is
begin

  result1 := x*x+y*y+z*z;
  result2 := x*x*x+y*y*y+z*z*z;

end;
-------------------------------------------------------------------
declare
  v1 number;
  v2 number;
begin
  p2(1,2,3,v1,v2);
  DBMS_OUTPUT.put_line('results are '||v1||','||v2);
end;
-------------------------------------------------------------------
