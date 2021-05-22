create table dept_emp(
	emp_no int not null,
	dept_no varchar(20),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
