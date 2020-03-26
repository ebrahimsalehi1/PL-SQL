-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-----------------------------------------------------
create or replace function test_boolean(b1 in boolean,b2 in boolean) return varchar2 is
begin
  if b1 or b2 = true then
    return 'true';
  else
    return 'false';
  end if;
end;
-----------------------------------------------------
begin
  dbms_output.put_line(test_boolean(null,null));
  dbms_output.put_line(test_boolean(true,null));
  dbms_output.put_line(test_boolean(false,null));
end;
-----------------------------------------------------
