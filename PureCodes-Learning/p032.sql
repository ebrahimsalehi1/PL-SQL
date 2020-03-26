-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

Select cnt , count(*)
from 
(
    select employee_id,count(*) as cnt
    from employees
    group by employee_id
    union all
    select employee_id,count(*)
    from job_history
    group by employee_id
)
Group by cnt

