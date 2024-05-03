/* 1. List the employee number, last name, first name, sex, and salary of each employee.
	from employees - employee number, last name, first name, sex
	from salaries - employee number, salary
*/
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
	FROM employees AS e
	INNER JOIN salaries AS s
	ON e.emp_no = s.emp_no;


/* 2. List the first name, last name, and hire date for the employees who were hired in 1986.
	from employees - first name, last name, hire date
*/
SELECT first_name, last_name, hire_date
	FROM employees
	WHERE EXTRACT (YEAR FROM hire_date) = 1986;


/* 3. List the manager of each department along with their department number, department name, 
	employee number, last name, and first name.
	from departments - dept no, dept name
	from dept manager - dept no, emp_no
	from employees - employee number, last name, first name
*/
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
	FROM departments AS d
	INNER JOIN dept_manager AS dm
	ON d.dept_no = dm.dept_no
	INNER JOIN employees AS e
	ON dm.emp_no = e.emp_no;
	

/* 4. List the department number for each employee along with that employee’s employee number, 
	last name, first name, and department name.
	from employees - employee number, last name, first name
	from dept emp - dept no, emp_no
	from departments - dept no, dept name
*/
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
	FROM employees AS e
	LEFT JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
	INNER JOIN departments AS d
	ON de.dept_no = d.dept_no;
	

/* 5. List first name, last name, and sex of each employee whose first name is Hercules and whose 
	last name begins with the letter B.
	from employees - first name, last name, sex
*/
SELECT first_name, last_name, sex
	FROM employees
	WHERE (first_name = 'Hercules') AND (last_name LIKE 'B%');


/* 6. List each employee in the Sales department, including their employee number, last name, and 
	first name.
	from employees - emp no, last name, first name,
	from dept emp -  emp_no
	from departments - dept name
*/
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
	FROM employees AS e
	INNER JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
	INNER JOIN departments AS d
	ON de.dept_no = d.dept_no
	WHERE (d.dept_name = 'Sales');


/* 7. List each employee in the Sales and Development departments, including their employee number,
	last name, first name, and department name.
	from employees - emp no, last name, first name,
	from dept emp -  emp_no
	from departments - dept name
*/
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
	FROM employees AS e
	INNER JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
	INNER JOIN departments AS d
	ON de.dept_no = d.dept_no
	WHERE (d.dept_name = 'Sales') OR (d.dept_name = 'Development');


/* 8. List the frequency counts, in descending order, of all the employee last names 
	(that is, how many employees share each last name).
*/
SELECT last_name, COUNT(last_name) AS Frequency
	FROM employees
	GROUP BY last_name
	ORDER BY Frequency DESC;
