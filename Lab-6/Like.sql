CREATE TABLE STUDENT
(
STUID INT,
FIRSTNAME VARCHAR(20),
LastName VARCHAR(25),
Website VARCHAR(50),
City VARCHAR(25),
Address VARCHAR(100)
)
INSERT INTO STUDENT(STUID,FIRSTNAME,LastName,Website,City,Address)
VALUES
(1011, 'Keyur',' Patel',' techonthenet.com', 'Rajkot', 'A-303 ''Vasant Kunj'', Rajkot'),
(1022, 'Hardik',' Shah', 'digminecraft.com', 'Ahmedabad', '�Ram Krupa�, Raiya Road'),
(1033, 'Kajal',' Trivedi',' bigactivities.com', 'Baroda', 'Raj bhavan plot, neargarden'),
(1044, 'Bhoomi',' Gajera', 'checkyourmath.com', 'Ahmedabad', '�Jig�s Home�, Narol'),
(1055, 'Harmit','Mitel',' @me.darshan.com', 'Rajkot','B-55, Raj Residency'),
(1066, 'Ashok','Jani', NULL, 'Baroda',' A502, Club House Building')

--DISPLAY WHOLE STUDENT TABLE
SELECT * FROM STUDENT

--1. Display the name of students whose name starts with �k�.
SELECT FIRSTNAME FROM STUDENT
WHERE FIRSTNAME LIKE 'K%'

--2. Display the name of students whose name consists of five characters.
SELECT FIRSTNAME FROM STUDENT
WHERE FIRSTNAME LIKE '_____'

--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.
SELECT FIRSTNAME,LastName FROM STUDENT
WHERE City LIKE '_____A'

--4. Display all the students whose last name ends with �tel�.
SELECT * FROM STUDENT
WHERE LastName LIKE '%TEL'

--5. Display all the students whose first name starts with �ha� & ends with�t�.
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE 'HA%T'

--6. Display all the students whose first name starts with �k� and third character is �y�.
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE 'K_%Y'

--7. Display the name of students having no website and name consists of five characters.
SELECT * FROM STUDENT
WHERE Website IS NULL AND FIRSTNAME LIKE '_____'

--8. Display all the students whose last name consist of �jer�. 
SELECT * FROM STUDENT
WHERE LastName LIKE '%jer%'

--9. Display all the students whose city name starts with either �r� or �b�.
SELECT * FROM STUDENT
WHERE Website IS NOT NULL 

--10. Display all the name students having websites.
SELECT * FROM STUDENT
WHERE City LIKE'%R'AND City LIKE '%B'

--11. Display all the students whose name starts from alphabet A to H.
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE '[A-H]%'

--12. Display all the students whose name�s second character is vowel.
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE '_[A,E,I,O,U]%'

--13. Display the name of students having no website and name consists of minimum five characters.
SELECT * FROM STUDENT
WHERE Website IS NOT NULL AND FIRSTNAME LIKE '_____%'

--14. Display all the students whose last name starts with �Pat�. 
SELECT * FROM STUDENT
WHERE LastName LIKE 'Pat%'

--15. Display all the students whose city name does not starts with �b�.
SELECT * FROM STUDENT
WHERE City NOT LIKE 'B%'

--PART - B :-

--1. Display all the students whose name starts from alphabet A or H.
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE '[A,H]%'

--2. Display all the students whose name�s second character is vowel and of and start with H.
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE 'H[A,E,I,O,U]%'

--3. Display all the students whose last name does not ends with �a�.
SELECT * FROM STUDENT
WHERE LastName NOT LIKE '%A'

--4. Display all the students whose first name starts with consonant.
SELECT * FROM STUDENT
WHERE FIRSTNAME NOT LIKE '[A,E,I,O,U]%'

--5. Display all the students whose website contains .net
SELECT * FROM STUDENT
WHERE Website LIKE '%.NET'

--PART - C :-

--1. Display all the students whose address consist of -.
SELECT * FROM STUDENT
WHERE Address LIKE '%-%'

--2. Display all the students whose address contains single quote or double quote.
SELECT * FROM STUDENT
WHERE Address LIKE '%''%' OR Address LIKE '%""%'

--3. Display all the students whose website contains @.
SELECT * FROM STUDENT
WHERE Website LIKE '%@%'

--4. Display all the names those are either four or five characters.
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE '_____' OR  FIRSTNAME LIKE '____'
