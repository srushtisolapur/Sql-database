create database college;
show databases;
use college;
create table students (
rollno int primary key,
name varchar (255)
);
select * from students;
create table temp1 (
id int unique
);
insert into temp1 values (101);
insert into temp1 values (101);
select * from temp1;
create table children (
rollno int,
name varchar (255),
marks int not null,
grade varchar (1),
city varchar (20)
);
insert into children (rollno, name, marks, grade, city) 
values 
(101, "anil", 78, "C", "pune"),
(102, "ankita", 93, "A", "mumbi"),
(103, "chetan", 85, "B", "mumbi"),
(104, "druva", 96, "A", "delhi"),
(105, "sara", 12, "F", "delhi"),
(106, "mwri", 82, "B", "delhi");
select * from children;
select * from children where marks > 80;
select * from children where city = "mumbi";
select * from children where marks > 80 and city = "mumbi";
select * from children where marks > 80 or city = "mumbi";
select * from children order by city ASC;
select* from children order by marks ASC;
select * from children order by marks desc limit 3;
select marks from children;
select max(marks) from children;
select min(marks) from children;
select avg(marks) from children;
select count(rollno) from children;
select city from children group by city;
select city, count(rollno) from children group by city;
select city, name, count(rollno) from children group by city, name;
select city, avg(marks) from children group by city;
select city, avg(marks) from children group by city order by city;
select grade, count(rollno) 
from children
group by grade
order by grade;
select city, count(rollno)
from children
group by city
having max(marks) > 90;
select city
from children
where grade = "A"
group by city
having max(marks) >= 93
order by city desc;
update children
set grade= "O"
where grade = "A";
select * from children;
delete from children where marks < 33;
select * from children;
create table dept (
id int primary key,
name varchar (50)
);

create table teacher (
id int primary key,
name varchar (50),
dept_id int,
foreign key (dept_id) references dept (id)
);






