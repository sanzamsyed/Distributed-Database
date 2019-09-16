-- Input : ShopId
-- Output: Information of the most Costly Cake sold by that shop.

set serveroutput on

declare
	input number;
	color shop.sname %type;
	name shop.sname %type;

begin
	input := &value;
	for cursor in (select cid from records where sid = input and cost = (select max(cost) from records where sid = input )) loop
		dbms_output.put_line('Cake Id: ' || cursor.cid);

		select cname into  name from cakes where cid = cursor.cid;
		dbms_output.put_line('Name: ' || name);

		select color into color from cakes where cid = cursor.cid;
		dbms_output.put_line('Color: ' || color);

	end loop;

end;
/
