-- Create COMPUTER table
CREATE TABLE COMPUTER (
    RollNo INT,
    Name VARCHAR(50)
);

-- Insert data into COMPUTER table
INSERT INTO COMPUTER (RollNo, Name) VALUES
(101, 'Ajay'),
(109, 'Haresh'),
(107, 'Ajay'),
(115, 'Mahesh'),
(115, 'Manish');

-- Create ELECTRICAL table
CREATE TABLE ELECTRICAL (
    RollNo INT,
    Name VARCHAR(50)
);

-- Insert data into ELECTRICAL table
INSERT INTO ELECTRICAL (RollNo, Name) VALUES
(105, 'Ajay'),
(107, 'Ajay'),
(115, 'Manish');

-- Create EMP_DATA table
CREATE TABLE EMP_DATA (
    EID INT,
    Name VARCHAR(50)
);

-- Insert data into EMP_DATA table
INSERT INTO EMP_DATA (EID, Name) VALUES
(1, 'Ajay'),
(9, 'Haresh'),
(5, 'Manish');

-- Create CUSTOMER table
CREATE TABLE CUSTOMER (
    CID INT,
    Name VARCHAR(50)
);

-- Insert data into CUSTOMER table
INSERT INTO CUSTOMER (CID, Name) VALUES
(5, 'Ajay'),
(7, 'Manish'),
(1, 'Ajay');

-- Part A: Queries
-- 1. Display name of students who are either in Computer or in Electrical.
SELECT Name FROM COMPUTER
UNION
SELECT Name FROM ELECTRICAL;

-- 2. Display name of students who are either in Computer or in Electrical including duplicate data.
SELECT Name FROM COMPUTER
UNION ALL
SELECT Name FROM ELECTRICAL;

-- 3. Display name of students who are in both Computer and Electrical.
SELECT Name FROM COMPUTER
INTERSECT
SELECT Name FROM ELECTRICAL;

-- 4. Display name of students who are in Computer but not in Electrical.
SELECT Name FROM COMPUTER
EXCEPT
SELECT Name FROM ELECTRICAL;

-- 5. Display name of students who are in Electrical but not in Computer.
SELECT Name FROM ELECTRICAL
EXCEPT
SELECT Name FROM COMPUTER;

-- 6. Display all the details of students who are either in Computer or in Electrical.
SELECT * FROM COMPUTER
UNION
SELECT * FROM ELECTRICAL;

-- 7. Display all the details of students who are in both Computer and Electrical.
SELECT C.RollNo AS Computer_RollNo, C.Name AS Computer_Name, E.RollNo AS Electrical_RollNo, E.Name AS Electrical_Name
FROM COMPUTER C
JOIN ELECTRICAL E ON C.Name = E.Name;

-- Part B: Queries
-- 1. Display name of persons who are either Employee or Customer.
SELECT Name FROM EMP_DATA
UNION
SELECT Name FROM CUSTOMER;

-- 2. Display name of persons who are either Employee or Customer including duplicate data.
SELECT Name FROM EMP_DATA
UNION ALL
SELECT Name FROM CUSTOMER;

-- 3. Display name of persons who are both Employee as well as Customer.
SELECT Name FROM EMP_DATA
INTERSECT
SELECT Name FROM CUSTOMER;

-- 4. Display name of persons who are Employee but not Customer.
SELECT Name FROM EMP_DATA
EXCEPT
SELECT Name FROM CUSTOMER;

-- 5. Display name of persons who are Customer but not Employee.
SELECT Name FROM CUSTOMER
EXCEPT
SELECT Name FROM EMP_DATA;

-- Part C: Queries
-- 1. Display ID and Name of persons who are either Employee or Customer.
SELECT EID AS ID, Name FROM EMP_DATA
UNION
SELECT CID AS ID, Name FROM CUSTOMER;

-- 2. Display ID and Name of persons who are either Employee or Customer including duplicate data.
SELECT EID AS ID, Name FROM EMP_DATA
UNION ALL
SELECT CID AS ID, Name FROM CUSTOMER;

-- 3. Display ID and Name of persons who are both Employee as well as Customer.
SELECT EID AS ID, Name FROM EMP_DATA
INTERSECT
SELECT CID AS ID, Name FROM CUSTOMER;

-- 4. Display ID and Name of persons who are Employee but not Customer.
SELECT EID AS ID, Name FROM EMP_DATA
EXCEPT
SELECT CID AS ID, Name FROM CUSTOMER;

-- 5. Display ID and Name of persons who are Customer but not Employee.
SELECT CID AS ID, Name FROM CUSTOMER
EXCEPT
SELECT EID AS ID, Name FROM EMP_DATA;
