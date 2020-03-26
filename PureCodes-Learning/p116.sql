
-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com 

declare
  s1 varchar2(100) := '1397/11/30 22:48:33';
  d1 date;
begin

  d1 := to_date(s1,'YYYY/MM/DD HH24:MI:SS');
  dbms_output.put_line('date:'||to_char(d1,'YYYY/MM HH24:MI'));
end;