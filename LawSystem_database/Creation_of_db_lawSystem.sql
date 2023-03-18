use lawsystem;
CREATE TABLE Cases(Case_id varchar(25),Case_name varchar(100),Case_Status varchar(50),PRIMARY KEY (Case_id));

CREATE TABLE Court(Court_id varchar(25),Court_name varchar(100),Court_address varchar(50),PRIMARY KEY(Court_id));

CREATE TABLE lawyer(lawyer_id varchar(25),lawyer_name varchar(100),lawyer_type varchar(50),Primary key(lawyer_id));

CREATE TABLE Client(Client_id varchar(25),Client_name varchar(50),Client_address varchar(50),Primary key(Client_id));

CREATE TABLE Document (Doc_id varchar(25),Doc_name varchar(50),Primary key(Doc_id));

--- DROP table Cases;
--- DROP table Court;
 DROP table lawyer;
--- DROP table Client; 
 --- DROP table Document;

--- relationshipTables 
Create table Cases_Client(Case_id int(10),Client_id int(10),PRIMARY KEY(Case_id,Client_id),FOREIGN KEY(Case_id) REFERENCES Cases(Case_id));
drop table LAWYER;
Create table Cases_Lawyer(Case_id int(10),lawyer_id int(10),PRIMARY KEY(Case_id,lawyer_id),FOREIGN KEY(Case_id)REFERENCES Cases(Case_id),FOREIGN KEY(lawyer_id)REFERENCES Lawyer(lawyer_id));

CREATE TABLE Cases_Court(Case_id int(10),Court_id int(10),PRIMARY KEY(Case_id,Court_id),FOREIGN KEY(Case_id) REFERENCES Cases(Case_id),FOREIGN KEY(Court_id)REFERENCES Court(Court_id));
CREATE TABLE Cases_Document(Case_id varchar(25),Doc_id varchar(25),PRIMARY KEY(Case_id,Doc_id),FOREIGN KEY(Case_id) REFERENCES Cases(Case_id),FOREIGN KEY(Doc_id) REFERENCES Document(Doc_id));

--- Insertion  into Cases 

INSERT INTO Cases (Case_id,Case_name)VALUES(1 ,'kesavananda bharti vs state of kerala');
INSERT INTO Cases (Case_id,Case_name)VALUES(2,' Maneka Gandhi vs Union of India');
INSERT INTO Cases (Case_id,Case_name)VALUES(3,' Vishaka vs State of rajasthan');
INSERT INTO Cases (Case_id,Case_name)VALUES(4,'Minera Mills ltd vs UNion of India ');

INSERT INTO Cases (Case_id,Case_name)VALUES(5 ,' ADm jabalpur vs shivakant shukla ');

INSERT INTO Cases (Case_id,Case_name)VALUES(6 ,'Bhopal gas tragedy');

INSERT INTO Cases (Case_id,Case_name)VALUES(7,' Sabarimala temple case ');
INSERT INTO Cases (Case_id,Case_name)VALUES(8,' shah bana case');
INSERT INTO Cases (Case_id,Case_name)VALUES(9 ,' Aruna shanbaug case');
INSERT INTO Cases (Case_id,Case_name)VALUES(10 ,'Nirbhaya case');

--- insertion in court table 
INSERT INTO Court(Court_id,Court_name)VALUES(1 ,'Supreme court of the USA '),(2,'Justice court'),(3,'Municiple Court'),(4,'District Court'),(5,'Administrative Court'),
(6,' Administrative Court'),(7,'Justice court') ,(8,'Court of Appeal'),(9,'Municipal Court'),(10,'Justice court');
 
--- insertion in lawyer table   

INSERT INTO Lawyer(lawyer_id,lawyer_name,lawyer_type)VALUES('L001' ,'Ram jethmalani','Criminal Law'),('L002' ,'Fail S. Nariman','Constitutional Law'),
('L003','Kk Venugopal','Corporate Law.'),('L004','Soli J.Sorabjee','International law.'),('L005','Harish salve','Taxation law.'),
('L006' ,'Gopal Subramanium','civil law'),('L007','Mukul rastogi','Commercial law.'),
('L008','Arvind Datar','Intellectual Property law.'),('L009' ,'Janak  Dwar kadas','Merger &acquistion'),('L010','P Chidambaram', 'BankerLaw');

INSERT INTO Client(Client_id,Client_name,Address) VALUES(CL1,'Sourav','Bhopal'),(CL2,'Ansh pal','Vanaras'),(CL3,'Anchal singh','Rookee'),(CL4,'Akarsh','Bengalure'),
(CL5,'Manish shahi','Gorakhpur'),(CL6,'Anurag Diwakar','Pune'),(CL7,'Sparsh','kolkata'),
(CL8,'Anubhav rajan','Mumbai'),(CL9,'Nandesh Mishra','DElhi'),(CL10,'Dheeraj','Dheradun');

INSERT INTO Document(Doc_id,Doc_Name)Values(D1,'Complaint'),(D2,'affidavit'),(D3,'Deposition'),(D4,'Jugment'),(D5,'Appeal'),(D6,'Brief'),(D7,'Motion'),(D8,'Complaint'),
(D9,'Order');






 