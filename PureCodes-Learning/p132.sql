-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-- also, you can join my telegram channel @ebrahimsalehiPLSQL

(
select '1' a,'one' b from dual
union
select '2','two' from dual
)
minus
(
select '1' a,'one' b from dual
)
---------------------------------
(
select employee_id from employees 
)
minus
(
select employee_id from employees where employee_id<>100
)
----------------------------------
