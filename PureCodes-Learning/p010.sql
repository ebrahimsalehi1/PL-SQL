-- Learning PL/SQL with Ebrahim Salehi
-- If you have questions, You will send an email to ebrahim.salehi.oshtorjani@gmail.com
-----------------------------------------------------------
  CREATE TABLE "HR"."CANDIDATES" 
   (	"EMPLOYEE_ID" NUMBER(6,0), 
	"FIRST_NAME" VARCHAR2(20 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"EMAIL" VARCHAR2(25 BYTE), 
	"PHONE_NUMBER" VARCHAR2(20 BYTE), 
	"HIRE_DATE" DATE, 
	"JOB_ID" VARCHAR2(10 BYTE), 
	"SALARY" NUMBER(8,2), 
	"COMMISSION_PCT" NUMBER(2,2), 
	"MANAGER_ID" NUMBER(6,0), 
	"DEPARTMENT_ID" NUMBER(4,0), 
	"CANDIDATE_ID" NUMBER(6,0) NOT NULL ENABLE, 
	 CONSTRAINT "CANDIDATES_PK" PRIMARY KEY ("CANDIDATE_ID")
     );
-----------------------------------------------------------
-- delete candidates;
-- delete hr.employees;

truncate table candidates;

rollback;
-----------------------------------------------------------

