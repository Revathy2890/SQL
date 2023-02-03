-- ================================================
-- Template generated from Template Explorer using:
-- Create Multi-Statement Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		revathy>
-- Create date: 02-11-22
-- Description: Multi-Statement Table-Valued Function
-- =============================================
--select * from fnGetMulEmployee()
alter function fnGetMulEmployee()
returns @Emp Table
(
EmpID int, 
FirstName varchar(50),
Salary int
)
As
begin
 Insert into @Emp
		 Select EmpID,FirstName,Salary from Employee ;
		--Now update salary of first employee
		 update @Emp set Salary=34332500 where EmpID=1;
		--It will update only in @Emp table not in Original Employee table
return
end 

--select * from employee