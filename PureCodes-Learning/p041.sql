-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
------------------------------------------------------------------
create procedure p4(emp_no  in number,sal out number,pct out number,nam out varchar2,hired  out date) is
begin

  Select Salary,commission_pct,first_name || ' ' || last_name,hire_date
  Into sal,pct,nam,hired
  From Employees
  Where Employee_Id = emp_no;

end;
------------------------------------------------------------------
declare
  sal1 number;
  pct1 number;
  nam1 varchar2(100);
  hired date;
begin
 p4(100,sal1,pct1,nam1,hired);
dbms_output.put_line('sal='||sal1|| ',commission pct='||pct1 ||',name='|| nam1||',hire date='||hired);
end;
------------------------------------------------------------------
