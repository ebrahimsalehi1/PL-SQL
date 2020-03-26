-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
---------------------------------------------------------------------
select e.first_name,lower(e.first_name) as lower_fname,upper(e.last_name) as upper_fname
from employees e;
---------------------------------------------------------------------
begin
dbms_output.put_line(lower('ABc'));
dbms_output.put_line(upper('abc'));
dbms_output.put_line(upper(' AbCd ???????'));
dbms_output.put_line(upper('abcüהצ'));
end;
---------------------------------------------------------------------
