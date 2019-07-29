/*
** TITLE : CSE 4125 Assignment #1
** AUTHOR : Syed Sanzam
** ID: 16.01.04.042
** DATE : 19.07.19
*/

SET SERVEROUTPUT ON;

DECLARE

	numStudent Student.snum %TYPE; 

BEGIN

SELECT COUNT(COUNT(snum)) INTO numStudent FROM 
(SELECT  E.snum, C.room
FROM Enrolled E
FULL JOIN Course C
ON E.cnum = C.cnum 
FULL JOIN Student ON E.snum = Student.snum) 
GROUP BY (snum) 
HAVING COUNT(DISTINCT room) = 2;

DBMS_OUTPUT.PUT_LINE('Number of Students who take classes in exactly two different rooms is  ' || numStudent);

END;
/