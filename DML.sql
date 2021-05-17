INSERT INTO PERSONTYPE(PersonTypeID, Cast, NonCast, Customer) VALUES 
(1,0,0,1);
INSERT INTO PERSONTYPE(PersonTypeID, Cast, NonCast, Customer) VALUES 
(2,0,1,0);
INSERT INTO PERSONTYPE(PersonTypeID, Cast, NonCast, Customer) VALUES 
(3,0,1,1);
INSERT INTO PERSONTYPE(PersonTypeID, Cast, NonCast, Customer) VALUES 
(4,1,0,0);
INSERT INTO PERSONTYPE(PersonTypeID, Cast, NonCast, Customer) VALUES 
(5,1,0,1);
INSERT INTO PERSONTYPE(PersonTypeID, Cast, NonCast, Customer) VALUES 
(6,1,1,0);
INSERT INTO PERSONTYPE(PersonTypeID, Cast, NonCast, Customer) VALUES 
(7,1,1,1);

INSERT INTO PERSON (PersonID, FirstName, Lastname, DateOfBirth, Gender, Nationality, PersonTypeID) 
VALUES (1, 'Deb', 'Dillow', '7/29/1980', 'Female', 'USA',4);
INSERT INTO PERSON (PersonID, FirstName, Lastname, DateOfBirth, Gender, Nationality, PersonTypeID) 
VALUES (2, 'Bethany', 'Vossen', '7/21/1982', 'Female', 'USA',4);
INSERT INTO PERSON (PersonID, FirstName, Lastname, DateOfBirth, Gender, Nationality, PersonTypeID) 
VALUES (3, 'Luciano', 'Faucett', '11/04/1986', 'Female', 'USA',4);
INSERT INTO PERSON (PersonID, FirstName, Lastname, DateOfBirth, Gender, Nationality, PersonTypeID) 
VALUES (4, 'Quincy', 'Crays', '9/1/1989', 'Male', 'USA',4);
INSERT INTO PERSON (PersonID, FirstName, Lastname, DateOfBirth, Gender, Nationality, PersonTypeID) 
VALUES (5, 'Chi', 'Buhl', '2/25/1991', 'Female', 'USA',2);
INSERT INTO PERSON (PersonID, FirstName, Lastname, DateOfBirth, Gender, Nationality, PersonTypeID) 
VALUES (6, 'Meggan', 'Popp', '9/14/1993', 'Female', 'USA', 5);
INSERT INTO PERSON (PersonID, FirstName, Lastname, DateOfBirth, Gender, Nationality, PersonTypeID) 
VALUES (7, 'Reita', 'Aquirre', '8/28/1997', 'Male', 'USA',7);
INSERT INTO PERSON (PersonID, FirstName, Lastname, DateOfBirth, Gender, Nationality, PersonTypeID) 
VALUES (8, 'Jessika', 'Derouin', '7/26/1990', 'Male', 'USA',1);
INSERT INTO PERSON (PersonID, FirstName, Lastname, DateOfBirth, Gender, Nationality, PersonTypeID) 
VALUES (9, 'Tilda', 'Caton', '4/8/2008', 'Male', 'USA',3);
INSERT INTO PERSON (PersonID, FirstName, Lastname, DateOfBirth, Gender, Nationality, PersonTypeID) 
VALUES (10, 'Miquel', 'Whorley', '6/11/2000', 'Female', 'USA', 6);
INSERT INTO PERSON (PersonID, FirstName, Lastname, DateOfBirth, Gender, Nationality, PersonTypeID) 
VALUES (101, 'Miquel', 'Whorley', '6/11/2000', 'Female', 'USA', 6);


