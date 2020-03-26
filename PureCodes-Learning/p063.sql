-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
----------------------------------------------------------
  CREATE TABLE TEST
   (	S VARCHAR2(100 BYTE)
   );
----------------------------------------------------------
Insert into TEST (S) values ('abc');
Insert into TEST (S) values ('a%bc');
Insert into TEST (S) values ('book 15%');
Insert into TEST (S) values ('book %%15');
Insert into TEST (S) values ('book %1 others');
----------------------------------------------------------   
select *
from employees
where first_name like '%t__';
----------------------------------------------------------
select * 
from test
where --s like '%#%bc' ESCAPE '#'
   -- s like '%\%1%' ESCAPE '\'
  -- s like '%\%15%' ESCAPE '\'
  s like '%15\%%' ESCAPE '\';
----------------------------------------------------------
