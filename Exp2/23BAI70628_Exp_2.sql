--Medium Problem

create table employee1
(Emp_id int primary key,Emp_name varchar(max),Department varchar(max),managerid int)
insert into employee1
(Emp_id,Emp_name,Department,managerid) values(1,'Alice','HR',NULL),(2,'Bob','Finanace',1),(3,'Charlie','IT',1),
(4,'David','Finance',2),(5,'Fra','IT',3),(6,'Frank','HR',1)
alter table employee1 add constraint fy_key foreign key (managerid) references employee1(Emp_id)

select e1.Emp_name as [Employee_Name],e1.Department as [Employee_Dep],e2.Emp_name as [Manager_Name], e2.Department as [Manager_Dep]
from employee1 as e1
left outer join employee1 as e2
on e1.managerid=e2.Emp_id

--Hard Problem


create table year_tbl(id int,[year] int,npv int)
create table query_tbl(id int,[year] int)
insert into year_tbl(id,[year],npv) values (1,2018,100),(7,2020,30),(13,2019,40),(1,2019,113),(2,2008,121),(3,2009,12),(11,2020,99),(7,2019,0)
insert into query_tbl(id,[year]) values (1,2019),(2,2008),(3,2009),(7,2018),(7,2019),(7,2010),(13,2019)

select q.id,q.[year],ISNULL(y.npv,0) as npv
from query_tbl as q
left outer join year_tbl as y
on q.id=y.id and q.[year]=y.[year]
