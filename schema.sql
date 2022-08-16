-- SCHEMA

-- departments.csv
create table departments ( 
	dept_no varchar,
	dept_name varchar
);
-- dept_emp.csv
create table dept_emp (
	emp_no varchar,
	dept_no varchar
);	
-- dept_manager.csv
create table dept_manager (
	dept_no varchar,
	emp_no varchar
);	
-- employees.csv
create table employees (
	emp_no varchar,
	emp_title_id varchar,
	birth_date date, 
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date
);	
-- salaries.csv
create table salaries (
	emp_no varchar,
	salary integer
);	
-- titles.csv
create table title (
	title_id varchar,
	title varchar
);