
-- Procedure to get theMovie with highest Rating in genre
Create PROCEDURE GetMovieWithHighestRatingInGenre @genre varchar(80) ,
@MovieName VARCHAR(80) output,@Rating DECIMAL(2,1) output
AS
BEGIN
 SELECT  @MovieName = MOVIE.MovieName, @Rating = MOVIE.AverageRating from MOVIE where MOVIE.Genre = @genre AND AverageRating IN (SELECT  MAX(AverageRating) from MOVIE  where Genre = @genre );
END
GO

--EXECUTION of 	GetMovieWithHighestRatingInGenre
--declare @outputparams1 VARCHAR(80),@outputparams2 VARCHAR(80) 
--EXEC  GetMovieWithHighestRatingInGenre 'Drama',@MovieName =@outputparams1 output,@Rating=  @outputparams2 output
--select @outputparams1,@outputparams2
--Print 'Movie is : '+ cast(@outputparams1 as varchar) + ' with highest Rating : '+  cast(@outputparams2 as varchar)
--GO



-- Procedure to fetch the Box Ofice collection of the Movie
CREATE PROCEDURE GetBoxOfficeCollection @movie_name varchar(60),
@boxofficecollection_output int output
AS
DECLARE @MovieId INT,@boxofficecollection INT
BEGIN
 SELECT   @MovieId = MOVIE.MovieID from MOVIE where MOVIE.MovieName = @movie_name;
 SELECT  @boxofficecollection = SUM(Amount) from  BOOKING
  INNER JOIN SHOWDETAILS ON BOOKING.ShowDetailsID = SHOWDETAILS.ShowDetailsID
  where SHOWDETAILS.MovieID = @MovieId

  SET @boxofficecollection_output = @boxofficecollection
END
GO

--declare @outputparams int
---- Executing GetBoxOfficeCollection procedure
--EXEC GetBoxOfficeCollection 'Tenet',@boxofficecollection_output=@outputparams output;
--select @outputparams
--Print 'Box office collection is : '+ cast(@outputparams as varchar)
--GO

-- Procedure for Customer Booking for the show
create PROCEDURE CUSTOMER_BOOKING @Customer_PersonID INT,@MovieName varchar(60),@NumberOfTickets int,@ShowTime TIME(0),@ShowDate Date,@TheaterName VARCHAR(40)
AS
DECLARE @totalAmount INT,@ShowDetailsID INT,@totalSeats INT,@updatedTotalSeats INT
BEGIN
	SET NOCOUNT ON;
	SELECT @totalAmount = CONVERT(DECIMAL(8,2),@NumberOfTickets)*S.ShowPrice
	FROM BOOKING B,SHOWDETAILS S,MOVIE M,THEATER T
	WHERE B.ShowDetailsID = S.ShowDetailsID
	AND S.ShowDate=@ShowDate
	AND S.ShowTime=@ShowTime
	AND S.TheaterID=T.TheaterID
	AND T.TheaterName=@TheaterName
	AND S.MovieID = M.MovieID
	AND M.MovieName = @MovieName;

	SELECT @ShowDetailsID= S.ShowDetailsID FROM SHOWDETAILS S,MOVIE M,THEATER T,THEATERRELASEINFO TR
	WHERE M.MovieID=TR.MovieID
	AND TR.TheaterID=T.TheaterID
	AND T.TheaterName=@TheaterName
	AND T.TheaterID=S.TheaterID

	SELECT @totalSeats = TR.NumberOfSeats FROM THEATER T, THEATERRELASEINFO TR WHERE T.TheaterID=TR.TheaterID AND T.TheaterName=@TheaterName;
	SET @updatedTotalSeats=@totalSeats-@NumberOfTickets

	UPDATE THEATERRELASEINFO
	SET NumberOfSeats=@updatedTotalSeats
	FROM THEATERRELASEINFO
	INNER JOIN THEATER ON THEATER.TheaterID=THEATERRELASEINFO.TheaterID
	WHERE THEATER.TheaterName=@TheaterName;
	
	INSERT INTO BOOKING(NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID)
	VALUES (@NumberOfTickets,@totalAmount,@Customer_PersonID,@ShowDetailsID);
