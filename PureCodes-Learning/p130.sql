-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-- also, you can join my telegram channel @ebrahimsalehiPLSQL

declare
  type mycollection is table of integer;
  
  m mycollection := mycollection();
begin

  for i in 1..40
  loop
      m.extend;
      m(i) := i;
  end loop;
    
  for j in m.first .. m.last
  loop
    dbms_output.put_line('value is '||m(j));
  end loop;
end;