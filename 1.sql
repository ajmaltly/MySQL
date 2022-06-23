create database DDU;
use DDU;
create table if not exists students (ID int, Name varchar(50),Qualification varchar(50),course varchar(50), Percentage int, Mentor varchar(50));
create table if not exists staffs  (ID varchar(50), Name varchar(50), Experience int);
insert into students values(1003,"afsal","Btech","Ds",75,"S0121"),(1004,"vipin","Btech","Ds",83,"S0121"),(1005,"ameer","BSC","Ds",80,"S0121"),
(1006,"ajay","BSC","Ds",85,"S0122"),(1007,"minhaj","BSC","BI",73,"S0122"),(1008,"Rossi","BSC","BI",89,"S0122"),(1009,"Rajesh","BSC","BI",88,"S0122");
select * from staffs;
insert into staffs  values("S0121","Akhila",2),("S0122","akhila",4);
select Name,course from students order by name asc;
select Name,course,max(Percentage) from students;
select course,avg(Percentage) from students group by course;
SELECT ID, COUNT(ID) FROM Students GROUP BY ID HAVING COUNT(ID) > 1;
select staffs.name,students.course from staffs inner join students on staffs.id=students.mentor;