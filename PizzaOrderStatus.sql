use practice;
create table Customer_Order(customer_name varchar(20), order_id varchar(10), status varchar(50));
insert into customer_order values('John','J1','DELIVERED'),('John','J2','DELIVERED'),('David','D1','DELIVERED'),('David','D3',
'CREATED'),('Smith','S1','SUBMITTED'),('KRISH','K1','CREATED');
select * from customer_order;
select customer_name,
CASE
WHEN status = 'DELIVERED' THEN 'COMPLETED'
when status='CREATED' and status='DELIVERED' THEN 'IN PROGRESS'
when status='SUBMITTED' and status!='DELIVERED' THEN 'AWAITING PROGRESS'
else 'AWAITING SUBMISSION '
end as FINAL_STATUS
FROM customer_order 
group by customer_name 
order by customer_name;