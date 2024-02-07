create database if not exists gfg;
create table if not exists gfg.cust(
uid int primary key unique  auto_increment ,
name varchar (255) not null  ,
email varchar(255) unique);
create table if not exists gfg.item (
oid int primary key auto_increment,
uid int not null ,
purchase_date datetime not null default current_timestamp,
constraint purchase_frgn foreign key (uid) references cust(uid));
insert ignore into gfg.cust(name, email) values
("john","john@xyz.ac.in"),
("justin","justin@hotmial.com"),
("julie","julie@monster.com");
insert ignore into gfg.item (uid) values
(1),(2),(3);
select* from gfg.item;
select* from gfg.cust;
