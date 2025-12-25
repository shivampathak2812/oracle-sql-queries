select department_id, job_id, max(salary) from hr.employees group by department_id, job_id; 
select job_id, count(job_id) from hr.employees group by job_id order by job_id desc;
select job_id , avg(salary), min(salary) from hr.employees group by job_id; 
select max(avg(salary)) from hr.employees group by department_id;
select department_id, avg(salary) from hr.employees group by department_id;
select avg("average salary") from (select avg(salary) as "average salary" from hr.employees group by department_id);
select employee_id, first_name, last_name, job_id, department_name from hr.employees natural join hr.departments;