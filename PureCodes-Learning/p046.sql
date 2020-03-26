-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------
create or replace package employee_pkg is

  procedure calc_pct(emp_in in number,pct out number);
  
end;  
-------------------------------------------------------

create or replace package body employee_pkg is

  function get_commission_pct(emp_in in number) return number is
    lv_pct number;
  begin
  
    select commission_pct
    into lv_pct
    from employees
    where employee_id = emp_in;
    
    if lv_pct is null then
      lv_pct := 1;
    end if;
    
    return lv_pct;
  
  end;
  
  ---------------
  
  function get_count_job(emp_in in number) return number is
    cnt  number;
  begin
  
     select count(*)
     into cnt
     from job_history
     where employee_id = emp_in;
  
     return cnt+1;
     
  end;

  ---------------

  function get_is_manager(emp_in  in  number) return number is 
    cnt number;
  begin
  
    select count(*)
    into cnt
    From departments
    where manager_id = emp_in;
    
    return cnt+1;
      
  
  end;

  ---------------

  procedure calc_pct(emp_in in number,pct out number) is
    
  begin
     
     pct := get_commission_pct(emp_in)*get_count_job(emp_in)*get_is_manager(emp_in);
    
  end;
    

end;
-------------------------------------------------------
declare
  pct  number;
begin

 
  employee_pkg.calc_pct(101,pct);
  DBMS_OUTPUT.put_line('value is :'||pct);

end;
-------------------------------------------------