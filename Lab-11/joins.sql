USE CSE_3B_314

--> LAB-11 <--

CREATE TABLE STU_INFO (
    Rno INT,
    Name VARCHAR(50),
    Branch VARCHAR(10)
)

CREATE TABLE RESULT (
    Rno INT,
    SPI DECIMAL(3, 1)
)

CREATE TABLE EMPLOYEE_MASTER (
    EmployeeNo VARCHAR(10),
    Name VARCHAR(50),
    ManagerNo VARCHAR(10)
)

INSERT INTO STU_INFO (Rno, Name, Branch) VALUES
(101, 'Raju', 'CE'),
(102, 'Amit', 'CE'),
(103, 'Sanjay', 'ME'),
(104, 'Neha', 'EC'),
(105, 'Meera', 'EE'),
(106, 'Mahesh', 'ME')

INSERT INTO RESULT (Rno, SPI) VALUES
(101, 8.8),
(102, 9.2),
(103, 7.6),
(104, 8.2),
(105, 7.0),
(107, 8.9)

INSERT INTO EMPLOYEE_MASTER (EmployeeNo, Name, ManagerNo) VALUES
('E01', 'Tarun', NULL),
('E02', 'Rohan', 'E02'),
('E03', 'Priya', 'E01'),
('E04', 'Milan', 'E03'),
('E05', 'Jay', 'E01'),
('E06', 'Anjana', 'E04')

SELECT * FROM STU_INFO
SELECT * FROM RESULT
SELECT * FROM EMPLOYEE_MASTER
--> PART-A <--

-- 1. Combine information using Cross Join (Cartesian Product)
	SELECT STU_INFO.Rno, STU_INFO.Name, STU_INFO.Branch, RESULT.SPI
	FROM STU_INFO
	CROSS JOIN RESULT

-- 2. Inner Join on Student and Result tables
	SELECT STU_INFO.Rno, STU_INFO.Name, STU_INFO.Branch, RESULT.SPI
	FROM STU_INFO INNER JOIN RESULT 
    ON STU_INFO.Rno = RESULT.Rno;

-- 3. Left Outer Join on Student and Result tables
	SELECT STU_INFO.Rno, STU_INFO.Name, STU_INFO.Branch, RESULT.SPI
	FROM STU_INFO
	LEFT JOIN RESULT 
	ON STU_INFO.Rno = RESULT.Rno;

-- 4. Right Outer Join on Student and Result tables
	SELECT STU_INFO.Rno, STU_INFO.Name, STU_INFO.Branch, RESULT.SPI
	FROM STU_INFO RIGHT JOIN RESULT 
	ON STU_INFO.Rno = RESULT.Rno;

-- 5. Full Outer Join on Student and Result tables (MySQL workaround)
	SELECT STU_INFO.Rno, STU_INFO.Name, STU_INFO.Branch, RESULT.SPI
	FROM STU_INFO LEFT JOIN RESULT 
	ON STU_INFO.Rno = RESULT.Rno
	UNION SELECT STU_INFO.Rno, STU_INFO.Name, STU_INFO.Branch, RESULT.SPI
	FROM STU_INFO RIGHT JOIN RESULT 
	ON STU_INFO.Rno = RESULT.Rno;

-- 6. Display Rno, Name, Branch, and SPI of All Students
SELECT 
    STU_INFO.Rno, STU_INFO.Name, STU_INFO.Branch, RESULT.SPI
FROM 
    STU_INFO
INNER JOIN 
    RESULT 
ON 
    STU_INFO.Rno = RESULT.Rno;

-- 7. Display Rno, Name, Branch, and SPI of CE Branch’s Students Only
SELECT 
    STU_INFO.Rno, STU_INFO.Name, STU_INFO.Branch, RESULT.SPI
FROM 
    STU_INFO
INNER JOIN 
    RESULT 
ON 
    STU_INFO.Rno = RESULT.Rno
WHERE 
    STU_INFO.Branch = 'CE';

-- 8. Display Rno, Name, Branch, and SPI of Other Than EC Branch’s Students Only
SELECT 
    STU_INFO.Rno, STU_INFO.Name, STU_INFO.Branch, RESULT.SPI
FROM 
    STU_INFO
INNER JOIN 
    RESULT 
ON 
    STU_INFO.Rno = RESULT.Rno
WHERE 
    STU_INFO.Branch <> 'EC';

-- 9. Display Average Result of Each Branch
SELECT 
    STU_INFO.Branch, AVG(RESULT.SPI) AS Average_SPI
FROM 
    STU_INFO
INNER JOIN 
    RESULT 
ON 
   
