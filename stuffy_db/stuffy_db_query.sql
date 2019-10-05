select * from stuffy;

-- how many stuffies 
select count(*)
	from stuffy;
    
-- How many red stuffies?
 select count(*) from stuffy
where color = 'red';

 
-- How many stuffies per color?
 select color, count(*)
 from stuffy
 group by color;

-- How many total limbs?
select limbs, count(*)
from stuffy 
group by limbs;

-- What stuffy has the most limbs?
select * from stuffy s 
where s.limbs = (select max(limbs) from stuffy);

-- what stuffy has the least limbs?
select * from stuffy s 
where s.limbs = (select min(limbs) from stuffy);

-- add a 'dummy' stuffy
 insert into stuffy (id, type, color, size, limbs)
 values(11, 'dummy', 'green', 'l', '4');

 
 -- update that new record 
 update stuffy 
 set 
    type = 'dummy',
    color = 'green',
    size = 'l',
    limbs = '4'
    where ;
    
-- delete that record 
delete from stuffy 
where id = 11;
 
 



