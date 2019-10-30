--1.List the details of each employee.
SELECT employee.emp_no,employee.first_name,employee.last_name,employee.gender,salary.salary FROM employee
INNER JOIN salary ON
employee.emp_no = salary.emp_no;

--2.List employees who were hired in 1986.
SELECT employee.emp_no,employee.first_name,employee.last_name FROM employee
WHERE EXTRACT(YEAR FROM employee.hire_date) = 1986;

--3.List the manager of each department.
SELECT dept_manager.dept_no,dept.dept_name,dept_manager.emp_no,employee.last_name,
	employee.first_name,dept_manager.from_date,dept_manager.to_date
FROM dept_manager
INNER JOIN dept ON (dept_manager.dept_no = dept.dept_no)
INNER JOIN employee ON (dept_manager.emp_no = employee.emp_no)
WHERE dept_manager.emp_no IN (SELECT emp_no FROM title WHERE title.title = 'Manager');

--4.List the department of each employee.
SELECT employee.emp_no,employee.last_name, employee.first_name,dept.dept_name
FROM employee
INNER JOIN dept_emp ON employee.emp_no = dept_emp.emp_no
INNER JOIN dept ON dept_emp.dept_no = dept.dept_no;

--5.List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employee
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6.List all employees in the Sales department.
SELECT employee.emp_no,employee.last_name, employee.first_name,dept.dept_name
FROM employee
INNER JOIN dept_emp ON employee.emp_no = dept_emp.emp_no
INNER JOIN dept ON dept_emp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales';

--7.List all employees in the Sales and Development departments.
SELECT employee.emp_no,employee.last_name, employee.first_name,dept.dept_name
FROM employee
INNER JOIN dept_emp ON employee.emp_no = dept_emp.emp_no
INNER JOIN dept ON dept_emp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales' OR dept.dept_name = 'Development';

--8.In descending order, list the frequency count of employee last names.
SELECT last_name,COUNT(last_name) AS last_name_count FROM employee
GROUP BY last_name
ORDER BY last_name_count DESC;