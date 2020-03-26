-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------
create or replace function test_function(n number) return number is
begin

  return n+n*10;

end;
-------------------------------------------------------------
Select *
From Employees e
order by 
  e.salary*nvl(e.commission_pct,0) desc,
  substr(e.first_name,2,5) asc,
  test_function(e.salary) desc,
  (
  select d.department_id
  from departments d
  where d.department_id=e.department_id
  )
-------------------------------------------------------------
