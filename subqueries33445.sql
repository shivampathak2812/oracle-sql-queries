select first_name, last_name, job_id, department_id, salary from hr.employees where (salary, department_id) in (select min(salary), department_id from hr.employees group by department_id) order by salary;
select last_name, salary, department_id from hr.employees outer_table where salary > (select avg(salary) from hr.employees inner_table where inner_table.department_id= outer_table.department_id);

select department_name, department_id from hr.departments d where exists
(select * from hr.employees e where d.department_id=e.department_id) order by department_id;


select department_name, department_id from hr.departments d where not exists
(select * from hr.employees e where d.department_id=e.department_id) order by department_id;

-- ddl dml subquereis, crud, join , aggrgate

create table demo_table01 (aroll_no number(3), aName varchar2(25));

INSERT INTO demo_table01 (aroll_no, aName) 
  WITH names AS ( 
    SELECT 01, 'Ashish'  FROM dual UNION ALL 
    SELECT 02, 'Abhijit'   FROM dual UNION ALL 
    SELECT 03, 'Santosh'  FROM dual UNION ALL 

 SELECT 08, 'Rakesh'  FROM dual UNION ALL 
    SELECT 09, 'Nikhil'    FROM dual 
  ) 
  SELECT * FROM names;

select * from demo_table01;


create table demo_table03 as select * from demo_table01;

create table demo_table02 (broll_no number(3), bName varchar2(25));
INSERT INTO demo_table02 (broll_no, bName) 
  WITH names AS ( 
    SELECT 01, 'Sachin'  FROM dual UNION ALL 
    SELECT 02, 'Abhijit'   FROM dual UNION ALL 
    SELECT 03, 'Yogesh'  FROM dual UNION ALL 
 SELECT 05, 'Ashish'  FROM dual UNION ALL 
    SELECT 06, 'Amit'    FROM dual 
  ) 
  SELECT * FROM names;

  select * from demo_table02;

  drop table demo_table01;
  drop table demo_table02;

select aroll_no, aname from demo_table01 union select broll_no, bname from demo_table02;

select aroll_no, aname from demo_table01 intersect select broll_no, bname from demo_table02;

select aroll_no, aname from demo_table01 minus select broll_no, bname from demo_table02;

desc demo_table01;\

select loaction_id, department_name as "department", to_char(null) "warehouse location" from hr.departments 
union 
select location_id, to_char(null) as "department" state_province from hr.locations;