--IIF:
--Return "YES" if the condition is TRUE, or "NO" if the condition is FALSE:

DECLARE @a INT = 45, @b INT = 40;
SELECT [Result] = IIF( @a > @b, 'TRUE', 'FALSE' );

SELECT * FROM ExamResult



BEGIN TRANSACTION 
INSERT INTO ExamResult
VALUES
(
'RAVI',
'TAMIL',
97
)
UPDATE ExamResult 
SET
StudentName = 'REETA'
WHERE Marks=65
--SELECT @@TRANCOUNT AS OpenTransactions
SELECT DISTINCT* FROM ExamResult
COMMIT TRANSACTION
DELETE from ExamResult where Marks=50
ROLLBACK TRANSACTION 
SELECT DISTINCT * FROM ExamResult


