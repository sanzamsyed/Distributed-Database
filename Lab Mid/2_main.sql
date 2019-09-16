-- Main Script

set serveroutput on

declare
	input number;
	result number;

begin
	input := &value;
	result := calculateTotalCost(input);
	dbms_output.put_line('Output is : ' || result);

end;
/