
-- select all student 
select * from student; 

-- select all course
select * from course;

-- select students with no middle name 
select * from student
where middleinitial is null;

-- select students from OH
select* from student 
where state = 'OH';

-- how many students per state?
select state, count(*)
from student
group by state; 

-- students birthday in order descending 
select * from student 
order by birthday desc;

select * from student
order by birthday;

-- select youngest student 
select max( birthday ) 
from student; 

-- select oldest birthday student 
select * from student s
where s.birthday = (select min(birthday) from student);

-- age of oldest student
select birthday, year(birthday), curdate(), year(curdate()),
(year(curdate()) - year(birthday)) as age
	from student 
    order by age;
    

-- select youngest birthday student 
select * from student s 
where s.birthday = (select max(birthday) from student);

-- how many social studies courses
select * from course
where subject = 'social study';


-- how many math courses?
select * from course
where subject = 'math' ; 

-- inner join all 3 







 




