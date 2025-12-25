select constraint_name, constraint_type , table_name from user_constraints where table_name='DEPARTMENT';

create table orders(
    order_id numeric(10),
    order_name varchar2(50),
    customer_name varchar2(50),
    order_amount numeric(10),
    customer_id numeric(10)
);

alter table orders add CONSTRAINT order_id_pk primary key(order_id);

select constraint_name, constraint_type, table_name from user_constraints where table_name='ORDERS';

alter table orders add mobile_number_customer numeric(10);
select * from orders;
alter table orders drop (order_amount);

