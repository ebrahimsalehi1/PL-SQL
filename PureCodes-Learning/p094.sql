-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------------------------
declare
  type dept_list is table of departments%RowType;
  dept_list1 dept_list:=dept_list();
  
  d1 departments%rowtype;
begin

  select *
  into d1
  from departments
  where department_id=10;
  
  dept_list1.extend(2);
  
  dept_list1(1) := d1;
  
  dbms_output.put_line(dept_list1(1).department_id||'-'||dept_list1(1).department_name);

end;
-------------------------------------------------------------------------------
declare
  type dept_list is table of departments%RowType;
  dept_list1 dept_list:=dept_list();
begin

  dept_list1.extend(2);

  select *
  into dept_list1(1)
  from departments
  where department_id=10;

  select *
  into dept_list1(2)
  from departments
  where department_id=20;
  
  for i in dept_list1.first..dept_list1.last
  loop
  dbms_output.put_line(dept_list1(i).department_id||'-'||dept_list1(i).department_name);
  end loop;
end;
-------------------------------------------------------------------------------
