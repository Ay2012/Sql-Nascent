drop database if exists uni;
create database if not exists uni;
drop table if exists uni.student;
CREATE TABLE IF NOT EXISTS uni.student (
    reg_no INT,
    age INT(3),
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(10)
);

INSERT INTO uni.student (reg_no, age, name, email, phone) VALUES
    (1002, 22, 'Ayush', 'ayushgaurssj2@gmail.com', '1800622331'),
    (1003, 22, 'Aryan', 'aryan@gmail.com', '1703456233'),
    (1004, 22, 'Ashutosh', 'ashu123@hotmail.com', '1999999999');

 select * from uni.student;

 


 

