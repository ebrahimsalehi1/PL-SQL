-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-------------------------------------------------------------------
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HR"."TEST_UPD_VIW" ("EMPLOYEE_ID", "FIRST_NAME", "LAST_NAME", "SALARY", "DEPARTMENT_ID", "DEPARTMENT_NAME", "START_DATE", "END_DATE", "JOB_ID") AS 
  select e.employee_id,e.first_name,e.last_name,e.salary,d.department_id,d.department_name,
       jh.start_date,jh.end_date,jh.job_id
from employees e ,departments d,job_history jh
where e.department_id=d.department_id 
  and e.employee_id = jh.employee_id;
-------------------------------------------------------------------
select * from test_upd_viw;
-------------------------------------------------------------------
update test_upd_viw g
set 
    --g.salary=g.salary+50
    --g.first_name='Jack'
    --ERROR -- g.department_name='department 1'
    --g.end_date=sysdate
    g.job_id='IT_PROG'
where g.employee_id=200;
-------------------------------------------------------------------
