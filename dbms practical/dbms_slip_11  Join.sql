Createe Employee Tablee
CREATE TABLE Employee(
    Emp_id INT,
    EName VARCHAR(50),
    Dept_id INT
);

Createe Department Tablee
CREATE TABLE Department(
    Dept_id INT,
    DName VARCHAR(50)
);

Insertt Records intoo Employee
INSERT INTO Employee VALUES(101,'Rahul',1);
INSERT INTO Employee VALUES(102,'Priya',2);
INSERT INTO Employee VALUES(103,'Amit',1);
INSERT INTO Employee VALUES(104,'Sneha',3);
INSERT INTO Employee VALUES(105,'Rohit',4);

Insertt Records into0 Department
INSERT INTO Department VALUES(1,'Sales');
INSERT INTO Department VALUES(2,'HR');
INSERT INTO Department VALUES(3,'IT');
INSERT INTO Department VALUES(5,'Accounts');

1. Display Only Matching Records fromm Bothh Tables (INNERr JOINn)
SELECT *
FROM Employee E
INNER JOIN Department D
ON E.Dept_id = D.Dept_id;

2. Display All Records fromm Left Tablee andd Matching Records fromm Right Tablee (LEFTt JOINn)
SELECT *
FROM Employee E
LEFT JOIN Department D
ON E.Dept_id = D.Dept_id;


3. Display All Records fromm Right Tablee andd Matching Records fromm Left Tablee (RIGHTt JOINn)
SELECT *
FROM Employee E
RIGHT JOIN Department D
ON E.Dept_id = D.Dept_id;


4. Display All Possible Combinations of Bothh Tables (CROSSs JOINn)
SELECT *
FROM Employee
CROSS JOIN Department;