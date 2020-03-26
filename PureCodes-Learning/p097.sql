-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-----------------------------------------------------------------------------------------
begin

update employees
set salary=100;

dbms_output.put_line('updated records:'||(sql%rowcount));

end;
-----------------------------------------------------------------------------------------
begin

delete job_history
where employee_id=101;

dbms_output.put_line('deleted records:'||(sql%rowcount));

end;
-----------------------------------------------------------------------------------------
declare
  n number :=0;
begin

for i in 1..1000 loop

  update employees
  set salary = 1000
  where employee_id=i;
  
  n := n+ (sql%rowcount);
  
  dbms_output.put_line(i||'-'||((sql%rowcount)));
  
end loop;

dbms_output.put_line('totals:'||n);

end;
-----------------------------------------------------------------------------------------