INSERT INTO Customer(Customer_PersonID, Address, EmailID, PhoneNo) VALUES 
(1, '777 Brockton Avenue, Abington MA 2351', 'rfisher@yahoo.com', '4132737992');
INSERT INTO Customer(Customer_PersonID, Address, EmailID, PhoneNo) VALUES 
(2, '30 Memorial Drive, Avon MA 2322', 'cliffordj@gmail.com', '9789292779');
INSERT INTO Customer(Customer_PersonID, Address, EmailID, PhoneNo) VALUES 
(3, '250 Hartford Avenue, Bellingham MA 2019', 'biglou@sbcglobal.net', '7817601587');
INSERT INTO Customer(Customer_PersonID, Address, EmailID, PhoneNo) VALUES 
(4, '700 Oak Street, Brockton MA 2301', 'pizza@outlook.com', '7742715894');
INSERT INTO Customer(Customer_PersonID, Address, EmailID, PhoneNo) VALUES 
(5, '66-4 Parkhurst Rd, Chelmsford MA 1824', 'paina@yahoo.com', '9786353939');
INSERT INTO Customer(Customer_PersonID, Address, EmailID, PhoneNo) VALUES 
(6, '591 Memorial Dr, Chicopee MA 1020', 'bmcmahon@live.com', '9789322731');
INSERT INTO Customer(Customer_PersonID, Address, EmailID, PhoneNo) VALUES 
(7, '55 Brooksby Village Way, Danvers MA 1923', 'cgarcia@icloud.com', '6172398745'); 
INSERT INTO Customer(Customer_PersonID, Address, EmailID, PhoneNo) VALUES 
(8, '137 Teaticket Hwy, East Falmouth MA 2536', 'sriha@verizon.net', '7748044257');
INSERT INTO Customer(Customer_PersonID, Address, EmailID, PhoneNo) VALUES 
(9, '42 Fairhaven Commons Way, Fairhaven MA 2719', 'skoch@msn.com', '5085764186');
INSERT INTO Customer(Customer_PersonID, Address, EmailID, PhoneNo) VALUES 
(10, '374 William S Canning Blvd, Fall River MA 2721', 'leviathan@comcast.net', '5082145411');

INSERT INTO Movie(MovieID, MovieName, Genre, Language, Year, Description, AverageRating, AvailableNow,BoxOfficeCollection) VALUES 
(1, 'Rebecca', 'Drama', 'English', 1940, 'A young newlywed arrives at her husbands imposing family estate on a windswept English coast and finds herself battling the shadow of his first wife, Rebecca, whose legacy lives on in the house long after her death.', 1.0, 0,0);
INSERT INTO Movie(MovieID, MovieName, Genre, Language, Year, Description, AverageRating, AvailableNow,BoxOfficeCollection) VALUES 
(2, 'Jack and the Beanstalk', 'Adventure', 'English', 2009, 'Jack goes up the beanstalk to rescue a little girl who has been transformed into a harp.', 4.0, 1,0);
INSERT INTO Movie(MovieID, MovieName, Genre, Language, Year, Description, AverageRating, AvailableNow,BoxOfficeCollection) VALUES 
(3, 'Uncle Toms Cabin', 'Drama', 'English', 1987, 'The life of an aging black slave, Tom, and the people with whom he interacts.', 3.5, 1,0);
INSERT INTO Movie(MovieID, MovieName, Genre, Language, Year, Description, AverageRating, AvailableNow,BoxOfficeCollection) VALUES 
(4, 'The Kings Man', 'Comedy', 'English', 2020, 'In the early years of the 20th century, the Kingsman agency is formed to stand against a cabal plotting a war to wipe out millions.', 3.0, 1,0);
INSERT INTO Movie(MovieID, MovieName, Genre, Language, Year, Description, AverageRating, AvailableNow,BoxOfficeCollection) VALUES 
(5, 'Black Widow', 'Drama', 'English', 2020, ' film about Natasha Romanoff in her quests between the films Civil War and Infinity War.', 4.0, 1,0);
INSERT INTO Movie(MovieID, MovieName, Genre, Language, Year, Description, AverageRating, AvailableNow,BoxOfficeCollection) VALUES 
(6, 'The Kings Man 2', 'Comedy', 'English', 2020, 'In the early years of the 20th century, the Kingsman agency is formed to stand against a cabal plotting a war to wipe out millions.', 5.0, 1,0);
INSERT INTO Movie(MovieID, MovieName, Genre, Language, Year, Description, AverageRating, AvailableNow,BoxOfficeCollection) VALUES 
(7, 'Tenet', 'Comedy', 'English', 2020, 'Armed with only one word, Tenet, and fighting for the survival of the entire world, a Protagonist journeys through a twilight world of international espionage on a mission that will unfold in something beyond real time.', 4.0, 1,0);
INSERT INTO Movie(MovieID, MovieName, Genre, Language, Year, Description, AverageRating, AvailableNow,BoxOfficeCollection) VALUES 
(8, 'Free guy', 'Sci-fi', 'English', 2020, 'A bank teller discovers that hes actually an NPC inside a brutal, open world video game.', 4.0, 1,0);
INSERT INTO Movie(MovieID, MovieName, Genre, Language, Year, Description, AverageRating, AvailableNow,BoxOfficeCollection) VALUES 
(9, 'Housefull', 'Comedy', 'Hindi', 2020, 'Believing himself to be jinxed, a man attempts to find true love, but instead gets caught in a web of lies.', 0.0, 1,0);
INSERT INTO Movie(MovieID, MovieName, Genre, Language, Year, Description, AverageRating, AvailableNow,BoxOfficeCollection) VALUES 
(10, 'Ulidavaru Kandante', 'Thriller', 'Kannnada', 2020, 'A journalist sets out to uncover the truth behind an incident, through the perspectives of different people, unraveling how they and their lives are intertwined with it.', 4.0, 1,0);

