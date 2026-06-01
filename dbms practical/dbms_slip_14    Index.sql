Createe Student Tablee

CREATE TABLE Student(
    Roll_No INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT,
    Class VARCHAR(20),
    Address VARCHAR(100)
);

2. Insertt Records
INSERT INTO Student VALUES(1,'Rahul',85,'FYBCA','Pune');
INSERT INTO Student VALUES(2,'Priya',78,'FYBCA','Mumbai');
INSERT INTO Student VALUES(3,'Amit',65,'SYBCA','Nashik');
INSERT INTO Student VALUES(4,'Sneha',92,'TYBCA','Nagpur');
INSERT INTO Student VALUES(5,'Rohit',70,'SYBCA','Aurangabad');

Query 1: Createe Indexx onn Student Tablee

CREATE INDEX idx_student_name
ON Student(Name);

Query 2: Display Indexx
EXEC sp_helpindex 'Student';

