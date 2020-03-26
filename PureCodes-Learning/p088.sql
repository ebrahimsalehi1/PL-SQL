-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

declare
  a number := 6;
begin

/*
  if a=1 then
    dbms_output.put_line('equal');
  else
    dbms_output.put_line('not equal');  
  end if;
  */
  if a>10 then
    dbms_output.put_line('greater than 10');
  elsif a<5 then
    dbms_output.put_line('less than 5');
  elsif a>=5 and a<=10 then
    dbms_output.put_line('between 5 and 10');
  else
    dbms_output.put_line('else');  
  end if;

end;