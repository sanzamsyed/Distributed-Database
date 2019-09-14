set serveroutput on

declare
	totalChocolates number;
	totalPeople number;
	returnValue number;

	

begin
	totalChocolates:= &totalChocolates;
	totalPeople:= &totalPeople;

	returnValue := isDivisible(totalChocolates,totalPeople);

	printMessage(returnValue);


end;
/