USE CSE_3B_314
--> LAB-10 <--
-- Create the STUDENT_INFO table and insert data (for reference)
CREATE TABLE STUDENT_INFO (
    RNo INT,
    Name VARCHAR(50),
    Branch VARCHAR(50),
    SPI DECIMAL(5,2),
    Bklog INT
);

-- Insert data into STUDENT_INFO table
INSERT INTO STUDENT_INFO (RNo, Name, Branch, SPI, Bklog) 
VALUES
	(101, 'Raju', 'CE', 8.80, 0),
	(102, 'Amit', 'CE', 2.20, 3),
	(103, 'Sanjay', 'ME', 1.50, 6),
	(104, 'Neha', 'EC', 7.65, 1),
	(105, 'Meera', 'EE', 5.52, 2),
	(106, 'Mahesh', 'EC', 4.50, 3)

SELECT *FROM STUDENT_INFO

--> Part � A: <--

--1. Create a view Personal with all columns.

CREATE VIEW Personal AS
SELECT *
FROM STUDENT_INFO;

--VIEW
SELECT *FROM Personal

--2. Create a view Student_Details having columns Name, Branch & SPI. 
SELECT *FROM Student_Details

--3. Create a view AcademicData having columns RNo, Name, Branch.
--letters.
SELECT *FROM Student_Details

--8. Delete a student whose roll number is 104 from AcademicData view.
SELECT *
FROM STUDENT_INFO
WHERE Branch = 'CE';

--VIEW
SELECT * FROM Computerview

--> PART-C <--

--1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
SELECT NAME,SPI 
FROM STUDENT_INFO
WHERE SPI<= 5

--VIEW 
SELECT * FROM RESULT_EC

--2. Update the result of student MAHESH to 4.90 in Result_EC view.
SELECT * FROM RESULT_EC

--3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with �M� and having
--bklogs more than 5.
SELECT * FROM STU_BKLOG

--4. Drop Computerview form the database.