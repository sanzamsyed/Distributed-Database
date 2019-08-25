SET SERVEROUTPUT ON

DECLARE
	
	inputNum NUMBER;
	--cnum: integer, cname: string, meets_at: string, room: string, fid: integer) 
	cnumm Course.cnum %TYPE;
	cnamee Course.cname %TYPE;
	meets_att Course.meets_at %TYPE;
	roomm Course.room %TYPE;
	fidd Course.fid %TYPE;


BEGIN

	inputNum := &enter_value;

	IF MOD(inputNum,2) = 1 THEN
		FOR cursor1 IN (SELECT * FROM Course) 
          LOOP
            DBMS_OUTPUT.PUT_LINE(cursor1.cnum || ' ' || cursor1.cname || ' ' || cursor1.meets_at || ' ' || cursor1.room || ' ' || cursor1.fid);
          END LOOP;

	END IF;


	IF MOD(inputNum,2) = 0 THEN
		FOR cursor2 IN (SELECT * FROM Faculty) 
          LOOP
            DBMS_OUTPUT.PUT_LINE(cursor2.fid || ' ' || cursor2.fname || ' ' || cursor2.deptid);
          END LOOP;

	END IF;

END;
/