-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-----------------------------------------------------------
create or replace procedure test_nulls(p1  in  number,p2 in  varchar2) is
begin
  
  if p1 is null then
    raise_application_error(-20000,'error p1');
  end if;
  
  if p2 is null then
    RAISE_APPLICATION_ERROR(-20000, 'error p2');
  end if;

  /*
  write some codes here !!!
  */
  
end;
-----------------------------------------------------------
begin
  test_nulls(null,null);
end;
-----------------------------------------------------------

