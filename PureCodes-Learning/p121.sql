
declare
  cur pls_integer;
  res pls_integer;
  arr dbms_sql.number_table;
begin
  arr(1) := 100;
  arr(2) := 200;
  arr(3) := 300;
  arr(4) := 400;
  arr(5) := 500;
  
  cur := dbms_sql.open_cursor;
  dbms_sql.parse(cur,'insert into tbl1 values(:arr)',dbms_sql.native);
  dbms_sql.bind_array(cur,':arr',arr);
  res := dbms_sql.execute(cur);
  dbms_sql.close_cursor(cur);

end;
  