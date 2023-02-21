use testdb;

create table pract3 (id int primary key, name varchar(20), age int)
partition by list(id) 
(
partition p1 
    values(1, 2),
partition p2 
    values(3, 4),
partition p3 
    values(5) 
)

insert into pract3 values(1, 'Devansh', 20);
insert into pract3 values(2, 'abhishek', 19);
insert into pract3 values(3, 'shinde', 21);
insert into pract3 values(4, 'mohit', 22);
insert into pract3 values(5, 'suraj', 23);

select * from pract3;

select * from pract3 partition(p1);
select * from pract3 partition(p2);
select * from pract3 partition(p3);

desc pract3;

SELECT TABLE_NAME,PARTITION_NAME, PARTITION_POSITION, HIGH_VALUE FROM USER_TAB_PARTITIONS WHERE TABLE_NAME ='pract3'