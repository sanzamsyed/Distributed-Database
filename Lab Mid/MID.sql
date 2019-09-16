--courtesy: G. M. Shahariar Shibli
clear screen;

--delete existing table
drop table shop cascade constraints;
drop table cakes cascade constraints;
drop table records cascade constraints;

--Create shop, cakes, records database
create table shop(
sid     integer, 
sname   varchar2(30), 
address varchar2(30), 
        PRIMARY KEY (sid)
);

create table cakes(
cid   integer, 
cname varchar2(30), 
color varchar2(30), 
      PRIMARY KEY(cid)
);

create table records(
sid   integer, 
cid   integer, 
cost  number, 
      FOREIGN KEY(sid) REFERENCES shop(sid), 
      FOREIGN KEY(cid) REFERENCES cakes(cid)
);

--Insert data into the shop database
insert into shop values(1, 'Coopers', 'Dhanmondi');
insert into shop values(2, 'Hot Cake', 'Khilgaon');
insert into shop values(3, 'Tasty Treat', 'Mohammadpur');
insert into shop values(4, 'Well Food', 'Uttara');

--Insert data into cakes database
insert into cakes values(1, 'Red Velvet', 'red');
insert into cakes values(2, 'Vanilla', 'white');
insert into cakes values(3, 'Chocolate', 'brown');
insert into cakes values(4, 'Cheesecake', 'yellow');
insert into cakes values(5, 'Strawberry', 'white');
insert into cakes values(6, 'Delight', 'brown');
insert into cakes values(7, 'Blueberry', 'white');

--Insert data into records database
insert into records values(1, 3, 500);
insert into records values(1, 4, 450);
insert into records values(1, 5, 600);
insert into records values(2, 6, 550);
insert into records values(2, 7, 650);
insert into records values(2, 3, 600);
insert into records values(3, 5, 650);
insert into records values(3, 6, 600);

--Trying to commit -_-
commit;

--Display all data from three databases
select * from shop;
select * from cakes;
select * from records;

