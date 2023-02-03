SELECT * FROM ExamResult ORDER BY Marks DESC
SELECT AVG(MARKS) AS AVERAGE,StudentName FROM ExamResult GROUP BY StudentName  HAVING StudentName='REETA'

SELECT * FROM ExamResult   WHERE StudentName = 'SITA' OR StudentName='REETA'   ORDER BY StudentName


SELECT StudentName, CHOOSE (Marks,65,80,70,50) AS Expression1  
FROM ExamResult; 

SELECT SUBSTRING(StudentName, 1, 4) AS ExtractString
FROM ExamResult;


