CREATE TABLE EMPLOYEE
(
NAME VARCHAR(20),
CITY VARCHAR(20),
AGE INT
)
INSERT INTO EMPLOYEE
VALUES
('Jay Patel' ,'Rajkot' ,30),
('Rahul Dave','Baroda' ,35),
('Jeet Patel','Surat',31),
('Vijay Raval','Rajkot',30)

SELECT * INTO EMPLOYEE_DETAILS FROM EMPLOYEE

SELECT NAME,CITY INTO EMPLOYEE_DATA FROM EMPLOYEE
WHERE 1=2

SELECT * INTO EMPLOYEE_INFO FROM EMPLOYEE
WHERE 1=2