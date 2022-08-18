--List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, last_name, first_name, sex, salary
from employees as e join salaries as s
on e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date from employees
where extract(year from hire_date)=1986; 

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
select d.dept_no, dept_name, e.emp_no, last_name, first_name
from employees as e join dept_manager as m 
on e.emp_no = m.emp_no
join departments d 
on m.dept_no = d.dept_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select e.emp_no, last_name, first_name, dept_name
from employees as e join dept_emp as de
on e.emp_no = de.emp_no
join departments as d 
on de.dept_no = d.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, last_name, first_name, dept_name
from employees as e join dept_emp as de
on e.emp_no = de.emp_no
join departments as d on de.dept_no = d.dept_no
where dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, last_name, first_name, dept_name
from employees as e join dept_emp as de
on e.emp_no = de.emp_no
join departments as d on de.dept_no = d.dept_no
where dept_name in ('Sales','Development');

--List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
select last_name, count(last_name) as "Count Last Name"
from employees
group by last_name
order by "Count Last Name" desc;



