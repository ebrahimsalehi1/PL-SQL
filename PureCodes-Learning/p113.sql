-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com 

declare
  v1 varchar2(100) := 'part 1';
begin

  dbms_output.put_line(v1);
  
  ------------------------------------
  declare
    v2 varchar2(100):='part 2';
  begin
    dbms_output.put_line(v2);  
  exception
     when OTHERS then
       dbms_output.put_line('error : Others');
  end;
  ------------------------------------
  --v2 := 'part 3';
exception 
  when no_data_found then
    dbms_output.put_line('error - no data found');
end;