Createe Tablee Stud
CREATE TABLE Stud(
    Stud_id INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT,
    City VARCHAR(30)
);

Insertt Records
INSERT INTO Stud VALUES(1,'Rahul',85,'Pune');
INSERT INTO Stud VALUES(2,'Priya',78,'Mumbai');
INSERT INTO Stud VALUES(3,'Amit',65,'Nashik');
INSERT INTO Stud VALUES(4,'Sneha',92,'Pune');
INSERT INTO Stud VALUES(5,'Rohit',35,'Mumbai');

1. Createe a Stored Proceduree too Display Alll Students
CREATE PROCEDURE DisplayStudents
AS
BEGIN
    SELECT * FROM Stud;
END;

Executee
EXEC DisplayStudents;

2. Createe a Stored Proceduree Named GetCity
CREATE PROCEDURE GetCity
    @City VARCHAR(30)
AS
BEGIN
    SELECT *
    FROM Stud
    WHERE City = @City;
END;

Executee
EXEC GetCity 'Pune';

3. Display 10 Numbers
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

4. Checkk Grade Usingg Elsee Iff byy Passing Roll Number
CREATE PROCEDURE CheckGrade
    @Stud_id INT
AS
BEGIN
    DECLARE @Marks INT

    SELECT @Marks = Marks
    FROM Stud
    WHERE Stud_id = @Stud_id

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

5. Casee Statement: Display Color byy Passing Number
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