INSERT INTO Theater(TheaterID, TheaterName, TheaterAddress) 
VALUES (1, 'The Alliance Theatre', '374 William S Canning Blvd, Fall River MA 2721');
INSERT INTO Theater(TheaterID, TheaterName, TheaterAddress) 
VALUES (2, 'The Temple Theater', '121 Worcester Rd, Framingham MA 1701');
INSERT INTO Theater(TheaterID, TheaterName, TheaterAddress) 
VALUES (3, 'The Monolith Opera House', '677 Timpany Blvd, Gardner MA 1440');
INSERT INTO Theater(TheaterID, TheaterName, TheaterAddress) 
VALUES (4, 'The Guardian Opera House', '337 Russell St, Hadley MA 1035');
INSERT INTO Theater(TheaterID, TheaterName, TheaterAddress) 
VALUES (5, 'The Grand Centre Opera House', '295 Plymouth Street, Halifax MA 2338');
INSERT INTO Theater(TheaterID, TheaterName, TheaterAddress) 
VALUES (6, 'The Stargaze Amphitheater', '1775 Washington St, Hanover MA 2339');
INSERT INTO Theater(TheaterID, TheaterName, TheaterAddress) 
VALUES (7, 'The Citadel Opera House', '280 Washington Street, Hudson MA 1749');
INSERT INTO Theater(TheaterID, TheaterName, TheaterAddress) 
VALUES (8, 'The Kings Opera House', '20 Soojian Dr, Leicester MA 1524');
INSERT INTO Theater(TheaterID, TheaterName, TheaterAddress) 
VALUES (9, 'The Songbird Cinema', '11 Jungle Road, Leominster MA 1453');
INSERT INTO Theater(TheaterID, TheaterName, TheaterAddress) 
VALUES (10, 'The Bluebell Opera House', '301 Massachusetts Ave, Lunenburg MA 1462');

INSERT INTO SHOWDETAILS (ShowDetailsID, ShowTime, ShowDate, ShowPrice, TheaterID, MovieID) 
VALUES (1, '12:30', '12/8/2020', 100.00, 1,2)
INSERT INTO SHOWDETAILS (ShowDetailsID, ShowTime, ShowDate, ShowPrice, TheaterID, MovieID) 
VALUES (2, '15:30', '12/8/2020', 150.00, 4,4)
INSERT INTO SHOWDETAILS (ShowDetailsID, ShowTime, ShowDate, ShowPrice, TheaterID, MovieID) 
VALUES (3, '16:30', '12/8/2020', 210.00, 3,1)
INSERT INTO SHOWDETAILS (ShowDetailsID, ShowTime, ShowDate, ShowPrice, TheaterID, MovieID) 
VALUES (4, '17:30', '12/8/2020', 130.00, 2,2)
INSERT INTO SHOWDETAILS (ShowDetailsID, ShowTime, ShowDate, ShowPrice, TheaterID, MovieID) 
VALUES (5, '18:30', '12/8/2020', 90.00, 10,7)
INSERT INTO SHOWDETAILS (ShowDetailsID, ShowTime, ShowDate, ShowPrice, TheaterID, MovieID) 
VALUES (6, '19:30', '12/9/2020', 222.00, 9,8)
INSERT INTO SHOWDETAILS (ShowDetailsID, ShowTime, ShowDate, ShowPrice, TheaterID, MovieID) 
VALUES (7, '12:30', '12/9/2020', 140.00, 8,5)
INSERT INTO SHOWDETAILS (ShowDetailsID, ShowTime, ShowDate, ShowPrice, TheaterID, MovieID) 
VALUES (8, '13:30', '12/9/2020', 120.00, 7,6)
INSERT INTO SHOWDETAILS (ShowDetailsID, ShowTime, ShowDate, ShowPrice, TheaterID, MovieID) 
VALUES (9, '14:30', '12/9/2020', 180.00, 6,9)
INSERT INTO SHOWDETAILS (ShowDetailsID, ShowTime, ShowDate, ShowPrice, TheaterID, MovieID) 
VALUES (10, '15:30', '12/9/2020', 250.00, 5,10)

