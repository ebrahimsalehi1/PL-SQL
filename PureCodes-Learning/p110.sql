-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-----------------------------------------------------------
select greatest(1,12,43,2,90,9,0,-11,9987)
from dual;
-----------------------------------------------------------
declare
  n number;
begin
  n := greatest(1,12,43,2,90,9,0,-11,9987);
  dbms_output.put_line('n='||n);
end;
-----------------------------------------------------------
