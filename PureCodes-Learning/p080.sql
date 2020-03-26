-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------------------------
create or replace type mytype1 as object(
  emp_id  number(10),
  fname   varchar2(100),
  lname   varchar2(100)
);
-------------------------------------------------------------------------------
declare
  t mytype1;
begin
 
   t := mytype1(1,'ebrahim','salehi');
   dbms_output.put_line('output:'|| t.emp_id || ',' || t.fname || ',' || t.lname);

end;
-------------------------------------------------------------------------------