INSERT INTO PRODUCTIONHOUSE (ProductionHouseID, Name, FoundedYear) 
VALUES (1, 'WaterGate Productions', 1981);
INSERT INTO PRODUCTIONHOUSE (ProductionHouseID, Name, FoundedYear) 
VALUES (2, 'Looking Glass Studios', 1984);
INSERT INTO PRODUCTIONHOUSE (ProductionHouseID, Name, FoundedYear) 
VALUES (3, 'Continuum Films', 1992);
INSERT INTO PRODUCTIONHOUSE (ProductionHouseID, Name, FoundedYear) 
VALUES (4, 'Off the Spectrum Productions', 1994);
INSERT INTO PRODUCTIONHOUSE (ProductionHouseID, Name, FoundedYear) 
VALUES (5, 'Pendulum Film Company', 2001);
INSERT INTO PRODUCTIONHOUSE (ProductionHouseID, Name, FoundedYear) 
VALUES (6, 'Sandstone Films', 2009);
INSERT INTO PRODUCTIONHOUSE (ProductionHouseID, Name, FoundedYear) 
VALUES (7, 'Spinning Wheel Studios', 2009);
INSERT INTO PRODUCTIONHOUSE (ProductionHouseID, Name, FoundedYear) 
VALUES (8, 'Green Fuzz Productions', 2013);
INSERT INTO PRODUCTIONHOUSE (ProductionHouseID, Name, FoundedYear) 
VALUES (9, 'Fly on the Wall Films', 2014);
INSERT INTO PRODUCTIONHOUSE (ProductionHouseID, Name, FoundedYear) 
VALUES (10, 'Sweet Kiss Studios', 2020);

INSERT INTO OTTPLATFORM (OTTPlatformID, OOTPlaformName, OTTLink) 
VALUES (1, 'Amazon Prime video', 'https://primevideo.com/abc');
INSERT INTO OTTPLATFORM (OTTPlatformID, OOTPlaformName, OTTLink) 
VALUES (2, 'Netflix', 'https://netflix.com/abc');
INSERT INTO OTTPLATFORM (OTTPlatformID, OOTPlaformName, OTTLink) 
VALUES (3, 'Hotstar', 'https://hotstar.com/abc');
INSERT INTO OTTPLATFORM (OTTPlatformID, OOTPlaformName, OTTLink) 
VALUES (4, 'Showtime', 'https://showtime.com/abc');
INSERT INTO OTTPLATFORM (OTTPlatformID, OOTPlaformName, OTTLink) 
VALUES (5, 'Hulu', 'https://hulu.com/abc');
INSERT INTO OTTPLATFORM (OTTPlatformID, OOTPlaformName, OTTLink) 
VALUES (6, 'Amazon Prime video', 'https://primevideo.com/def');
INSERT INTO OTTPLATFORM (OTTPlatformID, OOTPlaformName, OTTLink) 
VALUES (7, 'Netflix', 'https://netflix.com/def');
INSERT INTO OTTPLATFORM (OTTPlatformID, OOTPlaformName, OTTLink) 
VALUES (8, 'Hotstar', 'https://hotstar.com/def');
INSERT INTO OTTPLATFORM (OTTPlatformID, OOTPlaformName, OTTLink) 
VALUES (9, 'Showtime', 'https://showtime.com/def');
INSERT INTO OTTPLATFORM (OTTPlatformID, OOTPlaformName, OTTLink) 
VALUES (10, 'Hulu', 'https://hulu.com/def');

INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(4,200,1,3);
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(4,200,4,4);
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(3,130,3,1);
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(5,1000,2,2);
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(7,1200,10,7);
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(9,1400,9,8);
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(11,1600,8,5);
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(13,1800,7,6);
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(15,2000,6,9);
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(5,200,1,4);
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(5,300,1,5);
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(5,300,2,5);
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(5,300,3,6)
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(5,300,4,7)
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(5,300,5,3)
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(5,300,6,8)
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(6,300,1,8)
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(6,300,2,8)
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(6,300,2,8)
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(6,300,3,8)
INSERT INTO BOOKING( NumberOfTickets, Amount, Customer_PersonID, ShowDetailsID) VALUES 
(17,2200,5,10);

