-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

select *
from employees e
where --1=1
    --decode(e.department_id,null,1,0)=1
   -- null=null
   --decode(null,null,1,0)=1
 --  null!=null
 null is null