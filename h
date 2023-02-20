create or replace type address as object 
( 
house_name varchar(20), 
city varchar(20) 
)

create table student_type 
( 
s_id int, 
s_name varchar(20), 
s_add address  
)

desc student_type
desc address

insert into student_type values(1,'RAtan',address('G Niwas','Devicapada'));
insert into student_type values(2,'usha',address('r Niwas','capada'));
insert into student_type values(3,'mayrui',address('t Niwas','nagar'));
insert into student_type values(4,'madhu',address('Gh Niwas','sarat'));
insert into student_type values(5,'sai',address('Gm Niwas','mahani'));
insert into student_type values(6,'krishna',address('1 Niwas','kunnamar'));
insert into student_type values(7,'kunal',address('j Niwas','sannamar'));

select * from student_type;

select s_id,s_name from student_type;

select s_id,s_name, v.s_add.house_name from student_type v;

select s_id,s_name, v.s_add.house_name, v.s_add.city from student_type v;

update student_type v 
set v.s_add.house_name='N Niwas' 
where v.s_add.city='Devicapada'

update student_type v 
set v.s_add.house_name='N Niwas' 
where s_name=’madhu’;

create type full_add as object 
( 
street varchar(20), 
city varchar(20), 
pin_code number(10) 
) 

create table c_name(fname varchar(10),
mname varchar(2),
lastname varchar(10)
)

create table  client1( 
c_name  varchar(10), 
 full_add varchar(20)
) ;

desc address;

Desc c_name;