INSERT INTO PAYMENTMETHOD(PaymentMethodID, CardNumber, CVV, ExpiryDate, BillingAddress, Customer_PersonID) VALUES 
(1,4716057389468780,213,'7/13/2023','70 Pleasant Valley Street, Methuen MA 1844',3);
INSERT INTO PAYMENTMETHOD(PaymentMethodID, CardNumber, CVV, ExpiryDate, BillingAddress, Customer_PersonID) VALUES 
(2,4539586763034320,334,'5/13/2024','830 Curran Memorial Hwy, North Adams MA 1247',4);
INSERT INTO PAYMENTMETHOD(PaymentMethodID, CardNumber, CVV, ExpiryDate, BillingAddress, Customer_PersonID) VALUES 
(3,4532016322931950,312,'6/17/2024','1470 S Washington St, North Attleboro MA 2760',1);
INSERT INTO PAYMENTMETHOD(PaymentMethodID, CardNumber, CVV, ExpiryDate, BillingAddress, Customer_PersonID) VALUES 
(4,5157556406564780,567,'7/24/2023','506 State Road, North Dartmouth MA 2747',2);
INSERT INTO PAYMENTMETHOD(PaymentMethodID, CardNumber, CVV, ExpiryDate, BillingAddress, Customer_PersonID) VALUES 
(5,5275591990849730,751,'7/27/2023','742 Main Street, North Oxford MA 1537',7);
INSERT INTO PAYMENTMETHOD(PaymentMethodID, CardNumber, CVV, ExpiryDate, BillingAddress, Customer_PersonID) VALUES 
(6,5221477800126170,674,'3/19/2027','72 Main St, North Reading MA 1864',8);
INSERT INTO PAYMENTMETHOD(PaymentMethodID, CardNumber, CVV, ExpiryDate, BillingAddress, Customer_PersonID) VALUES 
(7,3744120174876900,543,'4/29/2027','200 Otis Street, Northborough MA 1532',5);
INSERT INTO PAYMENTMETHOD(PaymentMethodID, CardNumber, CVV, ExpiryDate, BillingAddress, Customer_PersonID) VALUES 
(8,3448875442719140,321,'4/30/2027','180 North King Street, Northhampton MA 1060',6);
INSERT INTO PAYMENTMETHOD(PaymentMethodID, CardNumber, CVV, ExpiryDate, BillingAddress, Customer_PersonID) VALUES 
(9,4716057389468780,223,'7/3/2028','555 East Main St, Orange MA 1364',9);
INSERT INTO PAYMENTMETHOD(PaymentMethodID, CardNumber, CVV, ExpiryDate, BillingAddress, Customer_PersonID) VALUES 
(10,5543273576429770,456,'5/4/2029','555 Hubbard Ave-Suite 12, Pittsfield MA 1201',10);

INSERT INTO NONCAST(Noncast_PersonID, NoOfMovies) VALUES 
(1,4);
INSERT INTO NONCAST(Noncast_PersonID, NoOfMovies) VALUES 
(2,6);
INSERT INTO NONCAST(Noncast_PersonID, NoOfMovies) VALUES 
(3,8);
INSERT INTO NONCAST(Noncast_PersonID, NoOfMovies) VALUES 
(4,10);
INSERT INTO NONCAST(Noncast_PersonID, NoOfMovies) VALUES 
(5,12);
INSERT INTO NONCAST(Noncast_PersonID, NoOfMovies) VALUES 
(6,14);
INSERT INTO NONCAST(Noncast_PersonID, NoOfMovies) VALUES 
(7,16);
INSERT INTO NONCAST(Noncast_PersonID, NoOfMovies) VALUES 
(8,18);
INSERT INTO NONCAST(Noncast_PersonID, NoOfMovies) VALUES 
(9,20);
INSERT INTO NONCAST(Noncast_PersonID, NoOfMovies) VALUES 
(10,22);
INSERT INTO NONCAST(Noncast_PersonID, NoOfMovies) VALUES 
(101,22);

INSERT INTO CAST(Cast_PersonID, NetWorth) VALUES 
(1,'1,000,000');
INSERT INTO CAST(Cast_PersonID, NetWorth) VALUES 
(2,'5,000,000');
INSERT INTO CAST(Cast_PersonID, NetWorth) VALUES 
(3,'4,000,000');
INSERT INTO CAST(Cast_PersonID, NetWorth) VALUES 
(4,'3,000,000');
INSERT INTO CAST(Cast_PersonID, NetWorth) VALUES 
(5,'15,000,000');
INSERT INTO CAST(Cast_PersonID, NetWorth) VALUES 
(6,'16,000,000');
INSERT INTO CAST(Cast_PersonID, NetWorth) VALUES 
(7,'12,000,000');
INSERT INTO CAST(Cast_PersonID, NetWorth) VALUES 
(8,'18,000,000');
INSERT INTO CAST(Cast_PersonID, NetWorth) VALUES 
(9,'22,000,000');
INSERT INTO CAST(Cast_PersonID, NetWorth) VALUES 
(10,'4,000,000');

