
drop database if exists bmdb;
create database bmdb;
use bmdb;

create table Movie (
	id 				int 			not null primary key auto_increment,
	title			varchar(100) 	not null unique,
	rating 			varchar(5) 		not null,
	year			int 			not null,
	director 		varchar(50)		not null
);

create table Actor (
	id 				int 				not null primary key auto_increment,
	firstName 		varchar(25)			not null,
	lastName		varchar(25) 		not null,
	gender			varchar(6) 			not null,
    birthDate 		date				not null

);

create table credits (
	id				int				primary key auto_increment, 
    actorID			int				not null, 
    movieID			int				not null, 
    role			varchar(255)	not null,
    
    foreign key (actorID) references actor(id),
    foreign key (movieID) references Movie(ID),
	constraint act_mov unique (actorID, movieID)
);

Insert into Movie (id, title, rating, year, director)
values (1, 'Martian', 'pg', '2015', 'ridleyScott');
Insert into Movie (id, title, rating, year, director)
values (2, 'Down Sizing', 'r', '2017', 'alexanderPayne');
Insert into Movie (id, title, rating, year, director)
values (3, 'US', 'r', '2019',' jordanPeele');

Insert into Actor (id, firstName, lastName, gender, birthDate)
values (1, 'matt', 'damon', 'male', '1970-08-09');
Insert into Actor (id, firstName, lastName, gender, birthDate)
values (2, 'jessica', 'chastain', 'female', '1977-03-24');
Insert into Actor (id, firstName, lastName, gender, birthDate)
values (3, 'jeff', 'daniels', 'male', '1955-02-02');

insert into credits (actorID, movieID, role)
values (1, 2, 'astronaunt'); 
insert into credits (actorID, movieID, role)
values (1,3, 'hello');
insert into credits (actorID, movieID, role)
values (3,2, 'dogowner');

-- DROP USER IF EXISTS bmdb_user@localhost;
-- CREATE USER bmdb_user@localhost IDENTIFIED BY 'sesame';
-- GRANT SELECT, INSERT, DELETE, UPDATE ON bmdb.* TO bmdb_user@localhost;
