use mca;
CREATE TABLE Stores (
cust_name VARCHAR(40),
bill_no VARCHAR(20) NOT NULL,
store_id INT PRIMARY KEY NOT NULL,
bill_date DATE NOT NULL,
amount DECIMAL(8,2) NOT NULL
)
PARTITION BY LIST(store_id) (
PARTITION pEast VALUES IN (101, 103, 105),
PARTITION pWest VALUES IN (102, 104, 106),
PARTITION pNorth VALUES IN (107, 109, 111),
PARTITION pSouth VALUES IN (108, 110, 112));

-- truncate Stores;

insert into Stores values('devansh','b120',101,'2023-01-17',2000.20);
insert into Stores values('mohit','b220',102,'2023-02-17',2010.20);
insert into Stores values('abhishek','b320',103,'2023-03-17',2020.20);
insert into Stores values('saurab','b420',104,'2023-04-17',2030.20);
insert into Stores values('omkaar','b520',105,'2023-05-17',2040.20);
insert into Stores values('sachin','b620',106,'2023-06-17',2050.20);
insert into Stores values('rahul','b720',107,'2023-07-17',2060.20);
insert into Stores values('suraj','b820',108,'2023-08-17',2070.20);
insert into Stores values('vinit','b920',109,'2023-09-17',2080.20);
insert into Stores values('saransh','b1120',110,'2023-10-17',2090.20);
insert into Stores values('awinas','b1130',111,'2023-11-17',20100.20);
insert into Stores values('ankit','b1140',112,'2023-12-17',200200.20);

select * from stores;

select * from Stores partition(pEast);
select * from Stores partition(pWest);
select * from Stores partition(pNorth);
select * from Stores partition(pSouth);

-- select cust_name,store_id,112 from stores;