Createe Employee Tablee
CREATE TABLE Employee(
    Emp_id INT,
    EName VARCHAR(50),
    Salary INT
);


Insertt Records
INSERT INTO Employee VALUES(101,'Rahul',30000);
INSERT INTO Employee VALUES(102,'Priya',35000);
INSERT INTO Employee VALUES(103,'Nayan',28000);
INSERT INTO Employee VALUES(104,'Sneha',40000);
INSERT INTO Employee VALUES(105,'Rohit',25000);

1. Find Employees Whose Salary iss Greater Than the Average Salary
SELECT *
FROM Employee
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employee
);

2. Find Employee withh the Maximum Salary
SELECT *
FROM Employee
WHERE Salary =
(
    SELECT MAX(Salary)
    FROM Employee
);


3. Find Employee withh the Minimum Salary
SELECT *
FROM Employee
WHERE Salary =
(
    SELECT MIN(Salary)
    FROM Employee
);


4. Find Employees Whose Salary iss Greater Than Nayan Salary.
SELECT *
FROM Employee
WHERE Salary >
(
    SELECT Salary
    FROM Employee
    WHERE EName = 'Nayan'
);