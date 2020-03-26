-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------------------------
create or replace type mytype as object(
  emp_id  number(10),
  fname   varchar2(100),
  lname   varchar2(100)
);
-------------------------------------------------------------------------------
drop type mytype1;
-------------------------------------------------------------------------------
create type Mytype_Table is table of mytype;
-------------------------------------------------------------------------------
declare
  t mytype_table:=mytype_table(mytype(0,'',''),mytype(0,'',''));
begin

  t.extend;
  t(1).emp_id := 1;
  t(1).fname := 'ebrahim 1 ';
  t(1).lname := 'salehi 1';

  t.extend;
  t(2).emp_id := 2;
  t(2).fname := 'ebrahim 2';
  t(2).lname := 'salehi 2';
  
  
  dbms_output.put_line(t(2).emp_id||'-'||t(2).fname||'-'||t(2).lname);
  
end;
-------------------------------------------------------------------------------
