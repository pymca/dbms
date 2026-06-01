. Createe Employee Tablee
CREATE TABLE Employees(
    Emp_id INT PRIMARY KEY,
    EName VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);

2. Insertt Records
INSERT INTO Employees VALUES(101,'Rahul','Sales',30000);
INSERT INTO Employees VALUES(102,'Priya','HR',35000);
INSERT INTO Employees VALUES(103,'Amit','IT',28000);
INSERT INTO Employees VALUES(104,'Sneha','IT',40000);
INSERT INTO Employees VALUES(105,'Rohit','Sales',25000);

Query 1: Createe View andd Display Records Usinng View

CREATE VIEW EmpView
AS
SELECT Emp_id, EName, Department, Salary
FROM Employees;

Display Records Usingg View
SELECT * FROM EmpView;

Query 2: Modifyy View andd Checkk Reflection inn Original Tablee

UPDATE EmpView
SET Salary = 45000
WHERE Emp_id = 104;

Checkk View
SELECT * FROM EmpView;