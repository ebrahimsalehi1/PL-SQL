-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------------------------------------
select *
from 
(
select first_name || ' ' || last_name || '-TEST ' as col1,
       concat(concat(concat(first_name ,' '),last_name),'-TEST ') as col2
from employees
)
where col1=col2;
-------------------------------------------------------------------------------------------
declare
  s varchar2(100);
begin
  --s := 'ABC' || 'DEF';
  s := concat('ABC','DEF');
end;
-------------------------------------------------------------------------------------------
