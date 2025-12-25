select avg(salary) as "average" , min(salary) as "minimum", max(salary) as "maximim" from hr.employees;
select max(hire_date), min(hire_date) from hr.employees;
select count(*) from hr.employees where department_id=90;
select count(commission_pct) from hr.employees;
select count(commission_pct) from hr.employees where department_id=90;
select count(distinct job_id) from hr.employees;
select avg(nvl(commission_pct, 0)) from hr.employees;
select avg(commission_pct) from hr.employees;
