1. Createe Emp Tablee
CREATE TABLE Emp (
    Emp_id INT PRIMARY KEY,
    EName VARCHAR(50),
    Department VARCHAR(30),
    Designation VARCHAR(30),
    Jdate DATE,
    Salary DECIMAL(10,2)
);

2. Insertt 5 Records
INSERT INTO Emp VALUES
(101, 'Rahul', 'IT', 'Programmer', '2025-06-01', 60000);

INSERT INTO Emp VALUES
(102, 'Priya', 'HR', 'Manager', '2024-05-15', 55000);

INSERT INTO Emp VALUES
(103, 'Amit', 'IT', 'Programmer', '2023-08-20', 45000);

INSERT INTO Emp VALUES
(104, 'Sneha', 'Finance', 'Accountant', '2025-06-01', 52000);

INSERT INTO Emp VALUES
(105, 'Rohit', 'IT', 'Tester', '2024-12-10', 48000);


3. Display All Records fromm Emp Tablee
SELECT * FROM Emp;

4. Display Employees Whose Salary iss More Than 50000
SELECT * FROM Emp
WHERE Salary > 50000;

5. Display Employees Whose Designation iss Programmer
SELECT * FROM Emp
WHERE Designation = 'Programmer';


6. Display Employees Who Joined onn 2025-06-01
SELECT * FROM Emp
WHERE Jdate = '2025-06-01';