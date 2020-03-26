-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
--------------------------------------------------------------------------
select --substr('ABCDEFG',3.8,2),
       substr('ABCDEFG',-7,3)
from dual;
--------------------------------------------------------------------------
declare
  s varchar2(10):='ABCDEFG';
begin

  dbms_output.put_line('result:'||substr(s,2,3));

end;
--------------------------------------------------------------------------
