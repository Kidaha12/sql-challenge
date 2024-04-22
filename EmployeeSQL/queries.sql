--Data Analysis

--List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employee e
INNER JOIN salary s ON s.emp_no = e.emp_no
ORDER BY 2;


--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, e.Last_name, e.hire_date 
FROM employee e
WHERE EXTRACT (YEAR FROM hire_date) = 1986;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name, dm.dept_no 
FROM dept_manager dm
INNER JOIN departments d ON d.dept_no = dm.dept_no
INNER JOIN employee e  ON e.emp_no = dm.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employee e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT e.last_name, e.first_name, e.gender
FROM employee e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employee e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employee e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT e.emp_no, e.last_name, e.first_name
FROM employee e
ORDER BY e.last_name DESC;
