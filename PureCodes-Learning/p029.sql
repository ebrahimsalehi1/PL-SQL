-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

select *
from 
(
    Select *
    From 
    (
    select department_id,job_id,to_char(hire_date,'YYYY') As hdate,count(*) as cnt
    from employees
    group by department_id,job_id,to_char(hire_date,'YYYY')
    )
    where hdate>'1990' and cnt = 1

)