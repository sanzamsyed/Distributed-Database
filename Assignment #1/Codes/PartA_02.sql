/*
** TITLE : CSE 4125 Assignment #1
** AUTHOR : Syed Sanzam
** GROUP : A2
** ID: 16.01.04.042
** DATE : 19.07.19
*/

create or replace view myView as
select snum as StudentId, count(cnum) as CourseTaken from enrolled group by snum order by snum;

select sname as Name ,major as Major from student where snum in (select StudentId from myView where CourseTaken = (select max(CourseTaken) from myView));
