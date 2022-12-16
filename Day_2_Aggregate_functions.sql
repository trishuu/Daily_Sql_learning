create database admin1;
use admin1;
create table student(sections varchar(20),stu_name varchar(20),marks int);
insert into student values('Sec-A','Stewart',90),('Sec-B','Vince',86),('Sec-C','John',94),('Sec-A','Michelle',78),('Sec-C','Robin',60),('Sec-A','Sara',86),('Sec-B','Peter',92),('Sec-C','Ian',89),('Sec-A','David',76);
select * from student;


#AVG() Syntax
#SELECT AVG(column_name)
#FROM table_name
#WHERE condition;

Select avg(marks) as avg_marks from student;
select sections, avg(marks) as avg_marks from student group by sections;


#COUNT() Syntax
#SELECT COUNT(column_name)
#FROM table_name
#WHERE condition;

#SELECT section, SUM(marks) AS total_marks FROM student GROUP BY section;
select count(stu_name) as total_students from student;


#The MAX() function returns the largest value of the selected column
#MAX() Syntax :-
#SELECT MAX(column_name)
#FROM table_name
#WHERE condition;
SELECT stu_name, MAX(marks) AS highest_mark FROM student;


#The MIN() function returns the smallest value of the selected column.
#MIN() Syntax
#SELECT MIN(column_name)
#FROM table_name
#WHERE condition;
SELECT stu_name, MIN(marks) AS lowest_mark FROM student;

#distinct() Syntax
SELECT DISTINCT (sections) FROM student;
#SELECT COUNT(DISTINCT(sections)) FROM student;


#group concat()
SELECT GROUP_CONCAT(stu_name SEPARATOR ';') FROM student;


#SUM Syntax()
#SELECT SUM(column_name)
#FROM table_name
#WHERE condition;
select  sum(marks) as total_marks from student;


#var()
SELECT variance(marks) AS variance FROM student;