-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-- also, you can join my telegram channel @ebrahimsalehiPLSQL
-------------------------------------------
create table tbl(id number(10),description varchar2(50))
-------------------------------------------
create or replace trigger tbl_trg 
after delete on tbl
for each row
begin
  dbms_output.put_line('before delete tbl');
  dbms_output.put_line('new values:'||:new.id||'-'||:new.description);
  dbms_output.put_line('old values:'||:old.id||'-'||:old.description);
  dbms_output.put_line('--------------------');
end;
-------------------------------------------
