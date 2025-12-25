select employee_id, first_name, last_name, initcap(last_name) as "Updated last name" , length(last_name) as "updated" from employees;
select employee_id, first_name, last_name from hr.employees where first_name like 'J%' or first_name like 'R%';
select last_name,first_name , Upper(last_name) from hr.employees where last_name like 'T%';
select last_name from hr.employees where last_name= '&smith';
select initcap(last_name) from hr.employees where last_name like '&letter%';
SELECT employee_id,
       first_name,
       last_name
FROM hr.employees
WHERE initcap(last_name) LIKE initcap('&letter%');
select employee_id, hire_date, Trunc(Months_between(sysdate, hire_date)) from hr.employees order by hire_date ASC;
select employee_id, first_name, last_name, salary, rpad(salary,10,'*') from hr.employees order by salary DESC;
-- select employee_id, first_name, last_name, salary, rpad('&', length(salary), '*') from hr.employees;
select employee_id, first_name, last_name , department_id, (sysdate - hire_date)/7 as "weeks worked" from hr.employees where department_id = 90 order by 5 DESC;
select last_name, hire_date from hr.employees where months_between(sysdate,hire_date)>24;
select  distinct length(first_name) as name_length from hr.employees;
select last_name from hr.employees where last_name like '______';


