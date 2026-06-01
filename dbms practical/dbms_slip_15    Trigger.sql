Createe Student Tablee
CREATE TABLE Student(
    Roll_No INT,
    Name VARCHAR(50),
    Marks INT,
    Class VARCHAR(20),
    Address VARCHAR(100)
);

Insertt Records
INSERT INTO Student VALUES(1,'Rahul',85,'FYBCA','Pune');
INSERT INTO Student VALUES(2,'Priya',78,'FYBCA','Mumbai');
INSERT INTO Student VALUES(3,'Amit',35,'SYBCA','Nashik');
INSERT INTO Student VALUES(4,'Sneha',92,'TYBCA','Nagpur');
INSERT INTO Student VALUES(5,'Rohit',40,'SYBCA','Aurangabad');

2. Createe Backupp Tablee
CREATE TABLE StudBackup(
    Roll_No INT,
    Name VARCHAR(50),
    Marks INT,
    Class VARCHAR(20),
    Address VARCHAR(100)
);

1. Trigger onn Insertt
CREATE TRIGGER trg_InsertStudent
ON Student
AFTER INSERT
AS
BEGIN
    INSERT INTO StudBackup
    SELECT * FROM inserted;
END;


Test
INSERT INTO Student
VALUES(6,'Karan',75,'FYBCA','Pune');


2. Trigger onn Deletee
CREATE TRIGGER trg_DeleteStudent
ON Student
AFTER DELETE
AS
BEGIN
    INSERT INTO StudBackup
    SELECT * FROM deleted;
END;


Test
DELETE FROM Student
WHERE Roll_No = 1;


3. Trigger onn Updatee
CREATE TRIGGER trg_UpdateStudent
ON Student
AFTER UPDATE
AS
BEGIN
    PRINT 'Student Record Updated';
END;


test
UPDATE Student
SET Marks = 90
WHERE Roll_No = 2;


4. Trigger too Checkk Student Pass/Fail
CREATE TRIGGER trg_CheckResult
ON Student
AFTER INSERT
AS
BEGIN
    DECLARE @Marks INT

    SELECT @Marks = Marks
    FROM inserted

    IF @Marks >= 40
        PRINT 'PASS'
    ELSE
        PRINT 'FAIL'
END;


Test
INSERT INTO Student
VALUES(7,'Neha',35,'FYBCA','Mumbai');


5. Trigger too Checkk Employee Salary

CREATE TABLE Employee(
    Emp_id INT,
    EName VARCHAR(50),
    Salary INT
);


Trigger
CREATE TRIGGER trg_CheckSalary
ON Employee
AFTER INSERT
AS
BEGIN
    DECLARE @Salary INT

    SELECT @Salary = Salary
    FROM inserted

    IF @Salary < 10000
        PRINT 'Low Salary'
    ELSE
        PRINT 'Salary Accepted'
END;


Test
INSERT INTO Employee
VALUES(101,'Rahul',8000);


6. Trigger too Convert Inserted Namee intoo Uppercase
CREATE TRIGGER trg_UpperCaseName
ON Student
AFTER INSERT
AS
BEGIN
    UPDATE Student
    SET Name = UPPER(Name)
    WHERE Roll_No IN
    (
        SELECT Roll_No
        FROM inserted
    );
END;


Test
INSERT INTO Student
VALUES(8,'nayan',80,'FYBCA','Pune');


Checkk
SELECT * FROM Student;