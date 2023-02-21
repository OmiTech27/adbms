create database practice;
use practice;

create table pract1(id int primary key, name varchar(20), age int)
partition by list(id) (
partition p1 values in (1, 2),
partition p2 values in (3, 4),
partition p3 values in (5));

insert into pract1 values(1, "Devansh", 20);
insert into pract1 values(2, "abhishek", 19);
insert into pract1 values(3, "shinde", 21);
insert into pract1 values(4, "mohit", 22);
insert into pract1 values(5, "suraj", 23);

select * from pract1;

select * from pract1 partition(p1);
select * from pract1 partition(p2);
select * from pract1 partition(p3);

desc pract1;

select partition_name, table_rows from information_schema.partitions where table_name='pract1';