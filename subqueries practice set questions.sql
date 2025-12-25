
select employee_id, last_name, salary from hr.employees where salary > (select avg(salary) from hr.employees) order by salary;
select employee_id, last_name from hr.employees where department_id in (select department_id from hr.departments where last_name like '%u%');
select last_name, department_id, job_id from hr.employees where department_id in (select location_id from hr.departments where location_id=1700);
select last_name , salary from hr.employees where manager_id = (select employee_id from hr.employees where last_name= 'king');
select last_name, job_id from hr.employees where department_id = (select department_id from hr.departments where department_name='Finance');
select last_name, salary from hr.employees where salary > any(select salary from hr.employees where department_id=60);
select last_name, salary from hr.employees e where salary > (select avg(salary) from hr.employees where department_id= e.department_id);
select last_name , salary from hr.employees where salary= (select max(salary) from hr.employees);
select max(salary) from hr.employees where salary < (select max(salary) from hr.employees);
select employee_id, last_name, salary from hr.employees where salary > (select avg(salary) from hr.employees) and department_id in (select department_id from hr.employees where last_name like '%u%');
select * from hr.employees;