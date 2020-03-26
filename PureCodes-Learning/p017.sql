-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

insert into my_country(country_id,country_name) values ('AR','argentina 1');
insert into my_country(country_id,country_name) values ('AU','australia 1');

select * from my_country;

delete my_country;


merge into my_country t
using countries s 
on (t.country_id=s.country_id)
when matched then
update set t.country_name=s.country_name
delete where t.country_id='AR'
when not matched then
insert (t.country_id,t.country_name) values (s.country_id,s.country_name);