END
GO

-- Execute CUSTOMER_BOOKING procedure
--EXEC CUSTOMER_BOOKING 1,'The Kings Man 2',2,'13:30:00','2020-12-09','The Citadel Opera House'
--GO
--Select * from THEATERRELASEINFO
--select * from movie
--GO

-- Procedure to fetch all booking details for the show
CREATE PROCEDURE GetAllBookingDetailsForShow @date DATE, @time TIME
AS
BEGIN

  SELECT  M.MovieName, M.Genre, M.Language, SD.ShowDate, SD.ShowPrice, P.FirstName, P.LastName 
  from  MOVIE M
  INNER JOIN SHOWDETAILS SD ON SD.MovieID = M.MovieID
  INNER JOIN BOOKING B ON SD.ShowDetailsID = B.ShowDetailsID
  INNER JOIN CUSTOMER C ON B.Customer_PersonID = C.Customer_PersonID
  INNER JOIN PERSON P ON C.Customer_PersonID = P.PersonID
  where SD.ShowDate = @date AND SD.ShowTime = @time
END
GO

-- Execute GetAllBookingDetailsForShow procedure
--EXEC GetAllBookingDetailsForShow '2020-12-08','12:30:00';

--Select * from SHOWDETAILS where ShowDate = '2020-12-08' AND ShowTime = '12:30:00'
--GO

-- Procedure to enter details to OTT_Release Info
create PROCEDURE OTT_RELEASE @MovieName varchar(60),@OTTPlaformName varchar(60),@OTTReleaseDate Date,@ReleaseVideoQuality varchar(10),@InternetRightsAmount INT,@HasSubtitle BIT,@MovieLink varchar(60)
AS
DECLARE @OTTPlatformID INT,@MovieID INT
BEGIN
	SET NOCOUNT ON;
	SELECT @MovieID = M.MovieID
	FROM MOVIE M
	WHERE M.MovieName = @MovieName;

	SELECT @OTTPlatformID = O.OTTPlatformID
	FROM OTTPLATFORM O
	WHERE O.OOTPlaformName=@OTTPlaformName
	
	INSERT INTO OTTRELEASEINFO(OTTReleaseDate, ReleaseVideoQuality, HasSubtitle, OTTPlatformID, MovieID, MovieLink,InternetRightsAmount) 
	VALUES (@OTTReleaseDate,@ReleaseVideoQuality,@HasSubtitle,@OTTPlatformID,@MovieID,@MovieLink,@InternetRightsAmount);
END
GO

-- Procedure to create a review for a movie
create PROCEDURE CreateReview @MovieName varchar(60), @Description VARCHAR(150), @Rating DECIMAL(2,1), @ReviewDate DATE, @CustomerId INT,@ReviewId INT
AS
DECLARE @MovieID INT
BEGIN
	SELECT @MovieID = [MovieID]
	FROM MOVIE 
	WHERE MovieName = @MovieName;
	INSERT INTO REVIEW(ReviewID, Description, Rating, ReviewDate, Customer_PersonID, MovieID) 
	VALUES (@ReviewId,@Description, @Rating,@ReviewDate,@CustomerId,@MovieID);
END
GO

-- Procedure to add the customer
Create PROCEDURE AddCustomer @PersonID INT, @FirstName VARCHAR(40), @Lastname VARCHAR(40), @DateOfBirth DATE, @Gender VARCHAR(10), @Nationality VARCHAR(30),@Address VARCHAR(60),@EmailID VARCHAR(30), @Phone BIGINT 
AS
DECLARE @OTTPlatformID INT,@MovieID INT
BEGIN
 Insert into Person(PersonID, FirstName, Lastname, DateOfBirth, Gender, Nationality, PersonTypeID)
 VALUES(@PersonID, @FirstName, @Lastname , @DateOfBirth , @Gender, @Nationality, 1)
 Insert into Customer(Customer_PersonID, Address, EmailID, PhoneNo)
 VALUES(@PersonID, @Address ,@EmailID , @Phone)
	END
