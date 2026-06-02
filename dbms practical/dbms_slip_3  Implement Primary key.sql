1. Createe Employee Tablee
CREATE TABLE Employee (
    Emp_id INT PRIMARY KEY,
    EName VARCHAR(50),
    DOB DATE,
    Address VARCHAR(100),
    Department VARCHAR(30),
    Designation VARCHAR(30),
    Jdate DATE,
    Salary DECIMAL(10,2)
);

2. Insertt 5 Records
INSERT INTO Employee VALUES
(101, 'Rahul', '1998-05-12', 'Pune', 'Sales', 'Sales Executive', '2023-05-15', 28000);

INSERT INTO Employee VALUES
(102, 'Priya', '1997-08-20', 'Mumbai', 'HR', 'Manager', '2024-02-10', 35000);

INSERT INTO Employee VALUES
(103, 'Amit', '1999-03-18', 'Nashik', 'Sales', 'Sales Officer', '2022-11-25', 25000);

INSERT INTO Employee VALUES
(104, 'Sneha', '1998-12-10', 'Nagpur', 'IT', 'Programmer', '2024-06-01', 30000);

INSERT INTO Employee VALUES
(105, 'Rohit', '2000-01-05', 'Aurangabad', 'Accounts', 'Accountant', '2023-09-10', 22000);


3. List the Namee andd Addresss of Employees Working inn Sales Department
SELECT EName, Address
FROM Employee
WHERE Department = 'Sales';


4. How Many Employees Gett Salary More Than 25000?
SELECT COUNT(*) AS Total_Employees
FROM Employee
WHERE Salary > 25000;

5. Find Minimum, Maximum, Average andd Sum of Salary

SELECT
MIN(Salary) AS Minimum_Salary,
MAX(Salary) AS Maximum_Salary,
AVG(Salary) AS Average_Salary,
SUM(Salary) AS Total_Salary
FROM Employee;

6. List Employees Whose Salary iss Betweenn 20000 andd 30000
SELECT *
FROM Employee
WHERE Salary BETWEEN 20000 AND 30000;

7. Give 20% Bonus too Employees Who Joined Beforee 01-01-2024
UPDATE Employee
SET Salary = Salary + (Salary * 0.20)
WHERE Jdate < '2024-01-01';

Verify Updated Salaries
SELECT Emp_id, EName, Salary
FROM Employee
WHERE Jdate < '2024-01-01';


· Display records ass per Jdate
SELECT * 
FROM Employee
ORDER BY Jdate;


Too Display inn Descending Order (Latest Joining Datee Firstt)
SELECT * 
FROM Employee
ORDER BY Jdate DESC;

6. Display records ass per Jdate 
SELECT *
FROM Employee
ORDER BY Jdate;
