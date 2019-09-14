create or replace procedure printMessage(returnValue in number)
	is

	begin
		if(returnValue = 1) then
			dbms_output.put_line('Chocolate is divisible!');
		else 
			dbms_output.put_line('Chocolate is not divisible!');
		end if;
	end printMessage;
	/