-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

select e.employee_id,e.first_name,e.last_name,e.salary,d.department_name,l.city,c.country_name,
      r.region_name,j.job_title
from employees e,departments d,locations l,countries c,regions r,
     jobs j
where e.department_id=d.department_id
  and d.location_id=l.location_id
  and c.country_id=l.country_id
  and c.region_id=r.region_id
  and e.job_id=j.job_id
  
  and j.job_title='Programmer'
  