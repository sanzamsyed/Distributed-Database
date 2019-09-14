create or replace procedure printResult(result in number)
	is

	begin
		dbms_output.put_line('Largest number is : ' || result);

	end printResult;
	/