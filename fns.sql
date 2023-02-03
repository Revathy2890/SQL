-- ================================================
-- Template generated from Template Explorer using:
-- Create Inline Function (New Menu).SQL
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
-- Description:	<inline fn,,>
-- =============================================
--select * from fnGetEmployee()

alter function fnGetEmployee()
returns Table
As
 return (Select * from Employee where Salary=15000) 
