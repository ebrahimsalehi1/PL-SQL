-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

Select Department_Id,Job_Id,Count(*)
From Employees
Where Department_Id Is Not Null
Group By ROLLUP(Department_Id,Job_Id)
