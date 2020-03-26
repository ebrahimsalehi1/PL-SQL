-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
Select e.Employee_Id,e.First_Name,e.Last_Name,e.Hire_Date,e.salary,e.department_id
From Employees e
where e.department_id=50 and (e.salary>1500 or e.salary<2500) -- and or not