GO


--Execution for AddCustomer
--EXEC AddCustomer 101, 'Miquel', 'Whorley', '6/11/2000', 'Female', 'USA', '777 Brockton Avenue, Abington MA 2351', 'rfisher@yahoo.com', 4132737992
--GO

-- Trigger to update the Box office collection when the Booking occured for the movie
CREATE TRIGGER UpdateBoxOfficeCollection ON BOOKING 
AFTER INSERT
AS
    BEGIN
	 DECLARE @MovieId INT, @showDetailsId INT, @amount DECIMAL(12,2), @CurrentBoxOfficeCollection DECIMAL(12,2), @totalAmount DECIMAL(12,2)
     SELECT  @showDetailsId = [ShowDetailsID],@amount = [Amount]  from inserted
	 PRINT ' INSERTED :  amount' +  cast(@amount as varchar) +' show : '+ cast( @showDetailsId as varchar) 
	 SELECT  @MovieId=SHOWDETAILS.MovieID from SHOWDETAILS where SHOWDETAILS.ShowDetailsID = @showDetailsId
	 Print 'movie id:'+ cast( @MovieId as varchar)
	 SELECT  @CurrentBoxOfficeCollection = MOVIE.BoxOfficeCollection from MOVIE where MOVIE.MovieID = @MovieId 
	 print 'current : '+ cast( @CurrentBoxOfficeCollection as varchar) + ' total : '+ cast ( @totalAmount as varchar)
	 SET @totalAmount = @CurrentBoxOfficeCollection + @amount
	 Update MOVIE set [BoxOfficeCollection] = @totalAmount where MOVIE.MovieID = @MovieId
	END
GO

-- Trigger to update the Box office collection when the Internet Rights Amount are updated for the movie
CREATE TRIGGER UpdateBoxCollectionFromOTT ON OTTRELEASEINFO
AFTER INSERT
AS 
   BEGIN
   DECLARE @MovieId INT
   DECLARE @InternetRightsAmount DECIMAL(12,2)
   DECLARE @Amount DECIMAL(12,2)
   DECLARE @totalAmount DECIMAL(12,2)
   DECLARE @OTTPlatformId INT
   SELECT @MovieId = [MovieID], @InternetRightsAmount = [InternetRightsAmount] , @OTTPlatformId = [OTTPlatformID]  from inserted
   SELECT  @Amount = [BoxOfficeCollection] FROM MOVIE where MOVIE.MovieID =@MovieId
   SET @totalAmount = @Amount + @InternetRightsAmount
   Update MOVIE set [BoxOfficeCollection] = @totalAmount where MOVIE.MovieID = @MovieId
END
GO

-- Execution for OTT_RELEASE
--EXEC OTT_RELEASE 'The Kings Man 2','Netflix','2021-01-09','3840','10000',1,'https://primevideo.com/suh'
-- select  * from MOVIE
-- GO
 

