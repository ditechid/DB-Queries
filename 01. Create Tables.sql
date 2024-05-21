USE Agency
GO

CREATE TABLE [dbo].[Customer](
	[Id] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[City] [varchar](50) NULL,
	[Region] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[PostalCode] [varchar](50) NULL,
	[Note] [varchar](500) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Appointment](
	[Code] [varchar](50) NOT NULL,
	[Date] [datetime] NULL,
	[Title] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Customer] [varchar](50) NULL
) ON [PRIMARY]
GO

-- DUMMY DATA --

INSERT INTO CUSTOMER(Id,FirstName,LastName,FullName,Gender,[Address],City,Region,Country,Phone,Email,PostalCode,Note)
VALUES
('C001','William','Chandra','William Chandra','Male','Glodok','Jakarta','AP','Indonesia','12345','william@abc.com','10001','-'),
('C002','Robert','Gunawan','Robert Gunawan','Male','Setiabudi','Jakarta','AP','Indonesia','12345','robert@abc.com','10001','-'),
('C003','Mely','Tan','Mely Tan','Female','Thomson Road','Singapore','AP','Singapore','12345','mely@abc.com','10001','-'),
('C004','Janed','Cahyadi','Janed Cahyadi','Female','KL O1','Kuala Lumpur','AP','Malaysia','12345','janed@abc.com','10001','-'),
('C005','Aulia','Rachman','Aulia Rachman','Male','Setiabudi','Jakarta','AP','Indonesia','12345','aulia@abc.com','10001','-')


INSERT INTO Appointment(Code,Date,Title,Description,Customer) VALUES
('APP001','2024-06-01 10:30','Appointment 1','Initial','C001'),
('APP001','2024-06-02 09:30','Appointment 2','Meeting','C001'),
('APP001','2024-06-01 10:30','Appointment Team','Initial','C002'),
('APP001','2024-06-01 14:00','Team Gathering','Gathering','C002')