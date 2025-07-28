-- Easy-Level Problem



create table author1(author_id int primary key ,author_name varchar(max),country varchar(max))
create table book1(book_id int primary key,book_tittle varchar(max),author_id int foreign key (author_id) references author1(author_id)) 
insert into author1(author_id,author_name,country) values(1,'Rohit','India'),(2,'Harshdeep Singh','Canada'),(3,'Riyan','USA'),(4,'Vishal','Austrila')
insert into book1(book_id,book_tittle,author_id) values(100,'c++',1),(101,'Python',2),(102,'Java',3),(103,'SQL',4)
select * from author1
select * from book1
select book1.book_tittle,author1.author_name,author1.country
from author1
inner join book1
on author1.author_id=book1.author_id



-- Medium-Level Problem*

create table department(department_id int primary key,department_name varchar(max))
create table courses(course_id int primary key,course_name varchar(max),department_id int foreign key (department_id) references department(department_id))
insert into department(department_id,department_name) values(1,'Computer Science'),(2,'Mechenical Engineering'),(3,'Electrical Engineering'),(4,'Civil Engineering'),(5,'Biotechnology')
insert into courses(course_id,course_name,department_id) values
(101, 'Data Structures', 1),
(102, 'Algorithms', 1),
(103, 'Database Systems', 1),
(201, 'Thermodynamics', 2),
(301, 'Circuit Theory', 3),
(302, 'Power Systems', 3),
(401, 'Structural Analysis', 4),
(402, 'Building Materials', 4),
(403, 'Surveying', 4),
(404, 'Geotechnical Engineering', 4),
(501, 'Molecular Biology', 5)
select * from department
select * from courses
SELECT department.department_name
FROM department 
JOIN courses  ON department.department_id = courses.department_id
GROUP BY department.department_id, department.department_name
HAVING COUNT(*) >= 2;