INSERT INTO REVIEW(ReviewID, Description, Rating, ReviewDate, Customer_PersonID, MovieID) VALUES 
(1,'Its somewhat ironic that a movie about time travel cant be reviewed properly until your future self rewatches the movie.',3,'8/14/2012',1,3);
INSERT INTO REVIEW(ReviewID, Description, Rating, ReviewDate, Customer_PersonID, MovieID) VALUES 
(2,'Its one hell of a complicated film.',4,'9/4/2012',4,4);
INSERT INTO REVIEW(ReviewID, Description, Rating, ReviewDate, Customer_PersonID, MovieID) VALUES 
(3,'Well, I have always known I was a little slow to the party but this movie was hard to follow!',4.5,'3/14/2014',3,1);
INSERT INTO REVIEW(ReviewID, Description, Rating, ReviewDate, Customer_PersonID, MovieID) VALUES 
(4,'Great Job!',3,'9/19/2016',2,2);
INSERT INTO REVIEW(ReviewID, Description, Rating, ReviewDate, Customer_PersonID, MovieID) VALUES 
(5,'Movie is very bad',1,'9/11/2016',10,7);
INSERT INTO REVIEW(ReviewID, Description, Rating, ReviewDate, Customer_PersonID, MovieID) VALUES 
(6,'Amazing movie',4.5,'9/15/2016',9,8);
INSERT INTO REVIEW(ReviewID, Description, Rating, ReviewDate, Customer_PersonID, MovieID) VALUES 
(7,'Excellent work by the crew',3,'8/11/2017',8,5);
INSERT INTO REVIEW(ReviewID, Description, Rating, ReviewDate, Customer_PersonID, MovieID) VALUES 
(8,'One epic movie',4,'7/10/2017',7,6);
INSERT INTO REVIEW(ReviewID, Description, Rating, ReviewDate, Customer_PersonID, MovieID) VALUES 
(9,'It is not upto the mark',4.5,'9/11/2012',6,9);
INSERT INTO REVIEW(ReviewID, Description, Rating, ReviewDate, Customer_PersonID, MovieID) VALUES 
(10,'Too much of improvement from the first movie by the team',3,'6/6/2011',5,10);
INSERT INTO REVIEW(ReviewID, Description, Rating, ReviewDate, Customer_PersonID, MovieID) VALUES 
(11,'Good',3,'8/14/2012',1,4);
INSERT INTO REVIEW(ReviewID, Description, Rating, ReviewDate, Customer_PersonID, MovieID) VALUES 
(12,'Bad',3,'8/17/2012',3,6);
INSERT INTO REVIEW(ReviewID, Description, Rating, ReviewDate, Customer_PersonID, MovieID) VALUES 
(13,'Ugly',3,'8/17/2012',4,7);
INSERT INTO REVIEW(ReviewID, Description, Rating, ReviewDate, Customer_PersonID, MovieID) VALUES 
(14,'Very good',3,'8/17/2012',9,7);


INSERT INTO FINANCEINFO(MovieID, ProductionHouseID, BoxOfficeCollection, MovieBudget) VALUES 
(3, 1, 200000, 1000000);
INSERT INTO FINANCEINFO(MovieID, ProductionHouseID, BoxOfficeCollection, MovieBudget) VALUES 
(4, 4, 4000000000, 2000000);
INSERT INTO FINANCEINFO(MovieID, ProductionHouseID, BoxOfficeCollection, MovieBudget) VALUES 
(1, 1, 150000000, 3000000);
INSERT INTO FINANCEINFO(MovieID, ProductionHouseID, BoxOfficeCollection, MovieBudget) VALUES 
(2, 1, 21340000, 4000000);
INSERT INTO FINANCEINFO(MovieID, ProductionHouseID, BoxOfficeCollection, MovieBudget) VALUES 
(7, 1, 900000, 5000000);
INSERT INTO FINANCEINFO(MovieID, ProductionHouseID, BoxOfficeCollection, MovieBudget) VALUES 
(8, 1, 12220000, 6000000);
INSERT INTO FINANCEINFO(MovieID, ProductionHouseID, BoxOfficeCollection, MovieBudget) VALUES 
(5, 1, 3250000, 7000000);
INSERT INTO FINANCEINFO(MovieID, ProductionHouseID, BoxOfficeCollection, MovieBudget) VALUES 
(6, 1, 34000, 8000000);
INSERT INTO FINANCEINFO(MovieID, ProductionHouseID, BoxOfficeCollection, MovieBudget) VALUES 
(9, 1, 2000000, 9000000);
INSERT INTO FINANCEINFO(MovieID, ProductionHouseID, BoxOfficeCollection, MovieBudget) VALUES 
(10, 1, 15000000, 10000000);

