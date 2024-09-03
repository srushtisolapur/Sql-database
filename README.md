# College Database Management

This project is a demonstration of basic SQL operations for managing a simple database system named `college`. It includes the creation of several tables, data manipulation, and various queries to interact with the data.

## Project Structure

1. **Database Creation**
   - `college` database is created using SQL commands.

2. **Tables**
   - `students`: Stores student information with `rollno` as the primary key.
   - `temp1`: Demonstrates the use of unique constraints.
   - `children`: Stores detailed records of students including marks and grades.
   - `dept`: Contains department information with `id` as the primary key.
   - `teacher`: Stores teacher details and references `dept` with a foreign key.

3. **Key Operations**
   - **Data Insertion**: Various records are inserted into the `children`, `temp1`, and `teacher` tables.
   - **Data Selection**: Queries demonstrate filtering, ordering, grouping, and limiting data.
   - **Aggregation Functions**: Functions such as `MAX`, `MIN`, `AVG`, and `COUNT` are used.
   - **Data Update**: The `children` table's grades are updated based on specific criteria.
   - **Data Deletion**: Records with failing marks are removed from the `children` table.
   - **Relational Integrity**: Use of foreign keys to maintain relationships between `teacher` and `dept`.

## SQL Operations Overview

```sql
## Database Creation
create database college;
use college;

## Table Creation
create table students (
  rollno int primary key,
  name varchar (255)
);

create table temp1 (
  id int unique
);

create table children (
  rollno int,
  name varchar (255),
  marks int not null,
  grade varchar (1),
  city varchar (20)
);

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

## Data Insertion
insert into children (rollno, name, marks, grade, city) 
values 
(101, "anil", 78, "C", "pune"),
(102, "ankita", 93, "A", "mumbi"),
(103, "chetan", 85, "B", "mumbi"),
(104, "druva", 96, "A", "delhi"),
(105, "sara", 12, "F", "delhi"),
(106, "mwri", 82, "B", "delhi");

## Data Selection and Aggregation
select * from children;
select * from children where marks > 80;
select max(marks) from children;
select avg(marks) from children;

## Data Update and Deletion
update children
set grade= "O"
where grade = "A";

delete from children where marks < 33;
