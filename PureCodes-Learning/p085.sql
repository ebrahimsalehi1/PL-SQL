-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
---------------------------------------------------------------------
create or replace type num_list is table of number;
---------------------------------------------------------------------
create or replace function tbl_func_1 return num_list pipelined is
begin

/*
  pipe row (1);
  pipe row (2);
  pipe row (3);
  */
  
  for i in 1..10
  loop
     pipe row (i);
  end loop;
  
  return;
end;
---------------------------------------------------------------------
select * from table(tbl_func_1);
---------------------------------------------------------------------
