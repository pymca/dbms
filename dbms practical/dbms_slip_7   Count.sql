Createe Tablee
CREATE TABLE Employee (
    Emp_id INT PRIMARY KEY,
    EName VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2)
);

Insertt Records
INSERT INTO Employee VALUES
(101,'Rahul','Sales',30000);

INSERT INTO Employee VALUES
(102,'Priya','Sales',35000);

INSERT INTO Employee VALUES
(103,'Amit','Sales',28000);

INSERT INTO Employee VALUES
(104,'Sneha','HR',40000);

INSERT INTO Employee VALUES
(105,'Rohit','IT',45000);

INSERT INTO Employee VALUES
(106,'Neha','IT',42000);

INSERT INTO Employee VALUES
(107,'Karan','IT',38000);


1. Count the Numberr of Employees inn Each Department
SELECT Department, COUNT(*) AS Total_Employees
FROM Employee
GROUP BY Department;

2. Display Departments Havingg More Than 2 Employees
SELECT Department, COUNT(*) AS Total_Employees
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 2;

3. Display the Total Salary of Each Department
SELECT Department, SUM(Salary) AS Total_Salary
FROM Employee
GROUP BY Department;