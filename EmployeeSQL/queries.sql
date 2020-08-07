
--1. 
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries on
employees.emp_no=salaries.emp_no;

--2. 
select first_name, last_name, hire_date 
from employees 
where hire_date BETWEEN '1986-01-01' and  '1986-12-31'
order by hire_date;

--3.
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager
inner join departments on
dept_manager.dept_no=departments.dept_no
inner join employees on
dept_manager.emp_no=employees.emp_no;

--4.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees 
left join dept_emp on
employees.emp_no=dept_emp.emp_no
left join departments
on dept_emp.dept_no=departments.dept_no;

--5. 
select first_name, last_name, sex
from employees
where first_name = 'Hercules'and last_name like 'B%';

--6. 
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees 
left join dept_emp on
employees.emp_no=dept_emp.emp_no
left join departments
on dept_emp.dept_no=departments.dept_no
where departments.dept_name = 'Sales';

--7. 
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees 
left join dept_emp on
employees.emp_no=dept_emp.emp_no
left join departments
on dept_emp.dept_no=departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

--8.
select last_name, count (*) as "Freq of Name" from employees
group by last_name
order by "Freq of Name" desc;