INSERT INTO THEATERRELASEINFO(TheaterReleaseDate, NumberOfSeats, TicketPrice, TheaterID, MovieID) VALUES 
('1/20/2021', 100, 100, 1, 3);
INSERT INTO THEATERRELASEINFO(TheaterReleaseDate, NumberOfSeats, TicketPrice, TheaterID, MovieID) VALUES 
('1/28/2021', 150, 200, 4, 4);
INSERT INTO THEATERRELASEINFO(TheaterReleaseDate, NumberOfSeats, TicketPrice, TheaterID, MovieID) VALUES 
('3/10/2021', 210, 250, 3, 1);
INSERT INTO THEATERRELASEINFO(TheaterReleaseDate, NumberOfSeats, TicketPrice, TheaterID, MovieID) VALUES 
('4/2/2021', 130, 300, 2, 2);
INSERT INTO THEATERRELASEINFO(TheaterReleaseDate, NumberOfSeats, TicketPrice, TheaterID, MovieID) VALUES 
('6/22/2021', 90, 350, 10, 7);
INSERT INTO THEATERRELASEINFO(TheaterReleaseDate, NumberOfSeats, TicketPrice, TheaterID, MovieID) VALUES 
('7/2/2021', 222, 400, 9, 8);
INSERT INTO THEATERRELASEINFO(TheaterReleaseDate, NumberOfSeats, TicketPrice, TheaterID, MovieID) VALUES 
('8/12/2021', 140, 450, 8, 5);
INSERT INTO THEATERRELASEINFO(TheaterReleaseDate, NumberOfSeats, TicketPrice, TheaterID, MovieID) VALUES 
('10/20/2021', 120, 500, 7, 6);
INSERT INTO THEATERRELASEINFO(TheaterReleaseDate, NumberOfSeats, TicketPrice, TheaterID, MovieID) VALUES 
('10/29/2021', 180, 550, 6, 9);
INSERT INTO THEATERRELASEINFO(TheaterReleaseDate, NumberOfSeats, TicketPrice, TheaterID, MovieID) VALUES 
('11/18/2021', 250, 600, 5, 10);

INSERT INTO OTTRELEASEINFO(OTTReleaseDate, ReleaseVideoQuality, HasSubtitle, OTTPlatformID, MovieID, MovieLink,InternetRightsAmount) VALUES 
('1/20/2021',1080,1,1,3,'https://primevideo.com/abc',0);
INSERT INTO OTTRELEASEINFO(OTTReleaseDate, ReleaseVideoQuality, HasSubtitle, OTTPlatformID, MovieID, MovieLink,InternetRightsAmount) VALUES 
('1/28/2021',3840,0,4,4,'https://primevideo.com/abc',0);
INSERT INTO OTTRELEASEINFO(OTTReleaseDate, ReleaseVideoQuality, HasSubtitle, OTTPlatformID, MovieID, MovieLink,InternetRightsAmount) VALUES 
('3/10/2021',1080,1,3,1,'https://primevideo.com/abc',0);
INSERT INTO OTTRELEASEINFO(OTTReleaseDate, ReleaseVideoQuality, HasSubtitle, OTTPlatformID, MovieID, MovieLink,InternetRightsAmount) VALUES 
('4/2/2021',3840,0,2,2,'https://primevideo.com/abc',0);
INSERT INTO OTTRELEASEINFO(OTTReleaseDate, ReleaseVideoQuality, HasSubtitle, OTTPlatformID, MovieID, MovieLink,InternetRightsAmount) VALUES 
('6/22/2021',1080,1,10,7,'https://primevideo.com/abc',0);
INSERT INTO OTTRELEASEINFO(OTTReleaseDate, ReleaseVideoQuality, HasSubtitle, OTTPlatformID, MovieID, MovieLink, InternetRightsAmount) VALUES 
('7/2/2021',3840,0,9,8,'https://primevideo.com/abc',0);
INSERT INTO OTTRELEASEINFO(OTTReleaseDate, ReleaseVideoQuality, HasSubtitle, OTTPlatformID, MovieID, MovieLink, InternetRightsAmount) VALUES 
('1/20/2021',1080,1,8,5,'https://primevideo.com/abc',0);
INSERT INTO OTTRELEASEINFO(OTTReleaseDate, ReleaseVideoQuality, HasSubtitle, OTTPlatformID, MovieID, MovieLink,InternetRightsAmount) VALUES 
('1/20/2021',3840,0,7,6,'https://primevideo.com/abc',0); 
INSERT INTO OTTRELEASEINFO(OTTReleaseDate, ReleaseVideoQuality, HasSubtitle, OTTPlatformID, MovieID, MovieLink, InternetRightsAmount) VALUES 
('11/10/2021',1080,1,6,9,'https://primevideo.com/abc',0);
INSERT INTO OTTRELEASEINFO(OTTReleaseDate, ReleaseVideoQuality, HasSubtitle, OTTPlatformID, MovieID, MovieLink, InternetRightsAmount) VALUES 
('12/12/2021',3840,0,5,10,'https://primevideo.com/abc',0);

