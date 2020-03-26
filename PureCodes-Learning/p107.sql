-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
------------------------------------------------------------------------
   select employee_id,first_name,salary
   from employees
   where department_id=30;
------------------------------------------------------------------------
declare
   cursor cur1(p_dept_id  number,p_emp_id  number) is
   select employee_id,first_name,salary
   from employees
   where department_id=p_dept_id or employee_id=p_emp_id;

  empid number;
  fname varchar2(100);
  sal number;
begin
    open cur1(30,100);
    
    loop
    
      fetch cur1 into empid,fname,sal;
      exit when cur1%notfound;
      
      dbms_output.put_line(empid || '-' || fname || '-' || sal);
    
    end loop;
    
    close cur1;
end;
------------------------------------------------------------------------
