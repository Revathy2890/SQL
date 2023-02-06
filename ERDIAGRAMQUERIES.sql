create database ER

CREATE TABLE Employee(
						id INT NOT NULL IDENTITY(1,1),
						first_name VARCHAR(30),
						last_name VARCHAR(30),
						email_id NVARCHAR(50),
						gender VARCHAR(15),
						phone_number NVARCHAR(15),
						hire_date	DATE,
						emp_floor	VARCHAR(20),
						department_id int,
						Role_id int,
					    salary_id int,
						timing_id int,
						isactive	BIT,
						createdby	Date,
						updatedby	Date
						CONSTRAINT PK_Employe PRIMARY KEY (id),
						constraint Fk_salary foreign key(salary_id)
						references dbo.Salary(Id),
						constraint Fk_Department foreign key(department_id)
						references dbo.Department(Id),
						constraint Fk_Timing foreign key(timing_id)
						references dbo.Timing(id),
						constraint Fk_Role foreign key(timing_id)
						references dbo.Role(id)
							)






CREATE TABLE Salary(
					Id INT NOT NULL,
					account_number	VARCHAR(50),
					emp_salary	DECIMAL,
					pf_Amount	DECIMAL,
					esi_Amount	DECIMAL,
					salary_credited	DECIMAL,
					createdby	Date,
					updatedby	Date
					CONSTRAINT PK_Employee PRIMARY KEY (Id),
					
					  )


CREATE TABLE Timing(
					id int,
					In_Time	DateTime,
					Out_Time	DateTime,
					Start_Time	DateTime,
					Total_Hours	DateTime
					CONSTRAINT PK_timing PRIMARY KEY (id),
						
					)

 CREATE TABLE Department(
					Id int,
					depart_name VARCHAR(20),
					isactive	BIT,
					createdby	Date,
					updatedby	Date
					CONSTRAINT PK_Depart PRIMARY KEY (Id),
					) 
	
CREATE TABLE Role(
					id	int,
					isactive	bit,
					createdby	Date,
					updatedby	Date
					CONSTRAINT PK_roles PRIMARY KEY (id)
				  )

				


