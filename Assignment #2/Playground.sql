-- Practice Assignment

SET SERVEROUTPUT ON

DECLARE
	lastID Student.snum %TYPE;
	i NUMBER := 0;

	CURSOR getID IS
		SELECT snum from Student;

BEGIN
	OPEN getID;
		LOOP
			FETCH getID INTO lastID;
			EXIT WHEN getID %NOTFOUND;
		END LOOP;

	CLOSE getID;	

	IF MOD(lastID,2) = 0 THEN
		DBMS_OUTPUT.PUT_LINE(lastID);
		DBMS_OUTPUT.PUT_LINE('Last ID is EVEN');
	END IF;


	--INSERTION
		WHILE(i < 10)
		LOOP
			lastID := lastID + 1;
			INSERT INTO Student VALUES(lastID,'Rahmatullah Hafiz','EEE',	3,24);
			i := i+1;

		END LOOP;


	


END;

/