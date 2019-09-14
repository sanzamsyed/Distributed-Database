create or replace function isDivisible(chocolates in number, people in number)
	return number
	is
	
	begin
		if remainder(chocolates,people) = 0 then
			return 1;
		else
			 return 0;
		end if;

	end isDivisible;
	/