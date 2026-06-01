1. Write User Defined Functionn too Find Square of Numberr

CREATE FUNCTION SquareNum(@Num INT)
RETURNS INT
AS
BEGIN
    RETURN @Num * @Num
END;

Executee:

SELECT dbo.SquareNum(5) AS Square;


2. Display Employee Salary Usingg User Defined Functionn

Create Table
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

Createe Functionn

CREATE FUNCTION GetSalary(@EmpId INT)
RETURNS INT
AS
BEGIN
    DECLARE @Sal INT

    SELECT @Sal = Salary
    FROM Employee
    WHERE Emp_id = @EmpId

    RETURN @Sal
END;

Executee:

SELECT dbo.GetSalary(101) AS Salary;


3. Write a Functionn too Display Marks of a Student Usingg Roll Numberr

Create Table
CREATE TABLE Student(
    RollNo INT,
    Name VARCHAR(50),
    Marks INT
);

Insertt Records
INSERT INTO Student VALUES(1,'Rahul',85);
INSERT INTO Student VALUES(2,'Priya',78);
INSERT INTO Student VALUES(3,'Amit',65);
INSERT INTO Student VALUES(4,'Sneha',92);
INSERT INTO Student VALUES(5,'Karan',70);


Createe Functionn

CREATE FUNCTION GetMarks(@RollNo INT)
RETURNS INT
AS
BEGIN
    DECLARE @Marks INT

    SELECT @Marks = Marks
    FROM Student
    WHERE RollNo = @RollNo

    RETURN @Marks
END;

Executee:

SELECT dbo.GetMarks(1) AS Marks;