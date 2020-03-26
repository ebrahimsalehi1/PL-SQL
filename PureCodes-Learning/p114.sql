-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com 

select translate('abc12ef3gh','123','ABC')
from dual;

select translate('abc12ef3gh','123','AB')
from dual;

select translate('abc12ef3gh','12','ABCDEF')
from dual;
