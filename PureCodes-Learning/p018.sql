-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

select * from my_country;

delete from my_country;

merge into my_country t
using (select * from countries where region_id=1) s
on (t.country_id=s.country_id)
when matched then
update set t.country_name=s.country_name
when not matched then
insert (t.country_id,t.country_name) values (s.country_id,s.country_name);
