/*
** TITLE : CSE 4125 Assignment #1
** AUTHOR : Syed Sanzam
** GROUP : A2
** ID: 16.01.04.042
** DATE : 19.07.19
*/

SET SERVEROUTPUT ON;

DECLARE

	avgAge FLOAT(10); 

BEGIN
	SELECT AVG(age) INTO avgAge FROM STUDENT where snum IN 
	(SELECT snum FROM Enrolled where cnum  IN 
		(SELECT cnum FROM Course WHERE fid IN 
			(SELECT fid from Faculty WHERE fname = 'Shariful Islam'))) AND slevel = 3;

	DBMS_OUTPUT.PUT_LINE('Average age is ' || avgAge);

END;
/