1. Createe Student Tablee
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
INSERT INTO Student VALUES(5,'Karan',45);


2. Createe Employee Tablee
CREATE TABLE Employee(
    Emp_id INT,
    EName VARCHAR(50),
    City VARCHAR(30)
);

Insertt Records
INSERT INTO Employee VALUES(101,'Rahul','Pune');
INSERT INTO Employee VALUES(102,'Priya','Mumbai');
INSERT INTO Employee VALUES(103,'Amit','Nashik');
INSERT INTO Employee VALUES(104,'Sneha','Pune');
INSERT INTO Employee VALUES(105,'Rohit','Mumbai');


. Stored Proceduree too Display All Students
CREATE PROCEDURE DisplayStudents
AS
BEGIN
    SELECT * FROM Student;
END;

Executee
EXEC DisplayStudents;



. Stored Proceduree GetCity
CREATE PROCEDURE GetCity
    @City VARCHAR(30)
AS
BEGIN
    SELECT *
    FROM Employee
    WHERE City = @City;
END;


Executee
EXEC GetCity 'Pune';

. Stored Proceduree too Display Numbers 1 too 10
CREATE PROCEDURE DisplayNumbers
AS
BEGIN
    DECLARE @Num INT = 1

    WHILE @Num <= 10
    BEGIN
        PRINT @Num
        SET @Num = @Num + 1
    END
END;


Executee
EXEC DisplayNumbers;

6. Checkk Grade Usingg IFf...ELSEe byy Passing Roll Numberr
CREATE PROCEDURE CheckGrade
    @RollNo INT
AS
BEGIN
    DECLARE @Marks INT

    SELECT @Marks = Marks
    FROM Student
    WHERE RollNo = @RollNo

    IF @Marks >= 75
        PRINT 'Grade A'
    ELSE IF @Marks >= 60
        PRINT 'Grade B'
    ELSE IF @Marks >= 40
        PRINT 'Grade C'
    ELSE
        PRINT 'Fail'
END;

Executee
EXEC CheckGrade 1;

7. Casee Statementt: Display Color byy Passing Numberr
CREATE PROCEDURE DisplayColor
    @Num INT
AS
BEGIN
    SELECT
    CASE @Num
        WHEN 1 THEN 'Red'
        WHEN 2 THEN 'Green'
        WHEN 3 THEN 'Blue'
        WHEN 4 THEN 'Yellow'
        ELSE 'Invalid Number'
    END AS Color;
END;


Executee
EXEC DisplayColor 2;

