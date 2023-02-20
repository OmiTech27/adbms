create table Persons2( 
id int primary key, 
name varchar(10), 
city varchar(10));

partition by list(city)( 
partition karnatka values('Bengaluru','Kolar','Mysuru'), 
partition Maharashtra values('Mumbai','Pune','Nashik'), 
partition Madhya_Pradesh values('Indore','Ujjain','Itarsi'), 
partition Pubjab values('Amritsar','Chandigarh','Ludhiana') 
)

Insert into persons1 values(101,'Radha','Kolar')
insert into persons1 values(102,'Mohan','Mumbai')
insert into persons1 values(103,'Sonam','Pune')
insert into persons1 values(104,'Dhara','Bengaluru')
insert into persons1 values(105,'Sonal','Amritsar')
insert into persons1 values(106,'Ketaki','Mysuru')
insert into persons1 values(107,'Palli','Indore')
insert into persons1 values(108,'Joe','Ludhiana')
insert into persons1 values(109,'Gills','Indore')
select*from persons1;

select * from Persons2 Partition(Karnatka);

select * from Persons2 Partition(Karnatka);

select * from Persons2 Partition(Maharashtra);

select * from Persons2 Partition(Madhya_Pradesh);

select * from Persons2 Partition(Punjab);

Alter table persons2
ADD Partition Rajasthan values('Ajmer','Jaipur','Kota','Jodhpur');

select partition_name, table_name, high_value from user_tab_partitions;

insert into Persons2 values(111,'Ram','Kota');
insert into Persons2 values(112,'Myra','Ajmer');

select * from Persons2 Partition(Rajasthan);

ALTER TABLE Persons
 MODIFY PARTITION Maharashtra ADD VALUES ( 'Kolhapur' );
 Alter Table Persons
 DROP Partition Madhya_Pradesh;
 
 select * from persons Partition(Madhya_Pradesh);
 select partition_name, table_name, high_value from user_tab_partitions;


