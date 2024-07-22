-- Part B: Additional Queries
-- 1. Count the number of employees living in Rajkot.
SELECT COUNT(*) AS Employees_in_Rajkot FROM EMP WHERE City = 'Rajkot';

-- 2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(Salary) - MIN(Salary) AS Difference FROM EMP;

-- 3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(*) AS Employees_Hired_Before_Jan_91 FROM EMP WHERE JoiningDate < '1991-01-01';

-- Part C: Further Queries
-- 1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(*) AS Employees_in_Rajkot_or_Baroda FROM EMP WHERE City IN ('Rajkot', 'Baroda');

-- 2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(*) AS IT_Employees_Hired_Before_Jan_91 FROM EMP WHERE JoiningDate < '1991-01-01' AND Department = 'IT';

-- 3. Find the Joining Date wise Total Salaries.
SELECT JoiningDate, SUM(Salary) AS Total_Salaries FROM EMP GROUP BY JoiningDate;

-- 4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT Department, City, MAX(Salary) AS Maximum_Salary
FROM EMP
WHERE City LIKE 'R%'
GROUP BY Department, City;