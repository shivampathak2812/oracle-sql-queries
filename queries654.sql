create table employees(
    employee_id numeric(6),
    first_name varchar2(45),
    last_name varchar2(45),
    salary numeric(10),
    department_id numeric(10),
    CONSTRAINT employee_id_pk primary key(employee_id)
);

insert into employees(employee_id, first_name, last_name,salary, department_id)
with ABC as(
    select 101, 'Shivam', 'Pathak', 23000, 123 from dual union all
    select 102, 'Harshit', 'Dubey', 25000, 125 from dual union all
    select 103, 'Nishi', 'Mishra', 35000, 127  from dual 
) select * from ABC;
select * from employees;

create table department(
    department_id numeric(6),
    department_name varchar(45),
    city varchar(45),
    employee_id numeric(10),
    CONSTRAINT department_id_pk primary key(department_id),
    FOREIGN key(employee_id) references employees(employee_id)
);

insert into department(department_id, department_name, city, employee_id)
with ABE as(
    select 123, 'Sales', 'Mumbai', 101 from dual union ALL
    select 125, 'Marketing', 'jaipur' , 102 from dual union all
    select 127, 'Finance', 'delhi', 103 from dual
) select * from ABE;

select * from department;

select constraint_name, constraint_type, table_name from user_constraints where table_name='EMPLOYEES';



create table person2(
    student_id number(3),
    first_name varchar(50),
    last_name varchar(50),
    age number(10),
    salary number(10,2) check(salary>500));

alter table person2
add CONSTRAINT student_id_pk primary key(student_id);

select constraint_name, constraint_type , table_name from user_constraintS where table_name='PERSON2';

create table students(
    stud_id numeric(5),
    first_name varchar2(50),
    last_name varchar2(25),
    postal_code numeric(10)
);

alter table students add course_id numeric(10);
alter table students modify (course_id not null);
alter table students add mobile_number numeric(10);
alter table students modify mobile_number numeric(15);
alter table students drop (postal_code);

alter table person2 rename CONSTRAINT SYS_C003529697 to t_pk;
alter table person2 drop constraint t_pk;
select * from user_constraints;
