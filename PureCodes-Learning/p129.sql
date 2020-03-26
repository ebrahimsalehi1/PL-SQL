-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-- also, you can join my telegram channel @ebrahimsalehiPLSQL

declare
  type myrecord is record(
     x integer,
     y integer);
  
  type myarray is varray(5) of myrecord;
  
  m myarray := myarray();
begin
  dbms_output.put_line('limit:'||m.limit);
  for i in 1..m.limit
  loop
    m.extend;
    m(i).x := i;
    m(i).y := i*2;
  end loop;
  
  for j in m.first..m.last
  loop
    dbms_output.put_line('x='||m(j).x || ',y='||m(j).y);
    dbms_output.put_line('---------' || j);
  end loop;

end;