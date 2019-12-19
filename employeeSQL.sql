----List the following details of each employee: employee number, last name, first name, gender, and salary.
select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
from employees
INNER join salaries on
employees.emp_no=salaries.emp_no;

----List employees who were hired in 1986.
select *
from employees
	where hire_date between '1985-12-31' and '1987-01-01';
----List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.	
Select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name, dept_manager.from_date, dept_manager.to_date
from dept_manager
JOIN departments
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;
