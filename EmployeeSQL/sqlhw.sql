--List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date from employees
Where hire_date between '1986-01-01' and '1986-12-31'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
--join dept_manager and employee, and departments and dept_manager

Select departments.dept_name, dept_manager.emp_no, dept_manager.dept_no, employees.last_name, employees.first_name
From employees
Join dept_manager 
On dept_manager.emp_no=employees.emp_no
Join departments
On departments.dept_no=dept_manager.dept_no

--List the department of each employee with the following information: employee number, last name, first name, and department name.
--join dept_employee and employee table, and join and departments with dept_emp 

Select departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name
From employees
Left Join dept_emp
On dept_emp.emp_no=employees.emp_no
Join departments
On departments.dept_no=dept_emp.dept_no

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
--use employee and first_name and use LIKE

 Select employees.sex, employees.last_name, employees.first_name
 From employees
 Where first_name = 'Hercules'
 AND last_name LIKE 'B%';
 

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

Select departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name
From employees
Left Join dept_emp
On dept_emp.emp_no=employees.emp_no
Join departments
On departments.dept_no=dept_emp.dept_no
Where dept_name = 'Sales'


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name
From employees
Left Join dept_emp
On dept_emp.emp_no=employees.emp_no
Join departments
On departments.dept_no=dept_emp.dept_no
Where dept_name = 'Sales'
OR dept_name = 'Development'


--List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
--use count and as frequency to find, use group by for last name, use desc for descending order 

Select employees.last_name,count(last_name) as Frequency 
from employees 
group by last_name
order by frequency desc;
