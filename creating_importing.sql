-- table departmenets--
CREATE TABLE departments (
dept_no varchar(4) PRIMARY KEY NOT NULL,
dept_name varchar(30) NOT NULL
);
select * from departments
-- table title--
create table titles (
title_id VARCHAR(10) PRIMARY KEY NOT NULL,
title varchar(30) NOT NULL
);
select * from titles
--table employees--
create table employees (
emp_no int PRIMARY KEY NOT NULL,
emp_title_id VARCHAR(10) NOT NULL,
birth_date date NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
sex VARCHAR(5) NOT NULL,
hire_date DATE NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);
select * from employees

--table dept_emp--
create table dept_emp (
emp_no INT NOT NULL,
dept_no VARCHAR(10) NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
select * from dept_emp
--table dept_manager--
create table dept_manager (
dept_no VARCHAR(10) NOT NULL,
emp_no INT NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
select * from dept_manager
--table saalaris--
create table salaries (
emp_no INT NOT NULL,
salary INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
select * from salariese