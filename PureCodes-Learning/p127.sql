-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-- also, you can join my telegram channel @ebrahimsalehiPLSQL

declare
  type myrecord is record (
     emp_id  number(10),
     first_name varchar2(50),
     last_name varchar2(60)
  );
  
  r myrecord;
  
  procedure proc(myrec myrecord) is
  begin
    dbms_output.put_line('emp_id:'||myrec.emp_id || 
                       '-first_name:'||myrec.first_name||
                       '-last_name:' || myrec.last_name);  
  end;
  
begin

  r.emp_id := 100;
  r.first_name := 'ebrahim';
  r.last_name := 'salehi';
  
  proc(r);
  
end;