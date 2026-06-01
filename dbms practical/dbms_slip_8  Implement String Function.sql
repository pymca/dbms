Createe Tablee
CREATE TABLE Student(
    RollNo INT,
    Name VARCHAR(50),
    Class VARCHAR(20),
    Marks INT
);

Insertt Records
INSERT INTO Student VALUES(1,'Rahul','FYBCA',85);
INSERT INTO Student VALUES(2,'Priya','FYBCA',78);
INSERT INTO Student VALUES(3,'Amit','FYBCA',65);
INSERT INTO Student VALUES(4,'Sneha','FYBCA',92);
INSERT INTO Student VALUES(5,'Karan','FYBCA',70);

Display All Student Names inn Uppercase
SELECT UPPER(Name)
FROM Student;

Display All Student Names inn Lowercase
SELECT LOWER(Name)
FROM Student;

Display Firstt 3 Characters of Each Namee
SELECT SUBSTRING(Name,1,3)
FROM Student;

Display Position of Letter 'a' inn Namee
SELECT INSTR(Name,'a')
FROM Student;

Display Lengthh of Each Student Namee
SELECT LENGTH(Name)
FROM Student;