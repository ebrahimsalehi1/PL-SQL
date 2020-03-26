-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com 

Declare
  v1 Varchar2(1000):='delete tbl1';
  cur PLS_INTEGER;
  res PLS_INTEGER;
Begin
  cur := Dbms_Sql.Open_Cursor;
  Dbms_Sql.Parse(cur,v1,dbms_sql.native);
  res := Dbms_Sql.execute(cur);
  dbms_output.put_line('result:'||res);
  Dbms_Sql.close_cursor(cur);
End;
------------------------------------------
select * from tbl1;
------------------------------------------