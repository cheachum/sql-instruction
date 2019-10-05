
-- all matt born before 1960
select * from actor
where firstname = 'matt'
	and birthdate < '1960-01-01';
    
   -- all actors born before 1960 or after 1980 
   select * from actor
   where birthday < '1960-01-01'
   or birthday > '1979-12-31';
   
   -- and / or example 
   select * from actor 
   where firstname like 'r%'
   and (lastname = 'downey jr.')
   or lastname = 'carradine'); 
   
   
   