--Trigger to update the person type for the customer
CREATE TRIGGER UpdatePersonType ON CUSTOMER 
AFTER Insert,Delete
AS
BEGIN
	 DECLARE @Id INT, @Cast BIT, @NonCast BIT, @PersonTypeId INT, @totalAmount DECIMAL(12,2)
	 IF EXISTs(SELECT * FROM INSERTED)
	 BEGIN
     SELECT @Id =[Customer_PersonID] from inserted;
	  IF EXISTS (SELECT 1 from CAST where Cast_PersonID = @Id)
	  BEGIN
		 SET  @Cast =1
	  END
	  ELSE
	  BEGIN
		SET  @Cast =0
	  END
	  IF EXISTS (SELECT 1 from NONCAST where Noncast_PersonID = @Id)
	  BEGIN
		 SET  @NonCast =1
	  END
	  ELSE
	  BEGIN
		SET  @NonCast =0
	  END
	  SELECT @PersonTypeId=[PersonTypeID] from PERSONTYPE where PERSONTYPE.Cast =@cast AND PERSONTYPE.NonCast =@NonCast AND PERSONTYPE.Customer = 1 
	   UPDATE PERSON set PersonTypeID = @PersonTypeId where PersonID= @Id; 	
	  END
    	 IF EXISTs(SELECT * FROM deleted)
	 BEGIN
     SELECT @Id =[Customer_PersonID] from deleted;
	  IF EXISTS (SELECT 1 from CAST where Cast_PersonID = @Id)
	  BEGIN
		 SET  @Cast =1
	  END
	  ELSE
	  BEGIN
		SET  @Cast =0
	  END
	  IF EXISTS (SELECT 1 from NONCAST where Noncast_PersonID = @Id)
	  BEGIN
		 SET  @NonCast =1
	  END
	  ELSE
	  BEGIN
		SET  @NonCast =0
	  END
	 SELECT @PersonTypeId=[PersonTypeID] from PERSONTYPE where PERSONTYPE.Cast =@cast AND PERSONTYPE.NonCast =@NonCast AND PERSONTYPE.Customer = 0 
	 UPDATE PERSON set PersonTypeID = @PersonTypeId where PersonID= @Id; 
	END
	END
GO

-- Trigger to update reviews for the movie
CREATE TRIGGER UpdateReviews ON REVIEW
AFTER INSERT
AS 
   BEGIN
   DECLARE @MovieId INT, @ExistingRating DECIMAl(2,1), @count INT, @finalRating DECIMAL(2,1), @Rating DECIMAL(2,1)

   SELECT @MovieId = [MovieID], @ExistingRating =[Rating]  from inserted
   PRINT 'Existing R'+ cast(@ExistingRating as varchar)
   SELECT @count = COUNT(ReviewID) FROM REVIEW where REVIEW.MovieID = @MovieId
   PRINT 'count'+ cast(@count as varchar)
   SELECT @Rating = [AverageRating] from MOVIE where MOVIE.MovieID = @MovieId
   PRINT 'rating'+ cast(@Rating as varchar)
   SET @finalRating = ((@Rating  * (@count - 1)) + @ExistingRating)/@count;
   Update MOVIE set [AverageRating] = @finalRating where MOVIE.MovieID = @MovieId
END
GO

----EXECUTION FOR CREATE REVIEW
--EXEC CreateReview 'Housefull','It is not upto the mark',3.5,'9/11/2012',6,20
-- GO


-- View table for Movie show details
CREATE VIEW VW_MovieShowDetails 
AS
	SELECT 
		m.MovieName, m.Genre, m.Language, m.AverageRating, 
		th.TheaterName, th.TheaterAddress ,s.ShowDate, s.ShowTime, s.ShowPrice
	FROM Movie m 
	INNER JOIN THEATERRELASEINFO t ON m.MovieID = t.MovieID
	INNER JOIN THEATER th ON th.TheaterID = t.TheaterID
	INNER JOIN SHOWDETAILS s ON s.TheaterID = th.TheaterID
GO

--Select * from VW_MovieShowDetails
--GO

-- View table for Movie Ott platform details
CREATE VIEW VW_MovieOTTDetails 
AS
	SELECT 
		m.MovieName, m.Genre, m.Language, m.AverageRating, 
		 o.MovieLink, o.OTTReleaseDate, o.ReleaseVideoQuality, o.HasSubtitle
	FROM Movie m 
	INNER JOIN OTTRELEASEINFO o ON m.MovieID = o.MovieID
GO

