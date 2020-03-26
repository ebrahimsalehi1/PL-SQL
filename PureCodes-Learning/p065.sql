-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
---------------------------------------------------------
select *
from employees e,departments d
-- where ????
;
---------------------------------------------------------
create table cartesian(num number,ch char(1));
---------------------------------------------------------
insert into cartesian values(1,'a');
insert into cartesian values(2,'b');
insert into cartesian values(3,'c');
insert into cartesian values(4,'d');
insert into cartesian values(5,'e');
---------------------------------------------------------
select c1.num,c2.num, c1.num * c2.num as times
from cartesian c1,cartesian c2
-- where ???
;
---------------------------------------------------------
select a.ch,b.ch,c.ch
from
(
select ch
from cartesian 
where ch in ('a','b','c')
) a,
(
select ch
from cartesian 
where ch in ('a','b','c')
) b,
(
select ch
from cartesian 
where ch in ('a','b','c')
) c;
---------------------------------------------------------
