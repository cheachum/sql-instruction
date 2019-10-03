
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
select firstname, lastname, 
	(year(curdate()) - year(birthday)) as age
		from student
        where birthday = (select min(birthday) from student); 

-- select youngest birthday student 
select * from student s 
where s.birthday = (select max(birthday) from student);

-- how many social studies courses in numbers - count(*)
select count(*) from course
where subject = 'socialstudies';

-- how many math courses in numbers - count(*)
select count(*) from course
where subject = 'math' ; 

-- list all subjects starting with the letter 'm' -- add 'like' clause 
select* from course 
where subject like 'm%';

-- 3 inner join - show all students enrolled in courses 
select * 
from student s 
join enrolled e 
	on e.studentid = s.id
    join course c 
    on e.courseid =c.id;
    
    -- 2 table outer join- all students plus enrollments 
    select s.id, firstname, lastname, e.studentid, e.courseid, e.grade, c.name
    from student s
	left outer join enrolled e 
    on e.studentid = s.id
    left join course c 
    on e.courseid = c.id;







 




