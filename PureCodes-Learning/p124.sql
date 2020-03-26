-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-- also, you can join my telegram channel @ebrahimsalehiPLSQL


declare
  cursor cur is
  select * 
  from employees;

begin

    for c in cur
    loop
    
        dbms_output.put_line(c.employee_id || '-' || c.first_name || '-'||c.salary);
    
    end loop;

end;