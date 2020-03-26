-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

declare
  cursor cur is 
  select employee_id,first_name,salary
  from employees;
  
  emp_id number;
  fname varchar2(100);
  sal number;
  
begin
 
  open cur;
  
  loop
  
    fetch cur into emp_id,fname,sal;
    exit when cur%notfound;

    dbms_output.put_line('row:'||emp_id||'-'||fname||'-'||sal);
  end loop;
  
  close cur;

end;