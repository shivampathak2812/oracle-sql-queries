select max(salary) as "maximum" , min(salary) as "minimum" , sum(salary) as "sum", avg(salary) as"average" from hr.employees;
select count(*) from hr.employees;
select job_id, max(salary) as "maximum", min(salary) as "minimum" , sum(salary) as "sum", avg(salary) as "average" from hr.employees group by job_id;
select job_id, count(*) from hr.employees group by job_id;
select manager_id, count(*)  from hr.employees group by manager_id;
select max(salary) as "maximum", min(salary) as"minimum" , (max(salary) - min(salary)) as "diff" from hr.employees;
select department_id, count(*) from hr.employees group by department_id;
select department_id, count(*) from hr.employees group by department_id having count(*)>7;
select manager_id, min(salary) from hr.employees where manager_id is not null group by manager_id;
select manager_id, min(salary) from hr.employees where manager_id is not null group by manager_id;
select manager_id, min(salary) from hr.employees group by manager_id having min(salary)<6000 order by min(salary) desc;
select department_id, max(avg(salary)) from hr.employees group by department_id;
select max(avg_salary) as "max_avg_salary" from (select department_id, avg(salary) as "avg_salary" from hr.employees group by department_id);
SELECT MAX(avg_salary) AS max_avg_salary
FROM (
  SELECT department_id, AVG(salary) AS avg_salary
  FROM hr.employees
  GROUP BY department_id
);
