CREATE TABLE BRANCH
(BNAME VARCHAR(20),
 CITY VARCHAR(20) 
)
INSERT INTO BRANCH (BNAME,CITY)
VALUES
('VRCE', 'NAGPUR'),
('AJNI','NAGPUR'),
('KAROLBAGH','DELHI'),
('CHANDI','DELHI'),
('DHARAMPETH','NAGPUR'),
('M.G. ROAD','BANGLORE'),
('ANDHERI','BOMBAY'),
('VIRAR','BOMBAY'),
('NEHRUPLACE','DELHI'),
('POWAI','BOMBAY') 

INSERT INTO CUSTOMERS (CNAME,CITY)
VALUES
('ANIL','CALCUTTA'),
('SUNIL','DELHI'),
('MEHUL','BARODA'),
('MANDAR','PATNA'),
('MADHURI','NAGPUR'),
('PRAMOD','NAGPUR'),
('SANDIP','SURAT'),
('SHIVANI','BOMBAY'),
('KRANTI','BOMBAY'),
('NAREN','BOMBAY') 

CREATE TABLE BORROW
(LOANNO INT,
CNAME VARCHAR(20),
BNAME VARCHAR(20),
AMOUNT DECIMAL(8,2) 
)
INSERT INTO BORROW (LOANNO,CNAME,BNAME,AMOUNT)
VALUES
(201,'ANIL','VRCE',1000.00),
(206,'MEHUL','AJNI',5000.00),
(311,'SUNIL','DHARAMPETH',3000.00),
(321,'MADHURI','ANDHERI',2000.00),
(375,'PRAMOD','VIRAR',8000.00),
(481,'KRANTI','NEHRU PLACE',3000.00)