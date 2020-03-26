-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

declare
  --s1 varchar2(100):='ebrahim';
   s1 employees.first_name % Type:='ebrahim';
   r1 employees % RowType;
   
   d1 department % RowType;
begin
  dbms_output.put_line(s1);
  
  Select *
  Into r1
  From Employees
  Where Employee_Id=100;
  
  dbms_output.put_line(r1.employee_id || '-'|| r1.first_name || '-'||r1.last_name||'-'||r1.salary);
end;