INSERT INTO CASTROLEINFO(Cast_PersonID, RolePlayed, MovieID) VALUES 
(1,'Actor',3);
INSERT INTO CASTROLEINFO(Cast_PersonID, RolePlayed, MovieID) VALUES 
(2,'Actress',4);
INSERT INTO CASTROLEINFO(Cast_PersonID, RolePlayed, MovieID) VALUES 
(3,'Supporting Actor',1);
INSERT INTO CASTROLEINFO(Cast_PersonID, RolePlayed, MovieID) VALUES 
(4,'Supporting Actor',2);
INSERT INTO CASTROLEINFO(Cast_PersonID, RolePlayed, MovieID) VALUES 
(5,'Actor',7);
INSERT INTO CASTROLEINFO(Cast_PersonID, RolePlayed, MovieID) VALUES 
(6,'Actress',8);
INSERT INTO CASTROLEINFO(Cast_PersonID, RolePlayed, MovieID) VALUES 
(7,'Supporting Actor',5);
INSERT INTO CASTROLEINFO(Cast_PersonID, RolePlayed, MovieID) VALUES 
(8,'Supporting Actor',6);
INSERT INTO CASTROLEINFO(Cast_PersonID, RolePlayed, MovieID) VALUES 
(9,'Actor',9);
INSERT INTO CASTROLEINFO(Cast_PersonID, RolePlayed, MovieID) VALUES 
(10,'Actress',10);

INSERT INTO NONCASTROLEINFO(Noncast_PersonID, MovieID, WorkType) VALUES 
(1,3,'Director');
INSERT INTO NONCASTROLEINFO(Noncast_PersonID, MovieID, WorkType) VALUES 
(2,4,'Producer');
INSERT INTO NONCASTROLEINFO(Noncast_PersonID, MovieID, WorkType) VALUES 
(3,1,'Director of photography');
INSERT INTO NONCASTROLEINFO(Noncast_PersonID, MovieID, WorkType) VALUES 
(4,2,'Technician');
INSERT INTO NONCASTROLEINFO(Noncast_PersonID, MovieID, WorkType) VALUES 
(5,7,'Director');
INSERT INTO NONCASTROLEINFO(Noncast_PersonID, MovieID, WorkType) VALUES 
(6,8,'Producer');
INSERT INTO NONCASTROLEINFO(Noncast_PersonID, MovieID, WorkType) VALUES 
(7,5,'Director of photography');
INSERT INTO NONCASTROLEINFO(Noncast_PersonID, MovieID, WorkType) VALUES 
(8,6,'Technician');
INSERT INTO NONCASTROLEINFO(Noncast_PersonID, MovieID, WorkType) VALUES 
(9,9,'Director');
INSERT INTO NONCASTROLEINFO(Noncast_PersonID, MovieID, WorkType) VALUES 
(10,10,'Producer');



UPDATE PERSON SET FirstName='John' where PERSON.PersonID =1

UPDATE PERSON SET LastName='Carter' where PERSON.PersonID =2

Update OTTPLATFORM SET OOTPlaformName = 'Hulu2' where OTTPlatformID =10

Update PAYMENTMETHOD SET BillingAddress ='180 North King Street' where PaymentMethodID =6

Update NONCASTROLEINFO SET WorkType = 'Senior Producer' where Noncast_PersonID =10

UPDATE PRODUCTIONHOUSE SET Name= 'Marvel Studios' where ProductionHouseID =8

DELETE NONCAST where Noncast_PersonID = 101


