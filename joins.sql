select employee_id, last_name, location_id, department_id from hr.employees join hr.departments using(department_id);
select e.first_name, e.last_name, e.salary, d.department_name, d.department_id, d.manager_id from hr.employees e join hr.departments d on (e.department_id= d.department_id);
select e.first_name, e.last_name, e.salary, d.department_name, d.department_id, l.location_id, l.city from hr.employees e join hr.departments d on (d.department_id= e.department_id) join hr.locations l on (d.location_id= l.location_id);
select e.first_name, e.last_name, e.salary, d.department_name, d.department_id, l.location_id, l.city from hr.employees e join hr.departments d using(department_id) join hr.locations l using(location_id);
select e.first_name, e.last_name, e.salary, d.department_name, d.department_id, d.manager_id from hr.employees e join hr.departments d on (e.department_id= d.department_id) or e.manager_id=149;
select * from hr.;
select e.last_name emp , m.last_name mgr from hr.employees e join hr.employees m on (e.manager_id=m.employee_id);
select e.last_name, e.salary, j.grade_level from hr.employees e join job_grade j on e.salary between j.lowest_sal and j.highest_sal;
select d.department_id, d.department_name, l.city from hr.departments d, hr.locations l where l.location_id between 1800 and 2500 and d.department_id<30;


create table demo_table01 (customer_id  number(3), first_name varchar2(25));

INSERT INTO demo_table01 (customer_id, first_name) 
  WITH names AS ( 
    SELECT 01, 'Ashish'  FROM dual UNION ALL 
    SELECT 02, 'Prakash' FROM dual UNION ALL 
    SELECT 03, 'Santosh' FROM dual UNION ALL 
 SELECT 04, 'Yogesh' FROM dual 
 
  ) 
  SELECT * FROM names;

select * from demo_table01;


create table demo_table02 (order_id number(3), amount number(12));

INSERT INTO demo_table02 (order_id, amount) 
  WITH names AS ( 
    SELECT 01, 12000 FROM dual UNION ALL 
    SELECT 02, 7500 FROM dual UNION ALL 
    SELECT 05, 8800  FROM dual UNION ALL 
 SELECT 06, 14500 FROM dual 
 
  ) 
  SELECT * FROM names;

select * from demo_table02;