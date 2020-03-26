-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
INSERT INTO employees (
    employee_id,
    first_name,
    last_name,
    email,
    phone_number,
    hire_date,
    job_id,
    salary,
    commission_pct,
    manager_id,
    department_id
) VALUES (
    1,
    'ebrahim',
    'salehi',
    'ebrahims@gmail.com',
    '091300000',
    TO_DATE('1395/01/15','YYYY/MM/DD','nls_calendar=persian'),
    'IT_PROG',
    1000,
    NULL,
    100,
    50
);