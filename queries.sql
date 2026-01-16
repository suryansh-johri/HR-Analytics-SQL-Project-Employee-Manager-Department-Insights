USE hr;
select count(*) from employees;
select count(*) from departments;
select count(*) from jobs;

-- Show each employee’s name along with their manager’s name (if any)
select CONCAT(t2.first_name, ' ', t2.last_name) as employee_name , CONCAT(t1.first_name, ' ', t1.last_name) AS manager_name from employees as t1 right join employees as t2
on t1.employee_id = t2.manager_id;

-- List all employees along with their department names.
select  CONCAT(first_name, ' ', last_name) as employee_name , department_name from employees as e, departments as d where e.department_id= d.department_id

-- Show all departments, even those that currently have no employees assigned.
select * from departments;

select 
  department_name , concat(first_name, ' ',last_name) as employee_name 
from departments as d
left join employees as e
on d.department_id = e.department_id;

-- Display employee names and their job titles.
select concat(first_name,' ',last_name) as employee_name,job_title from employees as e
inner join jobs as j
on e.job_id=j.job_id;

-- Show employee names in uppercase for official directory formatting
select upper(concat(first_name,' ',last_name)) as employee_name from employees ;

-- Extract the year each employee was hired
select concat(first_name,' ',last_name) as employee_name,year(hire_date) as hire_year from employees;

-- Create a single list of employee names from the IT and HR departments.
SELECT concat(first_name,' ',last_name) as employee_name, 'IT' AS department FROM employees where department_id=10
UNION
SELECT concat(first_name,' ',last_name) as employee_name, 'HR' AS department FROM employees where department_id=20;

-- Alternative approach using JOIN
SELECT DISTINCT
  CONCAT(e.first_name,' ',e.last_name) AS employee_name
FROM employees e
INNER JOIN departments d
  ON e.department_id = d.department_id
WHERE d.department_name IN ('HR','IT');

-- List all Sales department employees twice for payroll audit simulation.
select 
  CONCAT(e.first_name,' ',e.last_name) AS employee_name 
from employees as e
inner join departments as d
on e.department_id = d.department_id
where department_name = 'sales'
union all 
select 
  CONCAT(e.first_name,' ',e.last_name) AS employee_name 
from employees as e
inner join departments as d
on e.department_id = d.department_id
where department_name = 'Sales'
order by employee_name ;

-- Identify employees who do not report to anyone
select CONCAT(first_name,' ',last_name) AS employee_name from employees where manager_id is null;

-- Show employee names along with the length of each name
select CONCAT(first_name,' ',last_name) AS employee_name, length(CONCAT(first_name,' ',last_name)) as length_name  from employees;
 