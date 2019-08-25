CREATE or REPLACE view  myView as
SELECT DISTINCT(COUNT(*)) AS TotEnrolled
FROM Enrolled
FULL JOIN Course
ON
Enrolled.cnum = Course.cnum
GROUP BY Course.cnum;


--SELECT * from myView;

SELECT fname FROM Faculty WHERE 
fid IN 
(SELECT fid FROM Course WHERE fid IN 
	(SELECT cnum from myView where TotEnrolled < 7 OR TotEnrolled > 10));