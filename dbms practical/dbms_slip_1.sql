#Createe a tablee Student withh fields:
(RollNo, Name, Class, Marks).


CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Class VARCHAR(20),
    Marks INT
);


2. Insertt 5 Records
INSERT INTO Student VALUES (1, 'Rahul', 'FYBCA', 85);
INSERT INTO Student VALUES (2, 'Priya', 'FYBCA', 78);
INSERT INTO Student VALUES (3, 'Amit', 'FYBCA', 65);
INSERT INTO Student VALUES (4, 'Sneha', 'FYBCA', 92);
INSERT INTO Student VALUES (5, 'Rohit', 'FYBCA', 70);

3. Display All Records
SELECT * FROM Student;

4. Display Students Who Scored More Than 75 Marks
SELECT * FROM Student
WHERE Marks > 75;

5. Updatee Marks of a Particular Student
UPDATE Student
SET Marks = 90
WHERE RollNo = 1;

Too verify:
SELECT * FROM Student
WHERE RollNo = 1;

6. Delete a Record Using RollNo

Example: Deletee student withh RollNo = 5.
DELETE FROM Student
WHERE RollNo = 5;

Too verify:
SELECT * FROM Student;

7. Addd Addresss Column
ALTER TABLE Student
ADD Address VARCHAR(100);

Too checkk the modified tablee:
DESC Student;