select * from payment
select payment_mode,sum(amount) as total
from payment 
group by payment_mode
having sum(amount)>100
order by total desc

select payment_mode, count(amount) as total
from payment
group by payment_mode
having count(amount) >=2 and count(amount)<4
order by total desc

show timezone
select now()
select timeofday()
select current_time
select current_date


select extract(month from payment_date) as payment_month , payment_date
from payment 

select extract(year from payment_date) as payment_year, payment_date
from payment

select extract(day from payment_date) as payment_day, payment_date
from payment

select extract(dow from payment_date) as payment_dow, payment_date
from payment

select extract(quarter from payment_date) as payment_quarter, payment_date
from payment

create table customer(
	customer_id int primary key,
	first_name varchar(30),
	last_name varchar(30),
	email_id varchar(50),
	address_id int
	)
insert into customer(customer_id,first_name,last_name,email_id, address_id)	
values(1,'Mary','Smith','mary.smith@mailid.com',5),
      (2,'Patricia','Johnson','patricia.johnson@mailid.com',6),
	  (3,'Madan','Mohan','madan.mohan@mailid.com',7),
	  (4,'Barbara',	'Jones','barbara.jones@mailid.com',8),
	  (5,'Elizabeth','Brown','elizabeth.brown@mailid.com',9),
	  (6,'Jennifer','Davis','jennifer.davis@mailid.com',10),
	  (7,'Maria','Miller','maria.miller@mailid.com',11),
	  (8,'Susan','Wilson','susan.wilson@mailid.com',12),
	  (9,'R','Madhav','r.madhav@mailid.com',13),
	  (10,'Dorothy','Taylor','dorothy.taylor@mailid.com',14),
	  (11,'Lisa','Anderson','lisa.anderson@mailid.com',15),
	  (12,'Nancy','Thomas','nancy.thomas@mailid.com',16),
	  (13,'Karen','Jackson','karen.jackson@mailid.com',17),
	  (14,'Betty','White','betty.white@mailid.com',18),
	  (15,'Helen', 'Harris','helen.harris@mailid.com',19)
	  

select * from customer
select * from payment

select * from customer as c
inner join payment as p
on c.customer_id =p.customer_id



create table customer2(
	customer_id int primary key,
	first_name varchar(30),
	last_name varchar(30),
	address_id int
	)
insert into customer2(customer_id,first_name,last_name, address_id)	
values(1,'Mary','Smith',5),
      (3,'linda','williams',7),
	  (4,'barbara','jones',8),
	  (2,'madan','mohan',6)
	  
select * from customer2	  
	  
create table payment2(
	customer_id int primary key,
	amount integer,
	mode varchar(30),
	payment_date date
	)	
insert into payment2(customer_id,amount,mode,payment_date)	
values(1,60,'cash','2020/09/24'),
      (2,30,'credit card','2020/04/27'),
	  (8,110,'cash','2021/01/26'),
	  (10,70,'mobile_payment','2021/02/28'),
	  (11,80,'cash','2021/03/01')
	  
	  
select c.first_name,p.amount,p.mode,p.payment_date from customer2 as c
inner join payment2 as p
on c.customer_id = p.customer_id

select * from customer2 as c
left join payment2 as p
on c.customer_id = p.customer_id

select * from customer2 as c
right join payment2 as p
on c.customer_id = p.customer_id
where c.customer_id is NULL or  p.customer_id is NULL


select * from customer2 as c
full outer join payment2 as p
on c.customer_id = p.customer_id
where c.customer_id is NULL or  p.customer_id is NULL
	  
	  
create table emp(
 empid int primary key,
 empname varchar(30),
 managerid int not null	
)	
insert into emp(empid,empname,managerid)
values(1,'agni',3),
       (2,'akash',4),
	   (3,'dharthi',2),
	   (4,'vayu',3)
	
	
select t1.empname as employee_name, t2.empname as manager_name
from emp as t1
join emp as t2
on t2.empid = t1.managerid
	  












	
	


