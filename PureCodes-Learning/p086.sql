-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
--------------------------------------------------------------------------
create  type emp_typ as object(
  employee_id number(5),
  first_name varchar2(50),
  last_name varchar2(50)
);
--------------------------------------------------------------------------
create type emp_list is table of emp_typ;
--------------------------------------------------------------------------
create or replace function tab_func_2(n in number) return emp_list pipelined is
begin

  for i in 1..n
  loop
    pipe row (emp_typ(i,'ebrahim '||i,'salehi '||i));
  end loop;
  return;
end;
--------------------------------------------------------------------------
select * from table (tab_func_2(100));
--------------------------------------------------------------------------
