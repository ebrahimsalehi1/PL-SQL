-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

declare
  type mylist is table of number;
  l1 mylist:=mylist(100,160,61,89,632,123,654,120);
begin
 dbms_output.put_line('first index:' || l1.first);
  dbms_output.put_line('last index:' || l1.last);

 dbms_output.put_line('val:'||l1(l1.last));
 
 for i in l1.first .. l1.last
 loop
   dbms_output.put_line('value of index '||i||' is '||l1(i)); 
 end loop;
 
end;
