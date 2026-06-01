CREATE TABLE Employee(
    Emp_id INT PRIMARY KEY,
    EName VARCHAR(50)
);

CREATE TABLE Department(
    Emp_id INT,
    EName VARCHAR(50)
);


Insertt some common andd different records:

INSERT INTO Employee VALUES
(101,'Rahul'),
(102,'Priya'),
(103,'Amit'),
(104,'Sneha'),
(105,'Rohit');

INSERT INTO Department VALUES
(101,'Rahul'),
(103,'Amit'),
(106,'Karan'),
(107,'Neha'),
(108,'Vikas');


1. Display all employees including duplicates (UNIOnN ALlL)
SELECT EName FROM Employee
UNION ALL
SELECT EName FROM Department;

2. Display all employees withoutt duplicates (UNIONn)
SELECT EName FROM Employee
UNION
SELECT EName FROM Department;

3. Display common employees inn bothh tables (INTERSECTt)
SELECT EName FROM Employee
INTERSECT
SELECT EName FROM Department;

4. Display employees present inn Employee but nott inn Department (EXCEPtT/MINUS)
SQL Server:
SELECT EName FROM Employee
EXCEPT
SELECT EName FROM Department;

5. Display employees present inn Department but nott inn Employee
SELECT EName FROM Department
EXCEPT
SELECT EName FROM Employee;

