-- LAB-6 
USE CSE_3B_314

--MATH FUNCTIONS

--PART A 
--1. Display the result of 5 multiply by 30.
SELECT 5 * 30 AS MULTIPLY;

--2. Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25) AS ABSOLUTE_VALUE
SELECT ABS(25) AS ABSOLUTE_VALUE
SELECT ABS(-50) AS ABSOLUTE_VALUE
SELECT ABS(50) AS ABSOLUTE_VALUE

--3. Find smallest integer value that is 
--greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2) AS CEILVALUE
SELECT CEILING(25.7) AS CEILVALUE
SELECT CEILING(-25.2) AS CEILVALUE

--4. Find largest integer value that is 
--smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2) AS FLOORVALUE
SELECT FLOOR(25.7) AS FLOORVALUE
SELECT FLOOR(-25.2) AS FLOORVALUE

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT 5 % 2 AS REMAINDER
SELECT 5 % 3 AS REMAINDER

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(3,2) AS POWER_VALUE
SELECT POWER(4,3) AS POWER_VALUE

--7. Find out the square root of 25, 30 and 50.
SELECT SQRT(25) AS SQUARE_ROOT
SELECT SQRT(30) AS SQUARE_ROOT
SELECT SQRT(50) AS SQUARE_ROOT

--8. Find out the square of 5, 15, and 25.
SELECT SQUARE(5) AS SQUARE_VALUE
SELECT SQUARE(15) AS SQUARE_VALUE
SELECT SQUARE(25) AS SQUARE_VALUE

--9. Find out the value of PI.
SELECT PI() AS PI_VALUE

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732,2) AS ROUNDOFF
SELECT ROUND(157.732,0) AS ROUNDOFF
SELECT ROUND(157.732,-2) AS ROUNDOFF

--11. Find out exponential value of 2 and 3.
SELECT EXP(2) AS EXPONENTIAL
SELECT EXP(3) AS EXPONENTIAL

--12. Find out logarithm having base e of 10 and 2.
SELECT LOG(10) AS LOGARITH
SELECT LOG(2) AS LOGARITH

--13. Find out logarithm having base b having value 10 of 5 and 100.
SELECT LOG10(5) AS LOGARITH_BASE_10
SELECT LOG10(100) AS LOGARITH_BASE_10

--14. Find sine, cosine and tangent of 3.1415.
SELECT SIN(3.1415) AS SINE
SELECT COS(3.1415) AS COSINE
SELECT TAN(3.1415) AS TANGENT

--15. Find sign of -25, 0 and 25.
SELECT SIGN(-25) AS SIGN_VALUE
SELECT SIGN(0) AS SIGN_VALUE
SELECT SIGN(25) AS SIGN_VALUE

--16. Generate random number using function.SELECT RAND() AS RANDOM_VALUE--> PART - BCREATE TABLE EMP_MASTER(	EMPNO INT,	EMPNAME VARCHAR(50),	JDATE DATE,	SALARY INT,	COMIS INT,	CITY VARCHAR(50),	DCODE VARCHAR(50))INSERT INTO EMP_MASTER(EMPNO,EMPNAME,JDATE,SALARY,COMIS,CITY,DCODE)VALUES(101,'KEYUR','5-JAN-02',12000,4500,'RAJKOT','3@G'),(102,'HARDIK','15-FEB-04',14000,2500,'AHMEDABAD','3@'),(103,'KAJAL','14-MAR-06',15000,3000,'BARODA','3-GD'),(104,'BHOOMI','23-JUN-05',12500,1000,'AHMEDABAD','1A3D'),(105,'HARMIT','15-FEB-04',14000,2000,'RAJKOT','312A')--1. Display the result of Salary plus Commission.
SELECT *, (SALARY + COMIS) AS SALARY_PLUS_COMISSION FROM EMP_MASTER;

