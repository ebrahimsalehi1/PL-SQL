-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
declare
  v1 number;
  emp_id number:=100;
begin

  execute immediate 'select salary from employees where employee_id=:1' into v1 using emp_id;
  dbms_output.put_line('val is :'||v1);
  
end;
