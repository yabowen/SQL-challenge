CREATE TABLE dept (
	dept_no VARCHAR(10),
	dept_name VARCHAR(30)
);

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(10),
	from_date date,
	to_date date
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(10),
	emp_no INT,
	from_date date,
	to_date date
);

CREATE TABLE employee (
	emp_no INT,
	birth_date date,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(1),
	hire_date date
);

CREATE TABLE salary (
	emp_no INT,
	salary INT,
	from_date date,
	to_date date
);

CREATE TABLE title (
	emp_no INT,
	title VARCHAR(30),
	from_date date,
	to_date date
);