-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com

Select Department_Id,Job_Id,Count(*) As Cnt
From Employees
Where Department_Id = 20
Group By Cube(Department_Id,Job_Id)
Order By 1,2
;