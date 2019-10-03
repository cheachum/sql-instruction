drop database if exists stuffy_db;
create database stuffy_db;
use stuffy_db;

create table stuffy (
	id 				int 			not null primary key auto_increment,
	type 			varchar(255) 	not null,
	color			varchar(20) 	not null,
	size			varchar(2) 		not null,
	limbs			int				not null
    );
    
    insert into stuffy (id, type, color, size, limbs) values
	(1, 'catdog', 'tan', 's', '4'),
	(2, 'unicorn', 'pink', 'l', '4'),
	(3, 'worm', 'nude', 's', '1'),
    (4, 'alien', 'grey', 'm', '5'),
    (5, 'bat', 'black', 's','2'),
    (6, 'butterfly', 'purple', 's', '1'),
    (7, 'horse', 'brown', 'm', '4'),
    (8, 'squirrel', 'brown', 's', '4'),
    (9, 'tiger', 'white', 'l', '4'),
    (10, 'penguin', 'blackwhite', 's', '4');
    
    