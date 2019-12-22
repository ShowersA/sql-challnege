----List the following details of each employee: employee number, last name, first name, gender, and salary.
-- select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
-- from employees
-- INNER join salaries on
-- employees.emp_no=salaries.emp_no;

----List employees who were hired in 1986.
-- select *
-- from employees
-- 	where hire_date between '1985-12-31' and '1987-01-01';

----List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.	
-- Select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name, dept_manager.from_date, dept_manager.to_date
-- from dept_manager
-- JOIN departments
-- ON dept_manager.dept_no = departments.dept_no
-- JOIN employees
-- ON dept_manager.emp_no = employees.emp_no;

----List the department of each employee with the following information: employee number, last name, first name, and department name.
-- Select departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name
-- From departments
-- Join dept_emp
-- On departments.dept_no = dept_emp.dept_no
-- Join employees
-- On dept_emp.emp_no = employees.emp_no;

----List all employees whose first name is "Hercules" and last names begin with "B."
-- Select *
-- From employees
-- Where first_name = 'Hercules'
-- And last_name like 'B%';

----*List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- Select dept_emp.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no
-- From dept_emp
-- Join employees
-- On dept_emp.emp_no = employees.emp_no
-- Where dept_no = 'd007'

----List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- Select departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name
-- from departments
-- Join dept_emp
-- On departments.dept_no = dept_emp.dept_no
-- Join employees
-- On employees.emp_no = dept_emp.emp_no
-- where dept_name = 'Development' 
-- Or dept_name = 'Sales';

----In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
-- Select employees.last_name, Count(last_name)
-- From employees
-- Group by last_name
-- Order by Count(last_name)Desc;

