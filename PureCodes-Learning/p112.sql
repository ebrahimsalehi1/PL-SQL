
-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com 

declare
  v_emp_id  number:=100;
begin

  for cur in (select employee_id,first_name,salary
              from employees
              where employee_id=v_emp_id or department_id=10
            )
  Loop
  
    dbms_output.put_line('values:'||cur.employee_id||'-'||cur.first_name||'-'||cur.salary);
  
  End Loop;

end;
