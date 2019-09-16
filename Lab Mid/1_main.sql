-- Create a view showing information of the shop which sells at least one type of cake.

create or replace view cakeView1 as 
	select shop.sid as ShopId, records.cid as CakeId
	from shop
	full join records
	on shop.sid = records.sid;

create or replace view cakeView2 as
	select sid as view_sid, sname as view_sname, address as view_address
	from shop where sid in (select distinct(ShopId) from cakeView Where CakeId is not null); 

select * from cakeView2;