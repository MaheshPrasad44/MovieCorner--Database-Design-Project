	Use MovieCorner;
	GO

	Create FUNCTION dbo.CalculateAge(@input_dob date)
	RETURNS INT
	AS
	BEGIN
	DECLARE @age INT
	DECLARE @dob  date
	SET @dob= @input_dob
	SELECT @age = DATEDIFF(hour,@dob,GETDATE())/8766 
		RETURN @age
	END
	GO 
 
 	Create FUNCTION dbo.ComputeFullName(@FirstName VARCHAR(40),@LastName VARCHAR(40))
	RETURNS VARCHAR(80)
	AS
	BEGIN
	DECLARE @FullName VARCHAR(80)
	   SELECT @FullName = CONCAT(@FirstName,'  ',@LastName)
	   RETURN @FullName
	END
	GO 
    
    Create FUNCTION dbo.PopulateCardHolderName(@Id INT)
	RETURNS VARCHAR(80)
	AS
	BEGIN
	DECLARE @FullName VARCHAR(80)
	   SELECT @FullName = [FullName] from PERSON where PERSON.PersonID = @Id
	   RETURN @FullName
	END
	GO 


	CREATE TABLE [PERSON] (
	  [PersonID] INT NOT NULL,
	  [FirstName] VARCHAR(40) NOT NULL,
	  [LastName] VARCHAR(40) NOT NULL,
	  [FullName] as dbo.ComputeFullName(FirstName,LastName),
	  [DateOfBirth] DATE NOT NULL,
	  [Age] as dbo.CalculateAge(DateOfBirth),
	  [Location] VARCHAR(40),
	  [Gender] VARCHAR(10),
	  [Nationality] VARCHAR(30),
	  PRIMARY KEY ([PersonID])
	);

	CREATE TABLE [MOVIE] (
	  [MovieID] INT NOT NULL,
	  [MovieName] VARCHAR(60) NOT NULL,
	  [Genre] VARCHAR(20),
	  [Language] VARCHAR(60) NOT NULL,
	  [Year] INT NOT NULL,
	  [Description] VARCHAR(150),
	  [AverageRating] DECIMAL(1,1),
	  [AvailableNow] BIT,
	  PRIMARY KEY ([MovieID])
	);
	CREATE TABLE [THEATER] (
	  [TheaterID] INT NOT NULL,
	  [TheaterName] VARCHAR(40) NOT NULL,
	  [TheaterAddress] VARCHAR(150) NOT NULL,
	  PRIMARY KEY ([TheaterID])
	);

	CREATE TABLE [SHOWDETAILS] (
	  [ShowDetailsID] INT NOT NULL,
	  [ShowTime] TIME(0) NOT NULL,
	  [ShowDate] DATE NOT NULL,
	  [ShowPrice] DECIMAL(4,2) NOT NULL,
	  [TheaterID] INT,
	  [MovieID] INT,
	  FOREIGN KEY ([MovieID]) REFERENCES MOVIE(MovieID) ON DELETE CASCADE,
	  FOREIGN KEY ([TheaterID]) REFERENCES THEATER(TheaterID) ON DELETE CASCADE,
	  PRIMARY KEY ([ShowDetailsID])
	);


	CREATE TABLE [PRODUCTIONHOUSE] (
	  [ProductionHouseID] INT NOT NULL,
	  [Name] VARCHAR(40) NOT NULL,
	  [FoundedYear] INT,
	  PRIMARY KEY ([ProductionHouseID])
	);

	CREATE TABLE [OTTPLATFORM] (
	  [OTTPlatformID] INT NOT NULL,
	  [OOTPlaformName] VARCHAR(40) NOT NULL,
	  [OTTLink] VARCHAR(150),
	  PRIMARY KEY ([OTTPlatformID])
	);

	CREATE TABLE [CUSTOMER] (
	  [Customer_PersonID] INT NOT NULL,
	  [Address] VARCHAR(60),
	  [EmailID] VARCHAR(30) NOT NULL,
	  [PhoneNo] INT NOT NULL,
	  FOREIGN KEY ([Customer_PersonID]) REFERENCES PERSON(PersonID) ON DELETE CASCADE,
	  PRIMARY KEY ([Customer_PersonID])
	);
	 CREATE TABLE [PAYMENTMETHOD] (
	  [PaymentMethodID] INT NOT NULL,
	  [CardNumber] BIGINT NOT NULL,
	  [CVV] INT NOT NULL,
	  [ExpiryDate] DATE NOT NULL,
	  [CardHolderName]  as dbo.PopulateCardHolderName(Customer_PersonID),
	  [BillingAddress] VARCHAR(60),
	  [Customer_PersonID] INT,
	  FOREIGN KEY ([Customer_PersonID]) REFERENCES CUSTOMER(Customer_PersonID) ON DELETE CASCADE,
	  PRIMARY KEY ([PaymentMethodID])
	);

	CREATE INDEX [CardNumberIndex] ON  [PAYMENTMETHOD] ([CardNumber]);


	CREATE TABLE [NONCAST] (
	  [Noncast_PersonID] INT NOT NULL,
	  [NoOfMovies] INT,
	  FOREIGN KEY ([Noncast_PersonID]) REFERENCES PERSON(PersonID) ON DELETE CASCADE,
	  PRIMARY KEY ([Noncast_PersonID])
	);

	CREATE TABLE [BOOKING] (
	  [BookingID] INT NOT NULL IDENTITY(1,1),
	  [NumberOfTickets] INT,
	  [Amount] DECIMAL(8,2),
	  [Customer_PersonID] INT,
	  [ShowDetailsID] INT,
	  FOREIGN KEY ([Customer_PersonID]) REFERENCES CUSTOMER(Customer_PersonID) ON DELETE CASCADE,
	  FOREIGN KEY ([ShowDetailsID]) REFERENCES SHOWDETAILS(ShowDetailsID) ON DELETE CASCADE,
	  PRIMARY KEY ([BookingID])
	);

	CREATE TABLE [CAST] (
	  [Cast_PersonID] INT NOT NULL,
	  [NetWorth] VARCHAR(40) ,
	  FOREIGN KEY ([Cast_PersonID]) REFERENCES PERSON(PersonID),
	  PRIMARY KEY ([Cast_PersonID])
	);

	CREATE TABLE [REVIEW] (
	  [ReviewID] INT NOT NULL,
	  [Description] VARCHAR(150),
	  [Rating] INT,
	  [ReviewDate] DATE,
	  [Customer_PersonID] INT,
	  [MovieID] INT,
	  FOREIGN KEY ([Customer_PersonID]) REFERENCES CUSTOMER(Customer_PersonID) ON DELETE CASCADE,
	  FOREIGN KEY ([MovieID]) REFERENCES MOVIE(MovieID) ON DELETE CASCADE,
	  PRIMARY KEY ([ReviewID])
	);


	CREATE TABLE [FINANCEINFO] (
	  [MovieID] INT,
	  [ProductionHouseID] INT,
	  [BoxOfficeCollection] DECIMAL(8,2) NOT NULL,
	  [MovieBudget] DECIMAL(8,2) NOT NULL,
	  FOREIGN KEY ([MovieID]) REFERENCES MOVIE(MovieID) ON DELETE CASCADE,
	  FOREIGN KEY ([ProductionHouseID]) REFERENCES PRODUCTIONHOUSE(ProductionHouseID) ON DELETE CASCADE,
	  PRIMARY KEY ([MovieID], [ProductionHouseID])
	);


	CREATE TABLE [THEATERRELASEINFO] (
	  [TheaterReleaseDate] DATE NOT NULL,
	  [NumberOfSeats] INT NOT NULL,
	  [TicketPrice] DECIMAL(4,2) NOT NULL,
	  [TheaterID] INT,
	  [MovieID] INT,
	  FOREIGN KEY ([MovieID]) REFERENCES MOVIE(MovieID) ON DELETE CASCADE,
	  FOREIGN KEY ([TheaterID]) REFERENCES THEATER(TheaterID) ON DELETE CASCADE,
	  PRIMARY KEY ([TheaterID], [MovieID])
	);



	CREATE TABLE [OTTRELEASEINFO] (
	  [OTTReleaseDate] DATE NOT NULL,
	  [ReleaseVideoQuality] VARCHAR(10),
	  [HasSubtitle] BIT NOT NULL,
	  [OTTPlatformID] INT,
	  [MovieID] INT,
	  [MovieLink] VARCHAR(150),
	  FOREIGN KEY ([MovieID]) REFERENCES MOVIE(MovieID) ON DELETE CASCADE,
	  FOREIGN KEY ([OTTPlatformID]) REFERENCES OTTPLATFORM(OTTPlatformID) ON DELETE CASCADE,
	  PRIMARY KEY ([OTTPlatformID], [MovieID])
	);

	CREATE TABLE [CASTROLEINFO] (
	  [Cast_PersonID] INT NOT NULL,
	  [MovieID] INT,
	  [RolePlayed] VARCHAR(40) NOT NULL,
	  FOREIGN KEY ([MovieID]) REFERENCES MOVIE(MovieID) ON DELETE CASCADE,
	  PRIMARY KEY ([Cast_PersonID], [MovieID])
	);

	CREATE TABLE [NONCASTROLEINFO] (
	  [Noncast_PersonID] INT NOT NULL,
	  [MovieID] INT,
	  [WorkType] VARCHAR(60) NOT NULL,
	  FOREIGN KEY ([MovieID]) REFERENCES MOVIE(MovieID) ON DELETE CASCADE,
	  PRIMARY KEY ([Noncast_PersonID], [MovieID])
	);

	CREATE TABLE [PERSONTYPE] (
	  [PersonTypeID] INT NOT NULL,
	  [Cast] BIT NOT NULL,
	  [NonCast] BIT NOT NULL,
	  [Customer] BIT NOT NULL,
	  PRIMARY KEY ([PersonTypeID])
	);

	ALTER TABLE BOOKING ADD CHECK (NumberOfTickets>=1);

	ALTER TABLE PAYMENTMETHOD ADD CHECK (CVV>=100 AND CVV<=999);

	ALTER TABLE CUSTOMER 
	ALTER COLUMN PhoneNo BIGINT;

	ALTER TABLE CUSTOMER ADD CHECK (PhoneNo>=1000000000 AND PhoneNo<=9999999999);

	ALTER TABLE Movie 
	ALTER COLUMN AverageRating DECIMAL(2,1);

	ALTER TABLE SHOWDETAILS 
	ALTER COLUMN ShowPrice DECIMAL(6,2);

	ALTER TABLE Movie
	ALTER COLUMN Description VARCHAR(1000);

	ALTER TABLE REVIEW 
	ALTER COLUMN Rating DECIMAL(2,1);

	ALTER TABLE FINANCEINFO 
	ALTER COLUMN BoxOfficeCollection DECIMAL(12,2);

	ALTER TABLE FINANCEINFO 
	ALTER COLUMN MovieBudget DECIMAL(12,2);

	ALTER TABLE THEATERRELASEINFO 
	ALTER COLUMN TicketPrice DECIMAL(6,2);

	ALTER TABLE OTTRELEASEINFO 
	ADD InternetRightsAmount DECIMAL(12,2);

	ALTER TABLE Person 
	ADD PersonTypeID INT NOT NULL;

	ALTER TABLE	Person
	ADD FOREIGN KEY (PersonTypeID) REFERENCES PERSONTYPE(PersonTypeID);

	ALTER TABLE MOVIE
	ADD BoxOfficeCollection DECIMAL(12,2);

   



