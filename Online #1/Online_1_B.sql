SET SERVEROUTPUT ON;

DECLARE

	totNum INTEGER; 

BEGIN
	SELECT COUNT(snum) INTO totNum FROM STUDENT where snum IN 
	(SELECT snum FROM Enrolled where cnum  IN 
		(SELECT cnum FROM Course WHERE fid IN 
			(SELECT fid from Faculty WHERE fname = 'Zobair'))) AND slevel = 2;

	DBMS_OUTPUT.PUT_LINE('Total student ' || totNum);

END;
/