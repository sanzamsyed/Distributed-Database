/*
** TITLE : CSE 4125 Assignment #1
** AUTHOR : Syed Sanzam
** GROUP : A2
** ID: 16.01.04.042
** DATE : 19.07.19
*/

CREATE OR REPLACE view myView2 as
SELECT snum as StudentId, count(cnum) as CourseTaken 
FROM Enrolled
WHERE snum in (SELECT snum from Student) 
GROUP BY snum 
ORDER BY snum;

SELECT sname as Name, major as Major from Student WHERE 
snum IN (SELECT StudentId from myView2 WHERE 
	CourseTaken = (SELECT MAX(CourseTaken) from myView2));