SET SERVEROUTPUT ON

DECLARE
	inputMajor Student.major%TYPE;
	totalStudent NUMBER;

	CURSOR getTotalStudent(maj Student.major%TYPE) IS
		SELECT COUNT(snum) from Student WHERE major = maj;


BEGIN
	inputMajor := '&enter_value';
	OPEN getTotalStudent(inputMajor);
		LOOP
			FETCH getTotalStudent INTO totalStudent;
			EXIT WHEN getTotalStudent %NOTFOUND;

		END LOOP;

	CLOSE getTotalStudent;


	DBMS_OUTPUT.PUT_LINE('Total Student is ' || totalStudent);
	


END;
/