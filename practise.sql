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
    select '101', 'Shivam', 'Pathak', 23000, 123 from dual union all
    select '102', 'Harshit', 'Dubey', 25000, 125 from dual union all
    select '103', 'Nishi', 'Mishra', 35000, 127 from dual union all
    select '104', 'Sarita', 'Dueby', 80000, 189 from dual union all
    select '105', 'Madhuri', 'Dubey', 90000, 190 from dual union all
    select '106', 'Nisha', 'Kapoor', 12000, 187 from dual union all
    select '107', 'Janvi', 'Prasad', 34000, 145 from dual union all
    select '108', 'Tushar', 'Khatam', 67000, 164 from dual union all
    select '109', 'Isha', 'Thirst', 87000, 154 from dual union all
    select '110', 'Ojal', 'Pandey', 12000, 187 from dual 
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
    select '123', 'Sales', 'Mumbai', '234', from dual union ALL
    select '125', 'Marketing', 'jaipur' , '238', from dual union all
    select '127', 'Finance', 'delhi', '134' from dual union all
    select '189', 'Logistics', 'Kolkata', '234' from dual union all
    select '190', 'Sales', 'Lucknow', '159' from dual union all
    select '187', 'IT', 'Banglore', '243' from dual union all
    select '145', 'Production', 'Mumbai', '222' from dual union all
    select '164', 'IT', 'Noida' from , '213' dual union ALL
    select '154', 'Sales', 'Chandigarh', '234' from dual union all
    select '187', 'Marketing' , 'chennai', '212' from dual 
) select * from ABE;

select * from department;