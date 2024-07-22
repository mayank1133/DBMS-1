-- Create the EMP table
CREATE TABLE EMP (
    EID INT PRIMARY KEY,
    EName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    JoiningDate DATE,
    City VARCHAR(50)
);

-- Insert records into the EMP table
INSERT INTO EMP (EID, EName, Department, Salary, JoiningDate, City)
VALUES
(101, 'Rahul', 'Admin', 56000, '1990-01-01', 'Rajkot'),
(102, 'Hardik', 'IT', 18000, '1990-09-25', 'Ahmedabad'),
(103, 'Bhavin', 'HR', 25000, '1991-05-14', 'Baroda'),
(104, 'Bhoomi', 'Admin', 39000, '1991-02-08', 'Rajkot'),
(105, 'Rohit', 'IT', 17000, '1990-07-23', 'Jamnagar'),
(106, 'Priya', 'IT', 9000, '1990-10-18', 'Ahmedabad'),
(107, 'Bhoomi', 'HR', 34000, '1991-12-25', 'Rajkot');

-- 1. Display the Highest, Lowest salary. Label the columns Maximum, Minimum respectively.
SELECT MAX(Salary) AS Maximum, MIN(Salary) AS Minimum
FROM EMP;

-- 2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.
SELECT SUM(Salary) AS Total_Sal, AVG(Salary) AS Average_Sal
FROM EMP;

-- 3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(*) AS Total_Employees
FROM EMP;

-- 4. Find highest salary from Rajkot city.
SELECT MAX(Salary) AS Highest_Salary_Rajkot
FROM EMP
WHERE City = 'Rajkot';

-- 5. Give maximum salary from IT department.
SELECT MAX(Salary) AS Maximum_Salary_IT
FROM EMP
WHERE Department = 'IT';

-- 6. Count employees whose joining date is after 8-Feb-91.
SELECT COUNT(*) AS Employees_Joining_After_Feb_8_91
FROM EMP
WHERE JoiningDate > '1991-02-08';

-- 7. Display average salary of Admin department.
SELECT AVG(Salary) AS Avg_Salary_Admin
FROM EMP
WHERE Department = 'Admin';

-- 8. Display total salary of HR department.
SELECT SUM(Salary) AS Total_Salary_HR
FROM EMP
WHERE Department = 'HR';

-- 9. Count total number of cities of employees without duplication.
SELECT COUNT(DISTINCT City) AS Total_Cities
FROM EMP;

-- 10. Count unique departments.
SELECT COUNT(DISTINCT Department) AS Unique_Departments
FROM EMP;

-- 11. Give minimum salary of employees who belong to Ahmedabad.
SELECT MIN(Salary) AS Minimum_Salary_Ahmedabad
FROM EMP
WHERE City = 'Ahmedabad';

-- 12. Find city wise highest salary.
SELECT City, MAX(Salary) AS Highest_Salary
FROM EMP
GROUP BY City;

-- 13. Find department wise lowest salary.
SELECT Department, MIN(Salary) AS Lowest_Salary
FROM EMP
GROUP BY Department;

-- 14. Display city with the total number of employees belonging to each city.
SELECT City, COUNT(*) AS Total_Employees
FROM EMP
GROUP BY City;

-- 15. Give total salary of each department of EMP table.
SELECT Department, SUM(Salary) AS Total_Salary
FROM EMP
GROUP BY Department;

-- 16. Give average salary of each department of EMP table without displaying the respective department name.
SELECT AVG(Salary) AS Avg_Salary
FROM EMP
GROUP BY Department;

--PART-B
-- 1. Count the number of employees living in Rajkot.
SELECT COUNT(*) AS Employees_In_Rajkot
FROM EMP
WHERE City = 'Rajkot';

-- 2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(Salary) - MIN(Salary) AS Difference
FROM EMP;

-- 3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(*) AS Employees_Hired_Before_Jan_1_91
FROM EMP
WHERE JoiningDate < '1991-01-01';

--PART-C
-- 1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(*) AS Employees_In_Rajkot_Or_Baroda
FROM EMP
WHERE City IN ('Rajkot', 'Baroda');

-- 2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(*) AS IT_Employees_Hired_Before_Jan_1_91
FROM EMP
WHERE JoiningDate < '1991-01-01' AND Department = 'IT';

-- 3. Find the Joining Date wise Total Salaries.
SELECT JoiningDate, SUM(Salary) AS Total_Salary
FROM EMP
GROUP BY JoiningDate
ORDER BY JoiningDate;

-- 4. Find the Maximum salary department & city wise in which city name starts with 'R'.
SELECT Department, City, MAX(Salary) AS Maximum_Salary
FROM EMP
WHERE City LIKE 'R%'
GROUP BY Department, City;
