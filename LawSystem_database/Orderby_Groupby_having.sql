 

--- QUERY OF ORDER BY 
Select  Case_id,Case_name from cases order by  Case_id desc; 
Select doc_id,doc_name,case_id from document order by  doc_id desc; 
Select Client_id,Client_name from client order by  Client_id desc; 
Select lawyer_id,lawyer_id from lawyer order by  Lawyer_id desc; 
Select Client_id,Case_id from cases_client order by  Client_id desc; 
 
 --- QUERY OF GROUP BY & HAVING 
  --- EXAMPLE SELECT AVG(Marks) FROM Students GROUP BY Program HAVING AVG(Marks) > 50;
  
  SELECT  lawyer_name from lawyer group by Lawyer_id;
  select client_name from client group by client_id;
  Select case_name from cases group by case_id;
  select court_name from court group by  court_id;
  select doc_name from document group by doc_id;
--- EXAMPLE 
SELECT COUNT(S_ID), Program FROM Students
GROUP BY Program HAVING COUNT(S_ID) < 100;

 SELECT COUNT(S_ID) ,FROM Students
GROUP BY Program HAVING COUNT(S_ID) < 100;

Select count(Case_id) from cases group by  Case_id desc; 

