-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
---------------------------------------------------------------------------
create or replace procedure p3(x in out number,dt in out date,s in out varchar) is
begin
  x := x+x;
  dt := dt+10;
  s:=s||' Ebrahim ';
end;
---------------------------------------------------------------------------
declare
  g number:= 900;
  d date := sysdate;
  s varchar2(100) := 'Hello';
begin
  p3(g,d,s);
  DBMS_OUTPUT.put_line('results: num='||g||',date='||d||',string='||s);
end;
---------------------------------------------------------------------------
