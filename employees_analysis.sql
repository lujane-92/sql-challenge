select e.emp_no, e.last_name, e.first_name, e.gender, s.salary 
from employees e
inner join salaries s on e.emp_no=s.emp_no;


select emp_no, last_name, first_name 
from employees
where hire_date like '%1986%';

select d.dept_no, d.dept_name, m.emp_no, m.from_date, m.to_date, e.first_name, e.last_name, s.from_date, s.to_date
from departments d
join dept_manager m on d.dept_no=m.dept_no
join employees e on e.emp_no=m.emp_no
join salaries s on m.emp_no=s.emp_no;

select p.dept_name, e.emp_no, e.last_name, e.first_name
from employees e
join dept_emp d on d.emp_no=e.emp_no
join departments p on d.dept_no=p.dept_no;

select * from employees
where first_name like 'Hercules' and last_name like 'B%';

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de on e.emp_no=de.emp_no
join departments d on d.dept_no=de.dept_no
where d.dept_name like 'Sales';


select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de on e.emp_no=de.emp_no
join departments d on d.dept_no=de.dept_no
where d.dept_name like 'Sales' or d.dept_name like 'Development';

SELECT last_name, COUNT(*) AS frequency FROM employees
group by last_name
ORDER BY "frequency" DESC;

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de on e.emp_no=de.emp_no
join departments d on d.dept_no=de.dept_no
where e.emp_no = 499942;