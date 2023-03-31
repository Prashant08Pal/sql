use lawsystem;
use mgdb;
--- CARTESIAN PRODUCT
SELECT  Cases.Case_id,Cases.Case_name,Court.Court_id,Court.Court_name from cases cross join court;

--- NATURALJOIN 
 Select Cases.Case_name, document.doc_name from cases,document where  Cases.Case_id=document.Case_id;

SELECT  Cases.Case_id,Cases.Case_name,document.doc_name from  Cases left outer join  document on  cases.Case_id=doc.Case_id;

SELECT  Cases.Case_id,lawyer.lawyer_name,lawyer.lawyer_id from cases RIGHT OUTER JOIN court ON  Cases.case_id=lawyer.case_id;
 
Select Cases.Case_name, document.doc_name from cases Equi inner Join document on  Cases.Case_id.=document.doc_id;
Select Cases.Case_name, document.doc_name from cases theta inner  join  document on  Cases.Case_id.>=document.doc_id;

 