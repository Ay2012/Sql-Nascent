use gfg;
drop table if exists gfg.std;
create table if not exists gfg.std
(
user_id int primary key auto_increment  ,
user_name varchar (255) not null,
age int not null,
email varchar (255) not null unique,
city varchar (255) not null ,
constraint val_city check (city in ("noida","aligarh","agra","patna","lucknow","patiala","jalandhar","jaipur","indore")) 
);
insert into gfg.std (user_name, age, email, city) values
("user1",21,"user1@gmail.com","noida"),
("user2",24,"user2@xyz.ac.in","jalandhar"),
("user3",27,"user3@hotmail.com","lucknow"),
("user4",19,"user4@montser.com","patiala"),
("user5",34,"user5@yahoo.co.in","jaipur");
-- entering a column and updating auto increment 
alter table gfg.std 
add column phone bigint not null unique after age , 
auto_increment =1000;
select * from gfg.std;