/*
** TITLE : CSE 4125 Assignment #1
** AUTHOR : Syed Sanzam
** GROUP : A2
** ID: 16.01.04.042
** DATE : 19.07.19
*/

CREATE OR REPLACE view myView as 
SELECT S.snum as StudentID, E.cnum as CourseID
FROM Student S
FULL JOIN Enrolled E
ON S.snum = E.snum;

SELECT snum,sname from student where snum IN (SELECT StudentID from myView where CourseId is NULL);