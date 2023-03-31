use lawsystem;
CREATE TABLE Cases(Case_id varchar(25),Case_name varchar(100),Case_Status varchar(50),PRIMARY KEY (Case_id));
Alter table Cases ADD lawyer_id varchar(25);
Alter table Cases ADD Court_id varchar(25) ;


Alter table document ADD Case_id varchar(25);

 --- for changing the datatype of the created table ;
Alter table Dept MODIFY Dept_no varchar(05);
---                     ADDING CONSTRAINT IN THE EACH TABLE LIKE UNIQUE,CHECK,PRIMARY KEY ,FOREIGN KEY,DEFAULT,NOT NULL
---  ALTER TABLE Student ADD UNIQUE(Roll_No);
--- ALTER TABLE Student ALTER Address SET DEFAULT ′Dehradun′;
ALTER TABLE Student ADD PRIMARY KEY (Roll_No);


ALTER TABLE Cases ADD UNIQUE (Case_id);
ALTER TABLE CASES ALTER Case_Status SET DEFAULT 'OPEN';
 
ALTER TABLE COURT ADD UNIQUE(Court_id);

ALTER TABLE CLIENT ADD UNIQUE(Client_id);
ALTER TABLE Client ALTER Client_address set default 'DEHRADUN';

ALTER TABLE LAWYER ADD UNIQUE(LAWYER_ID);
ALTER TABLE LAWYER ALTER lawyer_type set default 'CIVIL';

ALTER TABLE DOCUMENT ADD UNIQUE(DOC_ID);
ALTER TABLE DOCUMENT ALTER DOC_NAME set default 'CASE BRIEF';
------   						AGGREGATE  FUNCTION 
SELECT MAX(Roll_No) FROM Students;
SELECT AVG(Marks) FROM Students WHERE Program = “MCA”;
SELECT MIN(Roll_No), Name FROM Students WHERE Program = “MCA”;
SELECT COUNT(Roll_No) FROM Students WHERE Address = NULL;
SELECT DISTINCT(Address) FROM Students WHERE Program = “MCA”;
SELECT * FROM Students WHERE Address=“Dehradun” LIMIT 10;

SELECT * FROM cases where Case_Status="open" LIMIT 5;
SELECT COUNT(Case_id) from Cases;
SELECT avg(Case_id) from Cases;
SELECT distinct(Case_name) from Cases;
SELECT max(Case_id) from Cases;
SELECT MIN(Case_id) from Cases;

SELECT * FROM lawyer LIMIT 5;
SELECT COUNT(Lawyer_id) from lawyer;
SELECT avg(lawyer_id) from lawyer;
 SELECT MAX(lawyer_id) from lawyer;
 SELECT MIN(lawyer_id) from lawyer;
 SELECT DISTINCT(lawyer_Name) from lawyer;


SELECT * FROM CLIENT LIMIT 5;
SELECT COUNT(client_id) from client;
 SELECT avg(client_id) from client;
 SELECT MAX(client_id) from client;
 SELECT MIN(client_id) from client;
 
 
SELECT * FROM DOCUMENT LIMIT 5;
SELECT COUNT(doc_id) from DOCUMENT;
SELECT avg(doc_id) from DOCUMENT;
SELECT max(doc_id) from DOCUMENT;
SELECT min(doc_id) from DOCUMENT;
SELECT DISTINCT(doc_name) from DOCUMENT;

SELECT * FROM  court LIMIT 5;
SELECT COUNT( court_id) from court;
SELECT MAX( court_id) from court;
SELECT MIN( court_id) from court;
SELECT AVG( court_id) from court;
SELECT DISTINCT( court_NAME) from court;






