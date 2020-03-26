-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

select --regexp_substr('ABCDefg 912345','[0-9]+'),
    --regexp_substr('ABCDefg 912345','[a-z]+')
    --regexp_substr('ABCDefg 912345','[A-Z]+')
   --   regexp_substr('ABCDefg 912345','[A-z]+')
   --regexp_substr('ABCDefg 912345','[A-Z]+[a-z]+')
   regexp_substr('ABCDefg 912345','[[:digit:]]+')

from dual