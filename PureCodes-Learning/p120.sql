-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com 

declare
  cur pls_integer;
  res pls_integer;
  scode varchar2(1000):='
  begin 
    --:p1 := 10+200; 
    select count(*),sum(salary),round(avg(salary))
    into :p1,:p2,:p3
    from employees
    where department_id=:dep1;
  end;
  ';
  p1 number;
  p2 number;
  p3 number;
  
begin

  cur:= dbms_sql.open_cursor;
  dbms_sql.parse(cur,scode,dbms_sql.native);
  
  dbms_sql.bind_variable(cur,':p1',p1);
  dbms_sql.bind_variable(cur,':p2',p2);
  dbms_sql.bind_variable(cur,':p3',p3);
  dbms_sql.bind_variable(cur,':dep1',20);
  
  res := dbms_sql.execute(cur);
  
  dbms_sql.variable_value(cur,':p1',p1);
  dbms_sql.variable_value(cur,':p2',p2);
  dbms_sql.variable_value(cur,':p3',p3);
  
  dbms_output.put_line('p1='||p1||',p2='||p2||',p3='||p3);
  dbms_sql.close_cursor(cur);
  
end;