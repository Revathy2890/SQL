CREATE DATABASE DYAMICSQL

CREATE TABLE employee_details(
     emp_id VARCHAR(8),
     emp_name VARCHAR(20),
     emp_designation VARCHAR(20),
     emp_age INT);


 INSERT INTO employee_details
 VALUES
	('E40001','PRADEEP','H.R',36),
    ('E40002','ASHOK','MANAGER',28),
    ('E40003','PAVAN KUMAR','ASST MANAGER',28),
    ('E40004','SANTHOSH','STORE MANAGER',25),
    ('E40005','THAMAN','GENERAL MANAGER',26);


DECLARE @sql nvarchar(max) 
DECLARE @empId nvarchar(max) 
set @empId = 'E40005' 
set @sql = 'SELECT * FROM employee_details WHERE emp_id ='+ ''''+ @empId+ ''''
--PRINT @SQL
exec sp_executesql @sql



exec sp_executesql N'SELECT * FROM employee_details WHERE emp_id = @empId', 
N'@empId nvarchar(50)', @empId = 'E40004'



DECLARE @sql1 nvarchar(max) 
DECLARE @args nvarchar(max) 
set @args= '@empId nvarchar(max)'
set @sql1 = 'SELECT * FROM employee_details WHERE emp_id =  @empId' 
--PRINT @SQL
exec sp_executesql @sql1,@args,@empId='E40004'