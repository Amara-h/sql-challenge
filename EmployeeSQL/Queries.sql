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

-- 3) 




