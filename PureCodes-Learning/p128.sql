-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-- also, you can join my telegram channel @ebrahimsalehiPLSQL

declare
type myarray is varray(5) of integer;
m myarray:= myarray();

begin
    for i in 1..4
    loop
        m.extend;
        m(i) := i*10;
    end loop;    
    
    for j in m.first..m.last
    loop
        dbms_output.put_line('value index '||to_char(j)||' is '||m(j));
    end loop;
    
    m.delete;
end;