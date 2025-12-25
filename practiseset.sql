select e.last_name, e.salary, d.department_id, d.department_name from hr.employees e left join hr.departments d on e.department_id= d.department_id where department_name='Finance';
select e.last_name, e.job_id, d.department_id, d.department_name, l.city from hr.employees e left join hr.departments d on d.department_id=e.department_id join hr.locations l on l.location_id= d.location_id where city= 'Toronto';
select e.last_name,e.salary,  m.last_name, m.salary from hr.employees e left join hr.employees m on e.manager_id= m.employee_id;
SELECT e.last_name AS Employee,
       m.last_name AS Manager
FROM hr.employees e
JOIN hr.employees m
ON e.manager_id = m.employee_id;
SELECT employee_id, last_name, manager_id 
FROM hr.employees;

SELECT employee_id, last_name 
FROM hr.employees
WHERE employee_id IN (SELECT DISTINCT manager_id 
                      FROM employees WHERE manager_id IS NOT NULL);

select * from hr.employees;

SELECT DISTINCT manager_id FROM hr.employees;
