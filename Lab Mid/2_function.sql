-- Input: ShopID
-- Output: Total Cost of all the cakes sold by that shop.

create or replace function calculateTotalCost(n in number)
	return number
	is

	totalCost number;
	temp number;

	begin
		totalCost := 0;
		for cursor in (select * from records where sid = n) loop
			totalCost := totalCost + cursor.cost;
		end loop;

		return totalCost;

	end calculateTotalCost;
	/