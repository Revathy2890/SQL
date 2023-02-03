CREATE TABLE tblEmployee
(
  Id int Primary Key,
  Name nvarchar(30),
  Salary int,
  Gender nvarchar(10),
  DepartmentId int
)

Insert into tblEmployee values (1,'Revathy', 5000, 'Female', 3)
Insert into tblEmployee values (2,'Mala', 3400, 'Female', 2)
Insert into tblEmployee values (3,'Arun', 6000, 'Male', 1)
Insert into tblEmployee values (4,'Jiva', 7000, 'Male', 5)
Insert into tblEmployee values (5,'Kala', 6900, 'Female', 4)

select * from tblEmployee
select * from tblEmployeeAudit


CREATE TABLE tblEmployeeAudit
(
  Id int identity(1,1) primary key,
  AuditData nvarchar(1000)
)


-- AFTER TRIGGER for INSERT event on tblEmployee table:
Alter TRIGGER tr_tblEMployeeForInsert
ON tblEmployee
AFTER INSERT
AS
BEGIN
 Declare @Id int
 Select @Id = Id from inserted
 insert into tblEmployeeAudit 
 values('New employee with Id  = ' + Cast(@Id as nvarchar(5)) + ' is added at ' + cast(Getdate() as nvarchar(20)))
 print 'success'
END

Insert into tblEmployee values (8,'rITA', 43500, 'Female', 8)


--AFTER DELETE
Alter TRIGGER tr_tblEMployeeForDelete
ON tblEmployee
AFTER DELETE
AS
BEGIN
 Declare @Id int
 Select @Id = Id from deleted
 insert into tblEmployeeAudit 
 values('New employee with Id  = ' + Cast(@Id as nvarchar(5)) + ' is DELETED at ' + cast(Getdate() as nvarchar(20)))
 print 'success'
END

Delete from tblEmployee where DepartmentId=8


--FOR UPDATE

ALTER TRIGGER tr_tblEMployeeForUpdate
ON tblEmployee
AFTER UPDATE
AS
BEGIN
 Declare @Id int
 Select @Id = Id from inserted
 --UPDATE tblEmployee  SET Salary=10000  WHERE DepartmentId=5
 insert into tblEmployeeAudit 
 values(' Id  = ' + Cast(@Id as nvarchar(5)) + ' is updated at ' + cast(Getdate() as nvarchar(20)))
 print 'success'
END

UPDATE tblEmployee SET Salary=10000 WHERE Name='Jiva'



select * from tblEmployee