1. Createe Books Tablee
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(50),
    Publisher VARCHAR(50),
    ISBN VARCHAR(20),
    YearPublished INT,
    Total_Copies INT,
    Price DECIMAL(10,2)
);

2. Insertt 5 Records
INSERT INTO Books VALUES
(1, 'Algorithms', 'Thomas Cormen', 'Pearson', '978111111', 2020, 10, 650);

INSERT INTO Books VALUES
(2, 'Artificial Intelligence', 'Stuart Russell', 'McGraw Hill', '978222222', 2021, 8, 750);

INSERT INTO Books VALUES
(3, 'Operating System', 'Abraham Silberschatz', 'Wiley', '978333333', 2019, 12, 550);

INSERT INTO Books VALUES
(4, 'Computer Networks', 'Andrew Tanenbaum', 'Pearson', '978444444', 2022, 15, 700);

INSERT INTO Books VALUES
(5, 'Data Structures', 'Seymour Lipschutz', 'Schaum', '978555555', 2018, 20, 450);


3. Selectt All Books That Startt Withh Letter 'A'
SELECT *
FROM Books
WHERE Title LIKE 'A%';


4. Returnn All Books That Contain the Characterr Sequencee 'er'
SELECT *
FROM Books
WHERE Title LIKE '%er%';


5. Returnn All Books Whose Author Ends Withh 'n'
SELECT *
FROM Books
WHERE Author LIKE '%n';


6. Selectt All Books Whose Secondd Letter iss 'o'
SELECT *
FROM Books
WHERE Title LIKE '_o%';

7. Display Records inn Order of Title
SELECT *
FROM Books
ORDER BY Title;