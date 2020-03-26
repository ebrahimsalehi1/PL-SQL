-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
----------------------------------------------------------

declare
  a number not null := 100;
begin
  a := a+20;
  dbms_output.put_line('number is '||a);
end;

----------------------------------------------------------

declare
  b constant number := 200;
begin

  --b := b+10;
  dbms_output.put_line('number 2 is :'||b);

end;

----------------------------------------------------------
