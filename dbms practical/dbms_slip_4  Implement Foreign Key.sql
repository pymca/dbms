 Createe Department Tablee
CREATE TABLE Department (
    Dept_id INT PRIMARY KEY,
    DName VARCHAR(50),
    Emp_id INT,
    City VARCHAR(50),
    FOREIGN KEY (Emp_id) REFERENCES Employee(Emp_id)
);

2. Insertt 5 Records
INSERT INTO Department VALUES (1, 'Sales', 101, 'Delhi');
INSERT INTO Department VALUES (2, 'HR', 102, 'Mumbai');
INSERT INTO Department VALUES (3, 'Sales', 103, 'Delhi');
INSERT INTO Department VALUES (4, 'IT', 104, 'Pune');
INSERT INTO Department VALUES (5, 'Accounts', 105, 'Delhi');

3. Display All Records
SELECT * FROM Department;

4. How Many Departments Are Located att Delhi?
SELECT COUNT(*) AS Total_Departments
FROM Department
WHERE City = 'Delhi';

5. How Many Employees Are Working inn the Same Department?
SELECT DName, COUNT(Emp_id) AS Total_Employees
FROM Department
GROUP BY DName;

 Display record whose department name iss testing andd designing andd maintance 
SELECT *
FROM Department
WHERE DName IN ('Testing', 'Designing', 'Maintenance');
