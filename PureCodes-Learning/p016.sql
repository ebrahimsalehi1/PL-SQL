-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

create table my_country(country_id char(2),country_name varchar2(100));

select * from my_country;

merge into my_country t
using countries s
on (t.country_id=s.country_id)
when matched then
update set t.country_name=t.country_name
when not matched then
insert (t.country_id,t.country_name) values (s.country_id,s.country_name);