--Select * from VW_MovieReviews
--GO

-- View table for customer bookings
CREATE VIEW VW_CustomerBookingDetails 
AS
	SELECT 
		p.FirstName, p.LastName, c.Address, c.EmailID, c.PhoneNo,
		b.BookingID, b.NumberOfTickets, b.Amount
	FROM Person p 
	INNER JOIN CUSTOMER c ON p.PersonID = c.Customer_PersonID
	INNER JOIN Booking b ON c.Customer_PersonID = b.Customer_PersonID
GO

-- View table for the Movie cast information
CREATE VIEW VW_MovieCastInfo 
AS
	SELECT 
		m.MovieName, m.Genre, m.Language, c.RolePlayed, ca.NetWorth,
		p.FirstName, p.LastName, p.Nationality
	FROM Movie m 
	INNER JOIN CASTROLEINFO c ON m.MovieID = c.MovieID
	INNER JOIN CAST ca ON ca.Cast_PersonID = c.Cast_PersonID
	INNER JOIN PERSON p ON p.PersonID = ca.Cast_PersonID
GO

-- View table for movie non cast information
CREATE VIEW VW_MovieNonCastInfo 
AS
	SELECT 
		m.MovieName, m.Genre, m.Language, n.WorkType, nc.NoOfMovies,
		p.FirstName, p.LastName, p.Nationality
	FROM Movie m 
	INNER JOIN NONCASTROLEINFO n ON m.MovieID = n.MovieID
	INNER JOIN NONCAST nc ON n.Noncast_PersonID = nc.Noncast_PersonID
	INNER JOIN PERSON p ON p.PersonID = nc.Noncast_PersonID
GO

-- View table for Movie reviews
CREATE VIEW VW_MovieReviews 
AS
	SELECT 
		m.MovieName, m.Genre, m.Language, r.Description as ReviewDescription, r.Rating, r.ReviewDate
	FROM Movie m 
	INNER JOIN Review r ON m.MovieID = r.MovieID
GO

CREATE NONCLUSTERED INDEX Idx_FirstName_LastName
ON PERSON(FirstName ASC, LastName ASC);

CREATE NONCLUSTERED INDEX Idx_MovieName
ON Movie(MovieName ASC);

CREATE NONCLUSTERED INDEX Idx_TheaterName
ON Theater(TheaterName ASC);


ALTER TABLE CUSTOMER
ADD EncryptedEmail varbinary(400);
GO

--Create a master key for the database
create MASTER KEY 
ENCRYPTION BY PASSWORD = 'info6210';
GO

--Create a self signed certificate
CREATE CERTIFICATE CustEmail  
WITH SUBJECT = 'Customer Sample Email';
GO

--Create a symmetric key  with AES 256 algorithm using the certificate
-- as encryption/decryption method
CREATE SYMMETRIC KEY CustEmail_SM 
WITH ALGORITHM = AES_256  
ENCRYPTION BY CERTIFICATE CustEmail;  
GO

-- Open the symmetric key
OPEN SYMMETRIC KEY CustEmail_SM  
DECRYPTION BY CERTIFICATE CustEmail; 
GO

-- Encrypt the value in column EncryptedEmail  with symmetric  key
UPDATE Customer  
SET EncryptedEmail = EncryptByKey(Key_GUID('CustEmail_SM'), EmailID);  
GO

--CLOSING THE KEY
CLOSE SYMMETRIC KEY CustEmail_SM;  
GO 

-- Open the symmetric key
OPEN SYMMETRIC KEY CustEmail_SM  
   DECRYPTION BY CERTIFICATE CustEmail;  

-- Decrypt the data
   SELECT *, 
    CONVERT(varchar, DecryptByKey(EncryptedEmail))   
    AS 'Decrypted password'  
    FROM CUSTOMER;  
GO
--CLOSING THE KEY
CLOSE SYMMETRIC KEY CustEmail_SM;  
GO

