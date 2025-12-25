create table courses(
course_id numeric(6),
course_name varchar2(45),
stud_id numeric(6),
constraint course_id_pk primary key(course_id));


INSERT INTO courses (course_id, course_name, stud_id) 
  WITH ABC AS ( 
    SELECT 10, 'java 01', 1001 FROM dual UNION ALL 
    SELECT 11, 'sql',  1002   FROM dual UNION ALL 
    SELECT 12, 'mongo db',  1003  FROM dual UNION ALL 
    SELECT 13, 'java 02',  1004   FROM dual 
  )
  Select * from ABC;
select * from courses;

--   insert all
-- into courses(course_id, course_name, stud_id) values
-- (101110, 'java 01', 1001 )
-- into courses(course_id, course_name, stud_id) values
-- (101111, 'sql',  1002 )
-- into courses(course_id, course_name, stud_id) values
-- (101112, 'mongo db',  1003 )
-- into courses(course_id, course_name, stud_id) values
-- (101113, 'java 02',  1004 )
-- select * from dual;
 desc courses;
select * from courses;
create table students(
stud_id numeric(10) ,
First_Name varchar2(25),
Last_Name varchar2(25),
course_id numeric(10) ,
constraint stud_id_pk primary key(stud_id),
FOREIGN KEY(course_id) REFERENCES courses(course_id) ON DELETE SET NULL);
desc students;

INSERT INTO students (stud_id, First_Name, Last_Name, course_id) 
  WITH names AS ( 
    SELECT 01, 'Ashish', 'abc', 10  FROM dual UNION ALL 
    SELECT 02, 'Prakash', 'pqr', 10   FROM dual UNION ALL 
    SELECT 03, 'Santosh', 'abc', 12   FROM dual UNION ALL 
    SELECT 04, 'Amit', 'xyz', 13 FROM dual 
  ) 
  SELECT * FROM names;

  delete students;

  drop table students;


  desc students;

  select constraint_name, constraint_type, table_name from user_constraints where table_name='STUDENTS';