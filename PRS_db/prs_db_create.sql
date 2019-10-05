drop database if exists prs;
create database prs;
use prs;

create table user (
	id 				int 			not null primary key,
	username 		varchar(20) 	not null,
	password 		varchar(10) 	not null,
	firstname		varchar(20) 	not null,
	lastname 		varchar(20) 	not null,
	phonenumber		varchar(20)		not null,
	email 			varchar(75)		not null,
    isReviewer		tinyint		not null,
    isAdmin			tinyint		not null,
    CONSTRAINT uname	 unique (username)
);

  insert into user (id, username, password, firstname, lastname, phonenumber, email, isReviewer, isAdmin) values
	(1, 'milliepuppin', 'tatertot', 'millie', 'oestreicher', '6125556666','milliepuppin@gmail', '1', '0'),
	(2, 'osizzle', 'pillow', 'david', 'oestreicher', '5136669999','davidoestreicher@gmail', '1', '1');

 create table vendor (
    id				int				not null primary key, 
    code			varchar(10)		not null, 
    name 			varchar(255)	not null, 
    address			varchar(255)	not null, 
    city 			varchar(255)	not null, 
    state			varchar(2)		not null, 
    zip				varchar(5)		not null, 
    phoneNumber		varchar(12)		not null, 
    email			varchar(100)	not null

    );
    
	insert into vendor (id, code, name, address, city, state, zip, phoneNumber, email) values
	(1, 'a101', 'actionstreamer', '2900readingrd', 'cincinnati', 'oh', '45206', '5135555555', 'astream@cincytech');


create table request (
	id 				int 			not null primary key,
	userid 		int			 	not null,
	description 	varchar(100) 	not null,
	justification	varchar(255) 	not null,
	dateneeded 		date		 	not null,
	deliverymode	varchar(25)		not null,
	status 			varchar(20)		not null,
    total			decimal(10,2)	not null,
    reasonForRejection	varchar(100) 	null,
    FOREIGN KEY (userID) REFERENCES user(id)
	
);

create table product (
	id				int				not null primary key,
    vendorID		int				not null, 
    partNumber		varchar(50)		not null, 
    name			varchar(150)	not null, 
    price			decimal(10,2)	not null, 
    unit			varchar(255)	null,
    photoPath		varchar(255)	null,
    FOREIGN KEY (vendorID) REFERENCES vendor(id),
	CONSTRAINT vendor_part unique (vendorID, partNumber)
    );
    
	insert into product (id, vendorid, partnumber, name, price, unit, photopath) values
	(1, 1, 'a22', 'camera', '99.99', 'null', 'null'),
    (2, 1, 'c22', 'book', '10.2', 'null', 'null'); 
    

create table lineItem (
	id 				int				not null primary key,
    requestID		int				not null,
    productID		int				not null,
    quantity		int				not null,
    FOREIGN KEY (productID) REFERENCES request(id),
    FOREIGN KEY (requestID) REFERENCES product(id),
	CONSTRAINT req_pdt unique (requestID, productID)
    ); 
    
DROP USER IF EXISTS bmdb_user@localhost;
CREATE USER bmdb_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON bmdb.* TO bmdb_user@localhost;

