select * from employee;

--insert into employee values(5,'sithama',15,null,null,1,1,1,423434454)

SELECT Name , Salary FROM(

SELECT ROW_NUMBER() OVER(ORDER BY Salary DESC) AS SNo , Name, Salary

FROM Employee

)Sal

WHERE SNo = 2

SELECT COALESCE(null,null,5,1,0,4454);

SELECT CONVERT(varchar, 23);

SELECT CURRENT_USER;