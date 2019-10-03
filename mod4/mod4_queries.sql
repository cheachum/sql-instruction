-- select all columns, all rows
select * from customer
 where state = 'OH' ;
 
 select * from customer
 where state = 'OH'
 order by name desc; -- ' desc' returns in descending order 
 

 -- select name and credit limit columns, all rows
 select name 'Name' , creditLimit as 'Credit Limit'
 from customer; 
 
  -- select name and credit limit columns, all rows, using table alias
 select c.name 'Name' , c.creditLimit as 'Credit Limit'
 from customer c; 
 
 select customer.name 
 from customer; 
 
 -- join view - all columns
 select * 
 from customer
 join orders
	on customer.id = orders.customerID;
    
     -- join view - report format - customer name, 
     -- 						order date, total 
 select  c.name as 'Customer Name' , 
 DATE_FORMAT (o.date, "%M %d %Y") as 'Order Date',
 concat( '$', o.total) as 'Order Total'
 from orders o
 join customer c
	on c.id = customerID 
    order by c.name;
    
         -- join view - report format, subselect
 select  c.name as 'Customer Name' , 
 DATE_FORMAT (o.date, "%M %d %Y") as 'Order Date',
 concat( '$', o.total) as 'Order Total'
 from orders o
 join customer c
	on c.id = customerID 
    where o.total > (
		SELECT avg(total) from orders
        )
    order by c.name;
    
    -- get the average order total 
    select avg(total)
    from orders; 
    
    -- get the sum of all orders
    select sum(total)
    from orders;
    
    
    -- get the sum of all orders by customer 
    select customerId, sum(total)
    from orders
    group by customerId;
    
    -- customer name order total table 
    select o.customerID 'ID' , 
    c.name 'Cust. Name' , 
    sum(o.total) 'Order Total'
    from orders o 
    join customer c
    on o.customerID = c.id 
    group by customerID
    order by c.name; 
    
    -- count function 
    select count(*)
    from orders;
    
    -- max, min function 
    select min(total) from orders; 
    
    -- select a row by id
    select * from customer
    where id = 5;
    
    -- insert a new customer 
Insert into customer (name, city, state, isCorpAcct, creditLimit)
values ('Dummy', 'Dummy', 'DY', 0, 5000);
    
select * from customer;
insert into customer 
values ('Dummy2', 'Dummy', 'DY', 0, 5000, 1);
    
-- 3rd way to insert customer multple rows
insert into customer (name, city, state, isCorpAcct, creditLimit)
values
	('Dummy3' , 'Dummy', 'DY', 0, 55555.55),
    ('Dummy4' , 'Dummy', 'DY', 0, 55555.55),
    ('Dummy5', 'Dummy', 'DY', 0, 55555.55);  
    
    -- update statement
    update customer 
    set name = 'Dummy1'
    where id = 8;
    
    -- delete 3 records 
   delete 
    from customer
     where id in (11, 12, 14);
     
delete from customer 
 where id > 7;

-- get the sum of all orders by customer having clause
select customerId, sum(total) as ordertotal
from orders
group by customerId
having ordertotal > 1000;
