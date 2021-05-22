create table employees(
	emp_no int primary key not null,
	emp_title varchar(20),
	birth_date date,
	first_name varchar(20),
	last_name varchar(20),
	sex varchar(20),
	hire_date date 
);

create table departments(
	dept_no varchar primary key not null,
	dept_name varchar (20)
);	

create table dept_emp(
	emp_no int,
	dept_no varchar(30) primary key,
	foreign key (emp_no) references employees(emp_no)
);

create table dept_manager(
	emp_no int,
	dept_no varchar(30),
	primary key (dept_no)
);

create table titles(
	title_id varchar(20) primary key,
	title varchar(20)
);

create table salaries(
	emp_no int,
	salary money,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

