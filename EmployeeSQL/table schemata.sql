CREATE TABLE Employee(
Emp_no VARCHAR NOT NULL,
Employee_title VARCHAR(1000),
Birth_date DATE,
First_name VARCHAR,
Last_name VARCHAR,
Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
Hire_date DATE,
CONSTRAINT "pk_employees" PRIMARY KEY ("emp_no")
);

CREATE TABLE Salary(
Emp_no VARCHAR,
Salary money,
CONSTRAINT "fk_salary_emp_no" FOREIGN KEY("emp_no") REFERENCES "employee" ("emp_no")
);

CREATE TABLE Dept_emp(
Emp_no VARCHAR,
Dept_no VARCHAR,
CONSTRAINT pk_Dept_emp PRIMARY KEY (Emp_no, Dept_no)
);

CREATE TABLE Dept_manager(
Dept_no VARCHAR,
Emp_no VARCHAR,
CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")REFERENCES "departments" ("dept_no"),
CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")REFERENCES "employee" ("emp_no")	
);

CREATE TABLE Title(
Emp_title_id VARCHAR,
Title VARCHAR(1000),
CONSTRAINT "pk_titles" PRIMARY KEY ("emp_title_id"));

CREATE TABLE Departments(
Dept_no VARCHAR,
Dept_name VARCHAR(1000),
CONSTRAINT "pk_departments" PRIMARY KEY("dept_no")
);
---------------------------------
SELECT * FROM Dept_emp

