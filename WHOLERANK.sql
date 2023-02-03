 USE TASK; 

 select * from Employee

 SELECT * FROM ExamResult

 CREATE TABLE ExamResult
(
StudentName VARCHAR(70), 
 Subject     VARCHAR(20), 
 Marks       INT
);
INSERT INTO ExamResult
VALUES
('revathy', 
 'Maths', 
 65
);
INSERT INTO ExamResult
VALUES
('revathy', 
 'Science', 
 80
);
INSERT INTO ExamResult
VALUES
('revathy', 
 'english', 
 70
);
INSERT INTO ExamResult
VALUES
('Pavithra', 
 'Maths', 
 50
);
INSERT INTO ExamResult
VALUES
('Pavithra', 
 'Science', 
 70
);
INSERT INTO ExamResult
VALUES
('Pavithra', 
 'english', 
 90
);
INSERT INTO ExamResult
VALUES
('Jeni', 
 'Maths', 
 55
);
INSERT INTO ExamResult
VALUES
('Jeni', 
 'Science', 
 60
);



SELECT Studentname, 
       Subject, 
       Marks, 
       ROW_NUMBER() OVER(ORDER BY Marks) RowNumber
FROM ExamResult;



SELECT Studentname, 
       Subject, 
       Marks, 
       RANK() OVER( ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY Rank ASC;

		 
SELECT Studentname, 
       Subject, 
       Marks, 
       DENSE_RANK() OVER(ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY Rank;


SELECT *, 
       NTILE(3) OVER(
       ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY rank;




--PIVOT()


SELECT [Subject], Revathy FROM   
(SELECT StudentName,Subject, Marks FROM ExamResult )Tab1  
PIVOT  
(  
SUM(Marks) FOR StudentName IN (Revathy)) AS Tab2  
ORDER BY [Tab2].[Subject] 


SELECT * FROM Employee
SELECT [Serial_No], Revathy,Fathima  FROM   
(SELECT [Serial_No], Name,Salary, ManagerId FROM Employee )Tab1  
PIVOT  
(  
MAX(ManagerId) FOR Name IN (Fathima,Revathy)) AS Tab2  
ORDER BY [Tab2].[Serial_No] 