--2. Find smallest integer value that is 
--greater than or equal to 55.2, 35.7 and -55.2.
SELECT CEILING(55.2) AS CEIL_VALUE
SELECT CEILING(35.7) AS CEIL_VALUE
SELECT CEILING(-55.2) AS CEIL_VALUE

--3. Find largest integer value that is 
--smaller than or equal to 55.2, 35.7 and -55.2.

SELECT FLOOR(55.2) AS FLOOR_VALUE
SELECT FLOOR(35.7) AS FLOOR_VALUE
SELECT FLOOR(-55.2) AS FLOOR_VALUE

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
SELECT 55 % 2 AS REMAINDER_VALUE
SELECT 55 % 3 AS REMAINDER_VALUE

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
SELECT POWER(23,2) AS POWER_VALUE
SELECT POWER(14,3) AS POWER_VALUE

--> PART - C

--1. Find out the square root of 36, 49 and 81.
SELECT SQRT(36) AS SQUAREROOT_VALUE
SELECT SQRT(49) AS SQUAREROOT_VALUE
SELECT SQRT(81) AS SQUAREROOT_VALUE

--2. Find out the square of 3, 9, and 12.
SELECT SQUARE(3) AS SQUARE_VALUE
SELECT SQUARE(9) AS SQUARE_VALUE
SELECT SQUARE(12) AS SQUARE_VALUE
SELECT SQUARE(3) AS SQUARE_VALUE

--3. Find out round value of 280.8952 for 2, 0 and -2 decimal points.
SELECT ROUND(280.8952,2) AS ROUNDOFF_VALUE
SELECT ROUND(280.8952,0) AS ROUNDOFF_VALUE
SELECT ROUND(280.8952,-2) AS ROUNDOFF_VALUE

--4. Find sine, cosine and tangent of 4.2014.
SELECT SIN(4.2014) AS SINE_VALUE
SELECT COS(4.2014) AS COSINE_VALUE
SELECT TAN(4.2014) AS TANGENT_VALUE

--5. Find sign of -55, 0 and 95.
SELECT SIGN(-55) AS SIGN_VALUE
SELECT SIGN(0) AS SIGN_VALUE
SELECT SIGN(95) AS SIGN_VALUE


--> STRING FUNTIONS

--> PART - A

--1. Find the length of following. (I) NULL (II) � hello � (III) Blank
SELECT LEN('NULL') AS LENGTH_VALUE
SELECT LEN('HELLO') AS LENGTH_VALUE
SELECT LEN('BLANK') AS LENGTH_VALUE

--2. Display your name in lower & upper case.
SELECT UPPER('MAYANK PATEL') AS CASE_VALUE
SELECT LOWER('MAYANK PATEL') AS CASE_VALUE

--3. Display first three characters of your name.
SELECT SUBSTRING('MAYANK PATEL',1,3) AS SUBSTRING_VALUE

--4. Display 3rd to 10th character of your name.
SELECT SUBSTRING('MAYANK PATEL',3,10) AS SUBSTRING_VALUE

--5. Write a query to convert �abc123efg� to �abcXYZefg� & �abcabcabc� to �ab5ab5ab5� using REPLACE.
SELECT REPLACE('ABC123EFG','123','XYZ') AS REPLACE_VALUE
SELECT REPLACE('ABCABCABC','C','5') AS REPLACE_VALUE

--6. Write a query to display ASCII code for �a�,�A�,�z�,�Z�, 0, 9.
SELECT ASCII('a') AS ASCII_VALUE
SELECT ASCII('A') AS ASCII_VALUE
SELECT ASCII('z') AS ASCII_VALUE
SELECT ASCII('Z') AS ASCII_VALUE
SELECT ASCII('0') AS ASCII_VALUE
SELECT ASCII('9') AS ASCII_VALUE

