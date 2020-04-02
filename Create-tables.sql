create table employees (
	emp_no int not null,
	birth_date varchar(15),
	first_name varchar(20),
	last_name varchar(20),
	gender varchar(1),
	hire_date varchar(15),
	primary key (emp_no)
);

create table departments (
	dept_no varchar(15),
	dept_name varchar(50),
	primary key (dept_no)
);


create table dept_emp (
	emp_no int,
	dept_no varchar(15),
	from_date varchar(15),
	to_date varchar(15),
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

create table dept_manager (
	dept_no varchar(15),
	emp_no int,
	from_date varchar(15),
	to_date varchar(15),
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);


create table titles (
	emp_no int,
	title varchar(30),
	from_date varchar(15),
	to_date varchar(15),
	foreign key (emp_no) references employees(emp_no)
);

create table salaries (
	emp_no int,
	salary int,
	from_date varchar(15),
	to_date varchar(15),
	foreign key (emp_no) references employees(emp_no)
);

Select *
from departments;

Select *
from dept_emp;

Select *
from dept_manager;

Select *
from employees;

Select *
from salaries;

Select *
from titles;
