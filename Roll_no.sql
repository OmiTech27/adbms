create table emp1(
emp_id int primary key,
department varchar(10),
category char(10),
ename varchar(10),
esalary int not null
);
insert into emp1 values(101,'it' ,'manager','Ramesh',25000);
insert into emp1 values(102,'sales','emp','Mohan',9000);
insert into emp1 values(103',exucute','HOD','Riya',20000);
insert into emp1 values(104,'production','casting', 'Tina',12000);
insert into emp1 values(105,'industrial','scale','Soham',15000);
insert into emp1 values(106,'manufcturing','it','Shubham',8000);
insert into emp1 values(107,'lighting','tec','Ketan',40000);
insert into emp1 values(108,'technical','Pooja',22000);
SELECT 
   Department, 
   SUM(eSalary) as Salary 
FROM Emp1 
GROUP BY ROLLUP(Department);

SELECT 
   Department, 
   Category, 
   SUM(eSalary) as Salary 
FROM Emp1
GROUP BY ROLLUP(Department, Category);

#cube

SELECT
   department,
   Category ,
   sum(eSalary)
FROM
   emp
GROUP BY
   CUBE(Department,Category);
   
   
   #last
SELECT  
    MAX(esalary)
    KEEP (
        DENSE_RANK LAST
        ORDER BY emp_id
    )
FROM emp1;

#FIRST
FROM emp1;
SELECT department,
    COUNT(*) 
        KEEP (
            DENSE_RANK FIRST
            ORDER BY esalary
        ) 
        FROM
   emp1
GROUP BY
   CUBE(Department,Category);

#lag
SELECT ename, emp_id,
  LAG(emp_id) OVER(ORDER BY emp_id) as previous_emp_id
FROM emp1;

 
 #LEAD
SELECT ename, emp_id,
  LEAD(emp_id) OVER(ORDER BY emp_id) as next_emp_id
FROM emp1;

#RANK
CREATE TABLE exam
(StudentName VARCHAR(70), 
 Subject     VARCHAR(20), 
 Marks       INT
);


INSERT INTO Exam VALUES('sana','Maths', 60);
INSERT INTO Exam VALUES('sana','science', 80);
INSERT INTO Exam VALUES('sana','english', 68);
INSERT INTO Exam VALUES('jine','Maths', 65);
INSERT INTO Exam VALUES('jine','science', 70);
INSERT INTO Exam VALUES('jine','english', 55);
INSERT INTO Exam VALUES('oggy','Maths', 85);
INSERT INTO Exam VALUES('oggy','science', 35);
INSERT INTO Exam VALUES('oggy','english', 68);
INSERT INTO Exam VALUES('oliev','Maths', 29);
INSERT INTO Exam VALUES('oliev','science', 40);
INSERT INTO Exam VALUES('oliev','english', 90);

select*from exam

   SELECT Studentname, 
       Subject, 
       Marks, 
       RANK() OVER(PARTITION BY Studentname ORDER BY Marks DESC) Rank
FROM Exam
ORDER BY Studentname, 
         Rank;
         
SELECT Studentname, 
       Subject, 
       Marks, 
       RANK() OVER(ORDER BY Marks DESC) Rank
FROM Exam
ORDER BY Rank;


Update Exam set Marks=70 where Studentname='oliev' and Subject='Maths';


SELECT Studentname, 
       Subject, 
       Marks, 
       RANK() OVER(ORDER BY Marks DESC) Rank
FROM Exam
ORDER BY Rank;
