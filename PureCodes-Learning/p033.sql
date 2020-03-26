-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

select first_name,count(*) As count_first_name
from employees
where first_name='Kevin'
group by first_name
having count(*)=2
order by count_first_name desc
