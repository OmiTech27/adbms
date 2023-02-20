create table emp(
emp_id int primary key,
ename varchar(10),
esalary int not null
)
partition by range(esalary)(
partition P1 values less than(10000),
partition P2 values less than(20000),
partition P3 values less than(30000),
partition P4 values less than(MAXVALUE)
);

select partition_name, table_name from user_tab_partitions;
insert into emp values(101,'Ramesh',25000);
insert into emp values(102,'Mohan',9000);
insert into emp values(103,'Riya',20000);
insert into emp values(104,'Tina',12000);
insert into emp values(105,'Soham',15000);
insert into emp values(106,'Shubham',8000);
insert into emp values(107,'Ketan',40000);
insert into emp values(108,'Pooja',22000);
select * from emp;

select * from emp partition(P1);

select * from emp partition(P2);

select * from emp partition(P3);

select * from emp partition(P4);
