-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com 
----------------------------------------------------------------------
alter session set nls_calendar=gregorian;

select to_date('2018-JAN-21','YYYY-MON-DD') -- 'nls_calendar=gregorian'
from dual;

alter session set nls_calendar=persian;

select 
       to_date('1398-FARVARDIN-13','YYYY-MON-DD') -- ,'nls_calendar=persian'
from dual;
----------------------------------------------------------------------
select to_date('1398-FARVARDIN-13','YYYY-MON-DD','nls_calendar=persian'),
       to_date('2018-JAN-21','YYYY-MON-DD','nls_calendar=gregorian')
from dual;
----------------------------------------------------------------------
