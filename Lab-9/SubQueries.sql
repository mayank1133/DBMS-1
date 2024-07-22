CREATE TABLE STUDENT_DATA (
    No INT,
    Name VARCHAR(50),
    City VARCHAR(50),
    DID INT
);

-- Inserting sample data into STUDENT_DATA table
INSERT INTO STUDENT_DATA (No, Name, City, DID) VALUES
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);

CREATE TABLE ACADEMIC (
    Rno INT,
    SPI DECIMAL(4, 1),
    Bklog INT
);

-- Inserting sample data into ACADEMIC table
INSERT INTO ACADEMIC (Rno, SPI, Bklog) VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);

CREATE TABLE DEPARTMENT (
    DID INT,
    DName VARCHAR(50)
);

-- Inserting sample data into DEPARTMENT table
INSERT INTO DEPARTMENT (DID, DName) VALUES
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');

-- Part A: Queries
-- 1. Display details of students who are from Computer department.
SELECT *
FROM STUDENT_DATA
WHERE DID = (SELECT DID FROM DEPARTMENT WHERE DName = 'Computer');

-- 2. Display names of students whose SPI is more than 8.
SELECT Name
FROM STUDENT_DATA
WHERE No IN (SELECT Rno FROM ACADEMIC WHERE SPI > 8);

-- 3. Display details of students from Computer department who belong to Rajkot city.
SELECT *
FROM STUDENT_DATA
WHERE DID = (SELECT DID FROM DEPARTMENT WHERE DName = 'Computer')
AND City = 'Rajkot';

-- 4. Find total number of students in Electrical department.
SELECT COUNT(*)
FROM STUDENT_DATA
WHERE DID = (SELECT DID FROM DEPARTMENT WHERE DName = 'Electrical');

-- 5. Display name of student who has the maximum SPI.
SELECT Name
FROM STUDENT_DATA
WHERE No = (SELECT Rno FROM ACADEMIC ORDER BY SPI DESC LIMIT 1);

-- 6. Display details of students having more than 1 backlog.
SELECT *
FROM STUDENT_DATA
WHERE No IN (SELECT Rno FROM ACADEMIC WHERE Bklog > 1);

-- Part B: Queries
-- 1. Display names of students who are either from Computer department or from Mechanical department.
SELECT Name
FROM STUDENT_DATA
WHERE DID IN (
    SELECT DID FROM DEPARTMENT WHERE DName IN ('Computer', 'Mechanical')
);

-- 2. Display names of students who are in the same department as student 102.
SELECT Name
FROM STUDENT_DATA
WHERE DID = (SELECT DID FROM STUDENT_DATA WHERE No = 102);

-- Part C: Queries
-- 1. Display names of students whose SPI is more than 9 and who are from Electrical department.
SELECT Name
FROM STUDENT_DATA
WHERE DID = (SELECT DID FROM DEPARTMENT WHERE DName = 'Electrical')
AND No IN (SELECT Rno FROM ACADEMIC WHERE SPI > 9);

-- 2. Display name of student who has the second highest SPI.
SELECT Name
FROM STUDENT_DATA
WHERE No = (
    SELECT Rno
    FROM ACADEMIC
    ORDER BY SPI DESC
    LIMIT 1 OFFSET 1
);

-- 3. Display city names where students from each branch have SPI of 9.2.
SELECT DISTINCT City
FROM STUDENT_DATA
WHERE DID IN (SELECT DID FROM DEPARTMENT WHERE DName = 'Computer')
AND No IN (SELECT Rno FROM ACADEMIC WHERE SPI = 9.2)
UNION
SELECT DISTINCT City
FROM STUDENT_DATA
WHERE DID IN (SELECT DID FROM DEPARTMENT WHERE DName = 'Electrical')
AND No IN (SELECT Rno FROM ACADEMIC WHERE SPI = 9.2)
UNION
SELECT DISTINCT City
FROM STUDENT_DATA
WHERE DID IN (SELECT DID FROM DEPARTMENT WHERE DName = 'Mechanical')
AND No IN (SELECT Rno FROM ACADEMIC WHERE SPI = 9.2);

