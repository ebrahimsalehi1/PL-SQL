-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
---------------------------------------------------------------------
select least(1,2,-10,1000,-101010)
from dual;
---------------------------------------------------------------------
declare
  n number;
begin
  n := least(1,2,-10,1000,-101010);
  dbms_output.put_line('value:'||n);
end;
---------------------------------------------------------------------
