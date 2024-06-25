CREATE TABLE CRICKET
(
NAME VARCHAR(20),
CITY VARCHAR(20),
AGE INT
)
INSERT INTO CRICKET
VALUES

('Sachin Tendulkar', 'Mumbai', 30),
('Rahul Dravid', 'Bombay', 35),
('M. S. Dhoni' ,'Jharkhand', 31),
('Suresh Raina', 'Gujarat', 30)

SELECT * INTO WORLDCUP FROM CRICKET 
SELECT NAME,CITY INTO T20 FROM CRICKET
WHERE 1=2