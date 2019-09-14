create or replace function findMaximumNumber(n1 in number , n2 in number, n3 in number, n4 in number)
	return number 
	is

	temp1 number;
	temp2 number;
	

	begin
		if(n1 > n2) then
			temp1 := n1;
		else 
			temp1 := n2;

		end if;

		if(n3 > n4) then
			temp2:= n3;
		else 
			temp2 := n4;
		end if;

		if(temp1 > temp2) then
			return temp1;
		else
			return temp2;
		end if;

	end findMaximumNumber;
	/