select * from SampleVeggies
select * from SampleFruits

SELECT  VegName
FROM SampleVeggies
WHERE ID = ALL (SELECT ID FROM SampleFruits WHERE ID = 4 );


SELECT  *
FROM SampleVeggies
WHERE ID = ANY (SELECT ID FROM SampleFruits WHERE ID = 22 );


DECLARE @SQL nvarchar(1000)
 
declare @Pid varchar(50)
set @pid = '11'
 
 
SET @SQL = '(SELECT ID FROM SampleFruits WHERE ID = '+ @Pid
 
EXEC (@SQL)
SELECT * FROM SampleFruits


SELECT STUFF('abcdefgh',3,6,'xxxx') AS Result;


SELECT VegName, PATINDEX('%car%','efg') AS PatternPosition FROM SampleVeggies

SELECT ISNUMERIC('DDF') AS Result;

SELECT ASCII('9') AS [9], ASCII('&') AS [&], ASCII(99) AS [99], ASCII('/') AS [/]

SELECT * FROM SampleVeggies where id=2
