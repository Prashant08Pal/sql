SELECT S_ID, S_Name FROM Students WHERE Program = “MCA”
UNION
SELECT S_ID, S_Name FROM Students WHERE Program = “MTech”;

use lawsystem;
Select Case_name,CASE_ID from Cases  WHERE Case_Status='OPEN' UNION  Select Case_name,CASE_ID from Cases  WHERE Case_Status='CLOSED' ;

 SELECT CASE_ID FROM CASES UNION SELECT CASE_ID FROM DOCUMENT ;

SELECT S_ID, S_Name FROM Students WHERE Program = “MCA”
INTERSECT
SELECT S_ID, S_Name FROM Students WHERE Program = “BCA”;

SELECT S_ID, S_Name FROM Students WHERE Program = “MCA”
EXCEPT
SELECT S_ID, S_Name FROM Students WHERE Program = “BCA”

SELECT CASE_ID FROM CASES  WHERE VARDICT= 'NOT-GUILTY'  INTERSECT
SELECT CASE_ID FROM cases_client WHERE VARDICT ='GUILTY';