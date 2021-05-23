-- 1) List the following details of each employee: employee number, last name, first name, sex, and salary.

select e.emp_no, 
	e.last_name, 
	e.first_name,
	e.sex, 
	s.salary
from employees as e
left join salaries as s
on e.emp_no = s.emp_no;

-- 2) List first name, last name, and hire date for employees who were hired in 1986

select first_name,
	last_name, 
	hire_date
from employees
where hire_date between '1986/1/1' and '1986/12/31';

-- 3) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select d.dept_no,
	d.dept_name, 
	dm.emp_no, 
	e.last_name, 
	e.first_name
from departments as d
left join dept_manager as dm
on dm.dept_no = d.dept_no
left join employees as e
on dm.emp_no = e.emp_no;


--4) List the department of each employee with the following information: employee number, last name, first name, and department name.

select e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name
from dept_emp as de
left join departments as d
on de.dept_no = d.dept_no
left join employees as e
on de.emp_no = e.emp_no	;

	
	




