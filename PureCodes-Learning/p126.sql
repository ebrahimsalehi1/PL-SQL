-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-- also, you can join my telegram channel @ebrahimsalehiPLSQL
----------------------------------------------------
create or replace trigger tbl_trg1 
before insert or update or delete on tbl
for each row
begin
    dbms_output.put_line('tbl_trg1');

  if (inserting) then
    dbms_output.put_line('insert');
  elsif (updating) then
    dbms_output.put_line('update');
  elsif (deleting) then
    dbms_output.put_line('delete');  
  end if;
  dbms_output.put_line('new values:'||:new.id||'-'||:new.description);
  dbms_output.put_line('old values:'||:old.id||'-'||:old.description);
  dbms_output.put_line('--------------------');
end;
----------------------------------------------------
create or replace trigger tbl_trg2
before insert or update or delete on tbl
for each row
follows tbl_trg1
begin
    dbms_output.put_line('tbl_trg2');

  if (inserting) then
    dbms_output.put_line('insert');
  elsif (updating) then
    dbms_output.put_line('update');
  elsif (deleting) then
    dbms_output.put_line('delete');  
  end if;
  dbms_output.put_line('new values:'||:new.id||'-'||:new.description);
  dbms_output.put_line('old values:'||:old.id||'-'||:old.description);
  dbms_output.put_line('--------------------');
end;
----------------------------------------------------
