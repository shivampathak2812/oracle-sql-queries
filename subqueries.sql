select last_name, job_id, salary from hr.employees where job_id=
(select job_id from hr.employees where last_name='Abel')
 and salary> (select salary from hr.employees where last_name='Abel');

 select last_name, job_id, salary from hr.employees where salary=(select min(salary) from hr.employees);


-- to find second highest salary
select max(salary) from hr.employees where salary < (select max(salary) from hr.employees);  

select last_name, job_id, salary from hr.employees where salary=
(select max(salary) from hr.employees where salary < (select max(salary) from hr.employees));

select * from hr.employees where department_id in (select department_id from hr.departments where department_name='Sales' or department_name='Accounting');

select employee_id, last_name from hr.employees group by department_id = (select min(salary)from hr.employees);

select last_name, department_id, min(salary) 
from hr.employees 
group by department_id, last_name
 having min(salary) > (select min(salary) from hr.employees where department_id=30);


select employee_id, last_name, job_id, salary 
from hr.employees 
where salary < ANY
(select salary from hr.employees where job_id='IT_PROG') ;


select employee_id, last_name, job_id, salary 
from hr.employees 
where salary < ALL
(select salary from hr.employees where job_id='PU_CLERK') ;

Select e1.employee_id, e1.salary, e1.last_name from hr.employees e1 where e1.salary > all (select e2.salary from hr.employees e2 where e2.department_id=20);

select * from hr.employees where (manager_id, department_id) in (select manager_id, department_id from hr.employees where employee_id=172);

select last_name, department_id , min(salary) from hr.employees group by department_id, last_name < (select min(salary) from hr.employees);

SELECT department_id, MIN(salary)
FROM employees
GROUP BY department_id;

select last_name, department_id from hr.employees where department_id