
-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com 

declare
  cur pls_integer;
  res pls_integer;
  v_emp_id  number;
  v_sal  number;
begin
  cur := dbms_sql.open_cursor;
  dbms_sql.parse(cur,'select employee_id,salary from employees',dbms_sql.native);
  dbms_sql.define_column(cur,1,v_emp_id);
  dbms_sql.define_column(cur,2,v_sal);
  
  res := dbms_sql.execute(cur);
  loop
      if dbms_sql.fetch_rows(cur) > 0 then
        dbms_sql.column_value(cur,1,v_emp_id);      
        dbms_sql.column_value(cur,2,v_sal);      
        dbms_output.put_line('res:'||v_emp_id||'-'||v_sal);
      else
        exit;
      end if;
  end loop;
  
  dbms_sql.close_cursor(cur);
end;
------------------------------------------