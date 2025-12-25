select last_name, hire_date, to_char(hire_date, 'DD Month YYYY') as "hire_date" from hr.employees;
select last_name, salary , to_char(salary, '$99,999.000') from hr.employees;
select last_name, salary , to_char(salary, 'L99,999.000') from hr.employees;
select employee_id, first_name, job_id, last_name || '-' || job_id from hr.employees;
select last_name || ' ' || 'earn monthly' || ' ' ||  salary || ' ' || 'but expect salary' || ' '|| (salary*2) || ' ' || 'after appraisal' as "appraisal salary" from hr.employees;
select employee_id, last_name, hire_date, salary , to_char(next_day(add_months(hire_date, 5), 'Monday'), 'day , "the" ddspth "of" Month , YYYY') as "review" from hr.employees;     
SELECT last_name,
       NVL2(commission_pct, commission_pct, 'No commission') AS Comm
FROM hr.employees;


