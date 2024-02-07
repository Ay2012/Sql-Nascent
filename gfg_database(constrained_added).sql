create database if not exists gfg;
drop table if exists gfg.users ;
create table if not exists gfg.users(
user_id int primary key not null,
user_name varchar (255) not null,
email varchar(255) not null unique,
age int not null, 
city varchar(255) not null,
join_date datetime default current_timestamp,
active boolean default  true,
constraint valid_city check(city in ('noida','trichy','hyderabad','indore','greater noida','aligarh','patna','jammu city','dehradun','sahranpur','prayag','varanasi')));
insert into gfg.users(user_id, user_name, email, age, city, active,join_date ) values 
(1,'user1','user1@gmail.com',21,'Noida',true,current_timestamp()),
(2,'user2','user2@gfg.com',24,'Hyderabad',true,current_timestamp()),
(3,'user3','user3@yahoo.com',28,'Trichy',true,current_timestamp()),
(4,'user4','user4@hotmail.com',29,'Indore',true,current_timestamp()),
(5,'user5','user5@gbu.ac.in',19,'Aligarh',true,current_timestamp());
select * from gfg.users;

