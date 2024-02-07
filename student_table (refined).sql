create table if not exists uni.st(
reg_no int not null primary key unique ,
age int not null,
name varchar (255) not null ,
email varchar(255) not null unique ,
phone bigint not null,
active_status boolean default true 
);
INSERT INTO uni.st (reg_no, age, name, email, phone)
VALUES
    (1001, 22, 'Ayush', 'ayushgaurssj@gmail.com', 8180672073),
    (1002, 22, 'Aryan', 'aryan@yahoo.com', 9088220731),
    (1003, 22, 'Ashutosh', 'ashu2000@gmail.com', 9110623079)
ON DUPLICATE KEY UPDATE reg_no = reg_no;



select * from uni.st;