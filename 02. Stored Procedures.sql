USE Agency
GO
/*
SP Name : GetAllCustomers
Desc : To retrieve all customers data
---------------------------------------------------
Date			Description			Author
---------------------------------------------------
May 19 ,2024	Initial				William Chandra
---------------------------------------------------
*/

CREATE OR ALTER PROCEDURE [dbo].[GetAllCustomers]
AS
BEGIN
	SELECT 
		*
	FROM Customer 

END

GO

/*
SP Name : GetCustomerById
Desc : To get customer by Id
---------------------------------------------------
Date			Description			Author
---------------------------------------------------
May 19 ,2024	Initial				William Chandra
---------------------------------------------------
*/

CREATE OR ALTER PROCEDURE [dbo].[GetCustomerById](
    @CustID VARCHAR(50)
)
AS
BEGIN
	SELECT 
		*
	FROM Customer 
	Where Id=@CustID

END

GO

/*
SP Name : Create Customer
Desc : Create new customer
---------------------------------------------------
Date			Description			Author
---------------------------------------------------
May 19 ,2024	Initial				William Chandra
---------------------------------------------------
*/

CREATE OR ALTER PROCEDURE [dbo].[CreateCustomer](
    @CustID VARCHAR(50),
	@FirstName VARCHAR(50),
	@LastName VARCHAR(50),
	@FullName VARCHAR(50),
	@Gender VARCHAR(50),
	@Address VARCHAR(500),
	@City VARCHAR(50),
	@Country VARCHAR(50),
	@Region VARCHAR(50),
	@Phone VARCHAR(50),
	@Email VARCHAR(50),	
	@PostalCode VARCHAR(50),
	@Note VARCHAR(500)
)
AS
BEGIN
	INSERT INTO Customer(Id,FirstName,LastName,FullName,Gender,Address,City,Country,
		Region,Phone,Email,PostalCode,Note) VALUES 
		(
		@CustID,@FirstName,@LastName,@FullName,@Gender,@Address,@City,@Country,@Region,@Phone,@Email,
		@PostalCode,@Note
		)

END

GO

/*
SP Name : Update Customer
Desc : Update customer
---------------------------------------------------
Date			Description			Author
---------------------------------------------------
May 19 ,2024	Initial				William Chandra
---------------------------------------------------
*/

CREATE OR ALTER PROCEDURE [dbo].[UpdateCustomer](
    @CustID VARCHAR(50),
	@FirstName VARCHAR(50),
	@LastName VARCHAR(50),
	@FullName VARCHAR(50),
	@Gender VARCHAR(50),
	@Address VARCHAR(500),
	@City VARCHAR(50),
	@Country VARCHAR(50),
	@Region VARCHAR(50),
	@Phone VARCHAR(50),
	@Email VARCHAR(50),	
	@PostalCode VARCHAR(50),
	@Note VARCHAR(500)
)
AS
BEGIN
	UPDATE Customer SET 
		FirstName=@FirstName
		,LastName=@LastName
		,FullName=@FullName
		,Gender=@Gender
		,Address=@Address
		,City=@City
		,Country=@Country
		,Region=@Region
		,Phone=@Phone
		,Email=@Email
		,PostalCode=@PostalCode
		,Note=@Note
		WHERE Id = @CustID

END

GO

/*
SP Name : Delete Customer
Desc : Delete customer
---------------------------------------------------
Date			Description			Author
---------------------------------------------------
May 19 ,2024	Initial				William Chandra
---------------------------------------------------
*/

CREATE OR ALTER PROCEDURE [dbo].[DeleteCustomer](
    @CustID VARCHAR(50)
)
AS
BEGIN
	DELETE 
	FROM Customer Where Id=@CustID

END

GO


/*
SP Name : GetAllAppointments
Desc : To retrieve all appointmens data
---------------------------------------------------
Date			Description			Author
---------------------------------------------------
May 19 ,2024	Initial				William Chandra
---------------------------------------------------
*/

CREATE OR ALTER PROCEDURE [dbo].[GetAllAppointments]
AS
BEGIN
	SELECT 
		app.*,
		cust.*
	FROM 
		Appointment app INNER JOIN Customer cust 
			ON app.Customer= cust.Id
			
		ORDER BY Date ASC

END

GO

/*
SP Name : GetAppointmentByCode
Desc : To get appointment by code
---------------------------------------------------
Date			Description			Author
---------------------------------------------------
May 19 ,2024	Initial				William Chandra
---------------------------------------------------
*/

CREATE OR ALTER PROCEDURE [dbo].[GetAppointmentByCode]
(
    @Code VARCHAR(50)
)
AS
BEGIN
	SELECT 
		app.*,
		cust.*
	FROM 
		Appointment app INNER JOIN Customer cust 
			ON app.Customer= cust.Id
	WHERE Code = @Code		
		ORDER BY Date ASC

END

GO

/*
SP Name : Create Appointment
Desc : Create new appointment
---------------------------------------------------
Date			Description			Author
---------------------------------------------------
May 19 ,2024	Initial				William Chandra
---------------------------------------------------
*/

CREATE OR ALTER  PROCEDURE [dbo].[CreateAppointment](
    @Code VARCHAR(50),
	@Date DATETIME,
	@Customer VARCHAR(50),
	@Title VARCHAR(50),
	@Description VARCHAR(500)
)
AS
BEGIN
	INSERT INTO Appointment(Code,Date,Customer,Title,Description) VALUES (
		@Code,@Date,@Customer,@Title,@Description)

END

GO

/*
SP Name : Update Appointment
Desc : Update appointment
---------------------------------------------------
Date			Description			Author
---------------------------------------------------
May 19 ,2024	Initial				William Chandra
---------------------------------------------------
*/

CREATE OR ALTER  PROCEDURE [dbo].[UpdateAppointment](
    @Code VARCHAR(50),
	@Date DATETIME,
	@Customer VARCHAR(50),
	@Title VARCHAR(50),
	@Description VARCHAR(500)
)
AS
BEGIN
	UPDATE Appointment SET 
		Date=@Date,
		Customer=@Customer,
		Title=@Title,
		Description=@Description 
	WHERE Code = @Code 

END

GO

/*
SP Name : Update Appointment
Desc : Update appointment
---------------------------------------------------
Date			Description			Author
---------------------------------------------------
May 19 ,2024	Initial				William Chandra
---------------------------------------------------
*/

CREATE OR ALTER  PROCEDURE [dbo].[DeleteAppointment](
    @Code VARCHAR(50)
)
AS
BEGIN
	DELETE 
		FROM Appointment 
	WHERE Code = @Code 

END

GO
