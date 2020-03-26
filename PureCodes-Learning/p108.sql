-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

declare
  cursor cur is
  select employee_id
  from employees
  where department_id=30;
  s varchar2(100);
  empid number;
begin  
  open cur;
  
  loop
  
    fetch cur into empid;
    exit when cur%notfound;
    
    s := 'emp_id=' || empid || '-rowcount=' || cur%rowcount;
    
    if cur%isopen then
      s:=s|| '-isopen=true';
    else  
      s:=s|| '-isopen=false';      
    end if;

    if cur%notfound then
      s:=s|| '-notfount=true';
    else  
      s:=s|| '-notfount=false';      
    end if;

    if cur%found then
      s:=s|| '-fount=true';
    else  
      s:=s|| '-fount=false';      
    end if;
    
    dbms_output.put_line(s);
  
  end loop;
  
  close cur;

end;