--7. Write a query to display character based on number 97, 65,122,90,48,57.
SELECT CHAR(97) AS CHARACTER_VALUE
SELECT CHAR(65) AS CHARACTER_VALUE
SELECT CHAR(122) AS CHARACTER_VALUE
SELECT CHAR(90) AS CHARACTER_VALUE
SELECT CHAR(48) AS CHARACTER_VALUE
SELECT CHAR(57) AS CHARACTER_VALUE

--8. Write a query to remove spaces from left of a given string �hello world �.
SELECT LTRIM('   HELLO WORLD') AS SPACE_LEFTTRIM_VALUE

--9. Write a query to remove spaces from right of a given string � hello world �.
SELECT RTRIM('HELLO WORLD    ') AS SPACE_RIGHTTRIM_VALUE

--10. Write a query to display first 4 & Last 5 characters of �SQL Server�.
SELECT LEFT('SQL SERVER',4) AS LEFT_DISPLAY_VALUE
SELECT RIGHT('SQL SERVER',5) AS RIGHT_DISPLAY_VALUE

--11. Write a query to convert a string �1234.56� to number (Use cast and convert function).
SELECT CAST(1234.56 AS INT) AS CAST_VALUE
SELECT CONVERT(INT, 1234.56) AS CONVERT_VALUE

--12. Write a query to convert a float 10.58 to 
--integer (Use cast and convert function).
SELECT CAST(10.58 AS INT) AS CAST_VALUE
SELECT CONVERT(INT, 10.58) AS CONVERT_VALUE

--13. Put 10 space before your name using function.
SELECT SPACE(10) + 'MAYANK PATEL' AS SPACE_VALUE
 
--14. Combine two strings using + sign as well as CONCAT ().
SELECT 'MAYANK' + SPACE(2) + 'PATEL' AS CONCAT_WITH_PLUS_VALUE
SELECT CONCAT('MAYANK','PATEL') AS CONCAT_FUNC_VALUE

--15. Find reverse of �Darshan�.
SELECT REVERSE('DARSHAN') AS REVERSE_VALUE 

--16. Repeat your name 3 times.
SELECT REPLICATE('MAYANK PATEL',3) AS REPEAT_VALUE 

--> PART - B

--1. Find the length of FirstName and LastName columns


--2. Display FirstName and LastName columns in lower & upper case.
--3. Display first three characters of FirstName column.
--4. Display 3rd to 10th character of Website column.
--5. Write a query to display first 4 & Last 5 characters of Website column.

--------Date Functions--------

--Part-A

--1. Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS [TODAY DATE]

--2. Write a query to find new date after 365 day with reference to today.
SELECT GETDATE()+365

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT FORMAT(GETDATE(),'MMM dd yyyy hh:mm tt')

--4. Display the current date in a format that appears as 03 Jan 1995.
SELECT  FORMAT(GETDATE(),'dd MMM yyyy')

--5. Display the current date in a format that appears as Jan 04, 96.
SELECT  FORMAT(GETDATE(),'MMM dd , yy')

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(MONTH , '2008-12-31' , '2009-3-09')

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
SELECT DATEDIFF(YEAR , '25-JAN-12' , '14-SEP-10')

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(HOUR , '25-Jan-12 7:00' , '26-Jan-12 10:30')

--9. Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT DAY('2016-05-12') , MONTH('2016-05-12') , YEAR('2016-05-12')

--10. Write a query that adds 5 years to current date.
SELECT DATEADD(YEAR , 5, GETDATE())

--11. Write a query to subtract 2 months from current date.
SELECT DATEADD(MONTH , -2 , GETDATE())

--12. Extract month from current date using datename () and datepart () function.
SELECT DATENAME(MONTH , GETDATE()) , DATEPART(MONTH , GETDATE())

--13. Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE())

--14. Calculate your age in years and months.
SELECT DATEDIFF(MONTH, '2006-07-07' , GETDATE()) , DATEDIFF(YEAR, '2006-07-07' , GETDATE())
