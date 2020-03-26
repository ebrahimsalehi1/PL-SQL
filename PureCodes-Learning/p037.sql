-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

------------------------------------------------
create or replace function get_sal(n number) return number is
  v1 number;
begin

  Select Salary
  Into v1
  From Employees
  Where Employee_Id = n;
  
  Return v1;

end;
------------------------------------------------
select employee_id,get_sal(0)
from employees;
------------------------------------------------
declare
  f number;
begin
  f := get_sal(110);
  DBMS_OUTPUT.put_line(f);
end;
------------------------------------------------
