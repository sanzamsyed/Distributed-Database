set serveroutput on


declare
	num1 number;
	num2 number;
	num3 number;
	num4 number;

	returnValue number;

begin
	num1 := &num1;
	num2 := &num2;
	num3 := &num3;
	num4 := &num4;

	returnValue := findMaximumNumber(num1,num2,num3,num4);

	printResult(returnValue);


end;
/