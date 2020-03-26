-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com 

----------------------------------------------

declare
  v1 varchar2(100):='insert into tbl1 values(:p1)';
  cur pls_integer;
  res pls_integer;
begin
  cur:=dbms_sql.open_cursor;
  dbms_sql.parse(cur,v1,dbms_sql.native);
  dbms_sql.bind_variable(cur,'p1',200);
  res := dbms_sql.execute(cur);
  dbms_sql.close_cursor(cur);
end;

----------------------------------------------
select * from tbl1;
----------------------------------------------
