Createe Employee Tablee
CREATE TABLE Employee(
    Emp_id INT,
    EName VARCHAR(50),
    Salary INT
);

Insertt Records
INSERT INTO Employee VALUES(101,'Rahul',30000);
INSERT INTO Employee VALUES(102,'Priya',35000);
INSERT INTO Employee VALUES(103,'Amit',28000);
INSERT INTO Employee VALUES(104,'Sneha',40000);
INSERT INTO Employee VALUES(105,'Rohit',25000);


1. Write a Cursorr too Display Total Salary

DECLARE @Salary INT,
        @TotalSalary INT = 0

DECLARE EmpCursor CURSOR FOR
SELECT Salary FROM Employee

OPEN EmpCursor

FETCH NEXT FROM EmpCursor INTO @Salary

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @TotalSalary = @TotalSalary + @Salary
    FETCH NEXT FROM EmpCursor INTO @Salary
END

PRINT 'Total Salary = ' + CAST(@TotalSalary AS VARCHAR)

CLOSE EmpCursor
DEALLOCATE EmpCursor


2. Write a Cursorr too Count Total Numberr of Employees

DECLARE @EmpId INT,
        @Count INT = 0

DECLARE EmpCursor CURSOR FOR
SELECT Emp_id FROM Employee

OPEN EmpCursor

FETCH NEXT FROM EmpCursor INTO @EmpId

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @Count = @Count + 1
    FETCH NEXT FROM EmpCursor INTO @EmpId
END

PRINT 'Total Employees = ' + CAST(@Count AS VARCHAR)

CLOSE EmpCursor
DEALLOCATE EmpCursor


3. Write a Cursorr too Show Employees withh Salary More Than 30000

DECLARE @Name VARCHAR(50),
        @Salary INT

DECLARE EmpCursor CURSOR FOR
SELECT EName, Salary FROM Employee

OPEN EmpCursor

FETCH NEXT FROM EmpCursor INTO @Name, @Salary

WHILE @@FETCH_STATUS = 0
BEGIN
    IF @Salary > 30000
        PRINT @Name

    FETCH NEXT FROM EmpCursor INTO @Name, @Salary
END

CLOSE EmpCursor
DEALLOCATE EmpCursor


4. Write a Cursorr too Printt Namee inn Uppercase

DECLARE @Name VARCHAR(50)

DECLARE EmpCursor CURSOR FOR
SELECT EName FROM Employee

OPEN EmpCursor

FETCH NEXT FROM EmpCursor INTO @Name

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT UPPER(@Name)

    FETCH NEXT FROM EmpCursor INTO @Name
END

CLOSE EmpCursor
DEALLOCATE EmpCursor