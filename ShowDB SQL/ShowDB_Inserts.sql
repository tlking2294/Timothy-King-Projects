
-- -----------------------------------------------------
-- ShowDB Inserts: initial data```1	
--
-- Author: Clint Fuchs
-- Course: CSCI 225
-- Assignment: 5
-- Date: 4/1/2016
-- Version: 1.0
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Table `ShowDB`.`Address` For Customer 
-- -----------------------------------------------------

-- Conway
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode, apartmentNo) Values (1, "12 Second Street", "Conway", "SC", 29526, "3B");
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode, apartmentNo) Values (2, "12 Second Street", "Conway", "SC", 29526, "1C");
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode, apartmentNo) Values (3, "12 Second Street", "Conway", "SC", 29526, "14D");
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode, apartmentNo) Values (4, "12 Second Street", "Conway", "SC", 29526, "9E");
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (5, "1543 Briarwood ln", "Conway", "SC", 29526);
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (6, "9 Maplewood ln", "Conway", "SC", 29526);

-- Myrtle Beach
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (7, "1208 Bay View", "Myrtle Beach", "SC", 29577);
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (8, "23rd Street", "Myrtle Beach", "SC", 29575);
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (9, "", "Myrtle Beach", "SC", 29575);
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (10, "42nd Street", "Myrtle Beach", "SC", 29575);
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (11, "1 Woodland Drive", "Myrtle Beach", "SC", 29575);
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (12, "Pinecrest Drive", "Myrtle Beach", "SC", 29575);
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (13, "4 Woodlands Drive", "Myrtle Beach", "SC", 29575);
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (14, "17 Woodlands Drive", "Myrtle Beach", "SC", 29575);

-- Charleston
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode, apartmentNo) Values (15, "193 Bay Street", "Charleston", "SC", 29526, "31");
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode, apartmentNo) Values (16, "193 Bay Street", "Charleston", "SC", 29526, "1");
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode, apartmentNo) Values (17, "193 Bay Street", "Charleston", "SC", 29526, "27");
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (18, "11 Amherst Street", "Charleston", "SC", 29575);
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (19, "4200 Huger Street", "Charleston", "SC", 29575);
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (20, "77 Woodlands Drive", "Charleston", "SC", 29575);

-- Columbia
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode, apartmentNo) Values (21, "2500 Huger Street", "Columbia", "SC", 29205, "21F");
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode, apartmentNo) Values (22, "12500 Huger Street", "Columbia", "SC", 29205, "424Q");
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode, apartmentNo) Values (23, "2500 Huger Street", "Columbia", "SC", 29205, "22G");
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (24, "19 Pine Road", "Columbia", "SC", 29201);
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (25, "3759 Briarwood Road", "Columbia", "SC", 29201);
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (26, "45 Woodlands Drive", "Columbia", "SC", 29201);


-- -----------------------------------------------------
-- Table `ShowDB`.`Address` For Venue
-- -----------------------------------------------------

-- Conway - Theater of The Republic
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (27, "1020 Front Street", "Conway", "SC", 29525);
-- Conway - Wheelwright Auditorium
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (28, "705 Siebenmorgan Road", "Conway", "SC", 29525);

-- Charleston - Charleston Music Hall
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (29, "1020 Front Street", "Charleston", "SC", 29576);
-- Charleston - Music Farm
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (30, "705 Siebenmorgan Road", "Charleston", "SC", 29576);

-- Columbia - Colnial LIfe Arena
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (31, "801 Lincoln Street", "Columbia", "SC", 29202);
-- Columbia - Township Auditorium
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (32, "1703 Taylor Street", "Columbia", "SC", 29201);

-- Myrtle Beach - MB Convention Center
INSERT INTO ShowDB.Address (addressID, street, city, state, zipcode) Values (33, "2101 N Oak Street", "Myrtle Beach", "SC", 29579);




-- -----------------------------------------------------
-- Table `ShowDB`.`Customer'
-- -----------------------------------------------------

Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (1, "John", "Smith", 44, 1);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (2, "Bob", "Barker", 22, 2);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (3, "Becky", "Barker", 19, 2);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (4, "Ace", "Ackerman", 33, 3);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (5, "Bob", "Barker", 22, 4);


Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (6, "Harry", "Jones", 50, 5);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (7, "Brent", "Barker", 34, 6);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (8, "Sam", "Smith", 19, 7);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (9, "John", "Jones", 47, 8);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (10, "Bob", "Smith", 22, 9);

Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (11, "Larry", "Lassiter", 37, 10);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (12, "Nick", "Jones", 34, 11);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (13, "Penelope", "Fillmore", 19, 12);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (14, "Rick", "Jones", 47, 13);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (15, "William", "Turkett", 22, 14);

Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (16, "Barry", "Smith", 50, 15);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (17, "Fran", "Fillmore", 37, 16);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (18, "Frank", "Fillmore", 35, 16);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (19, "Ryan", "Reynolds", 46, 17);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (20, "Bob", "Smith", 49, 18);

Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (21, "Carl", "Jennings", 50, 19);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (22, "Tony", "Smith", 37, 20);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (23, "Zach", "Smith", 35, 21);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (24, "Rhonda", "Reynolds", 46, 22);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (25, "Allen", "Alda", 49, 23);

Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (26, "David", "Garrett", 22, 25);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (27, "Tony", "Garrett", 26, 25);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (28, "Zach", "Garrett", 32, 25);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (29, "Vanessa", "Turkett", 51, 26);
Insert INTO ShowDB.Customer (customerID, userFirstName, userLastName, age, addressID) VALUES (30, "Jessica", "Turkett", 53, 26);


-- -----------------------------------------------------
-- Table `ShowDB`.`Venue
-- -----------------------------------------------------

-- Conway
INSERT INTO ShowDB.Venue (venueID, venueName, capacity, addressID) VALUES (1, "Main Street Theatre", 999, 27);
INSERT INTO ShowDB.Venue (venueID, venueName, yearEstablished, capacity, addressID) VALUES (2, "Wheelwright Auditorium", "1981-06-14", 785, 28);

-- Charleston
INSERT INTO ShowDB.Venue (venueID, venueName, yearEstablished, capacity, addressID) VALUES (3, "Charleston Music Hall", "1995-06-15", 936, 29);
INSERT INTO ShowDB.Venue (venueID, venueName, yearEstablished, capacity, addressID) VALUES (4, "Music Farm", "1991-04-01", 800, 30);

-- Columbia
INSERT INTO ShowDB.Venue (venueID, venueName, yearEstablished, capacity, addressID) VALUES (5, "Colonial Life Arena", "2002-11-21", 18000, 31);
INSERT INTO ShowDB.Venue (venueID, venueName, yearEstablished, capacity, addressID) VALUES (6, "Township Auditorium", "1930-08-11", 3500, 32);

-- Myrlte Beach
INSERT INTO ShowDB.Venue (venueID, venueName, capacity, addressID) VALUES (7, "Myrtle Beach Convention Center", 8000, 33);




-- -----------------------------------------------------
-- Table `ShowDB`.`Show'
-- -----------------------------------------------------

INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("The First Annual CCU Jazz Festival", "2016-03-29", 2);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("The First Annual CCU Jazz Festival", "2016-03-30", 2);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("C.I.A. Spring Extravaganza", "2016-04-02", 2);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 2);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 2);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("David Bankston & Friends Concert", "2016-04-11", 2);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Celebration of Inquiry", "2016-04-13", 2);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Celebration of Inquiry", "2016-04-14", 2);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Spring Fling", "2016-04-14", 2);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Pop 101 Command Performance", "2016-04-15", 2);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Pop 101 Concert", "2016-04-16", 2);

INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("The Boy From OZ", "2016-04-20", 1);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("The Boy From OZ", "2016-04-21", 1);
INSERT INTO ShowDB.Performance(showName, showDate, venueID) VALUES ("The Boy From OZ", "2016-04-22", 1);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("The Boy From OZ", "2016-04-23", 1);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("The Boy From OZ", "2016-04-27", 1);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("The Boy From OZ", "2016-04-28", 1);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("The Boy From OZ", "2016-04-29", 1);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("The Boy From OZ", "2016-04-30", 1);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("All Shook Up", "2016-04-23", 1);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("All Shook Up", "2016-04-24", 1);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("All Shook Up", "2016-04-25", 1);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("All Shook Up", "2016-04-26", 1);


INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("H.T. Hackney Food Show", "2016-04-07", 7);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Myrtle Beach Indoor Football", "2016-04-11", 7);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Horry County School District Tech Fair", "2016-04-13", 7);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("All Star Challenge 2016", "2016-04-16", 7);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Singing in the Sun", "2016-04-20", 7);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Eastern Cheer & Dance", "2016-04-24", 7);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Jubilee", "2016-04-25", 7);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Showstoppers Regionals", "2016-05-07", 7);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Myrtle Beach Indoor Football", "2016-05-09", 7);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Championship Basketball Clinic", "2016-05-13", 7);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Myrtle Beach Indoor Football", "2016-05-16", 7);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Myrtle Beach X Con", "2016-05-20", 7);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Myrtle Beach Indoor Football", "2016-05-23", 7);



INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Don't Look Back: A Film About Bob Dylan", "2016-03-30", 3);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Del McCoury & David Grisman", "2016-04-02", 3);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Don't Look Back: A Film About Bob Dylan", "2016-04-03", 3);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Jazzed Up in the Holy City", "2016-04-06", 3);

INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("God is Real Women's Conference", "2016-04-07", 3);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("God is Real Women's Conference", "2016-04-08", 3);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("God is Real Women's Conference", "2016-04-09", 3);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Aaron Neville", "2016-04-10", 3);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Greg Allman", "2016-04-14", 3);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("North Mississippi Allstars", "2016-04-15", 3);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("BANFF Mountain Film Festival World Tour", "2016-04-16", 3);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("BANFF Mountain Film Festival World Tour", "2016-04-17", 3);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Charleston Jazz Orchestra", "2016-04-23", 3);



INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("The Wonder Years", "2016-03-29", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("The Wacka Flocka Flame Featuring Ben G & DJ Whoo Kid", "2016-03-30", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Duncan Tressell", "2016-03-31", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Long Miles", "2016-04-01", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Stick Figure", "2016-04-02", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("An Evening with Yo La Tengo", "2016-04-03", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Big Gigantic", "2016-04-06", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Atlas Road Crew", "2016-04-08", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Elle King", "2016-04-09", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Riff Raff", "2016-04-10", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Devon Allman Band", "2016-04-12", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Cody Johnson", "2016-04-13", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Moose Kick", "2016-04-14", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Cracker", "2016-04-15", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Tribal Seed's Spring Harvest Tour", "2016-04-17", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Iration - Hoting Up Spring Tour", "2016-04-19", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Stop Light Observations", "2016-04-22", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Makers Market at the Farm", "2016-04-24", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Trout Steak Revival", "2016-04-28", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Styles & Complete", "2016-04-29", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Post Malone", "2016-05-01", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Post Malone", "2016-05-02", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("A Day to Remember", "2016-05-03", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Saving Abel", "2016-05-11", 4);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Buckethead", "2016-05-14", 4);


INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Disney On Ice presents Frozen", "2016-04-13", 5);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Disney On Ice presents Frozen", "2016-04-14", 5);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Disney On Ice presents Frozen", "2016-04-15", 5);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Disney On Ice presents Frozen", "2016-04-16", 5);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Disney On Ice presents Frozen", "2016-04-17", 5);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Pearl Jam", "2016-04-21", 5);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("I Love the 90's", "2016-05-13", 5);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("WWE Live", "2016-05-15", 5);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("2nd Annual Columbia Black Rodeo", "2016-05-21", 5);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Hillsong United", "2016-06-18", 5);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Janet Jackson", "2016-07-12", 5);

INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Menopause the Musical", "2016-03-30", 6);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("An Evening of Love with Kem", "2016-04-01", 6);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("NXT Live", "2016-04-08", 6);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("The One Night Stand Comedy Tour", "2016-04-09", 6);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Married But Single", "2016-04-10", 6);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Anne Brodie's Carolina Ballet Presents Poetry of Ballet", "2016-04-23", 6);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Mother's Day 2K16", "2016-05-08", 6);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("J Anthony Brown Homeboy Overdue Comedy Special", "2016-05-20", 6);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Jackson Browne", "2016-05-29", 6);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("H.E.R.O. Dance Benefit", "2016-06-04", 6);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Kevin Gates & Friends", "2016-06-11", 6);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Peppa Pig Live", "2016-10-07", 6);
INSERT INTO ShowDB.Performance (showName, showDate, venueID) VALUES ("Columbia Winter Jazz Fest", "2016-11-05", 6);



-- -----------------------------------------------------
-- Table `ShowDB`.`ShowRegistration
-- -----------------------------------------------------

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The First Annual CCU Jazz Festival","2016-03-29", 1, 1, 9.99);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The First Annual CCU Jazz Festival","2016-03-30", 2, 1, 9.99);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The First Annual CCU Jazz Festival","2016-03-29", 3, 2, 9.99);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The First Annual CCU Jazz Festival","2016-03-29", 4, 1, 9.99);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The First Annual CCU Jazz Festival","2016-03-30", 6, 1, 9.99);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The First Annual CCU Jazz Festival","2016-03-30", 10, 4, 9.99);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The First Annual CCU Jazz Festival","2016-03-29", 11, 2, 9.99);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The First Annual CCU Jazz Festival","2016-03-29", 12, 3, 9.99);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The First Annual CCU Jazz Festival","2016-03-30", 14, 2, 9.99);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The First Annual CCU Jazz Festival","2016-03-29", 15, 2, 9.99);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The First Annual CCU Jazz Festival","2016-03-29", 16, 1, 9.99);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The First Annual CCU Jazz Festival","2016-03-29", 20, 1, 9.99);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The First Annual CCU Jazz Festival","2016-03-29", 21, 2, 9.99);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The First Annual CCU Jazz Festival","2016-03-29", 27, 3, 9.99);


INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets) VALUES ("C.I.A. Spring Extravaganza", "2016-04-02", 1, 1);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets) VALUES ("C.I.A. Spring Extravaganza", "2016-04-02", 2, 4);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets) VALUES ("C.I.A. Spring Extravaganza", "2016-04-02", 3, 1);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets) VALUES ("C.I.A. Spring Extravaganza", "2016-04-02", 5, 1);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets) VALUES ("C.I.A. Spring Extravaganza", "2016-04-02", 7, 1);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets) VALUES ("C.I.A. Spring Extravaganza", "2016-04-02", 10, 2);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets) VALUES ("C.I.A. Spring Extravaganza", "2016-04-02", 12, 3);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets) VALUES ("C.I.A. Spring Extravaganza", "2016-04-02", 13, 2);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets) VALUES ("C.I.A. Spring Extravaganza", "2016-04-02", 14, 1);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets) VALUES ("C.I.A. Spring Extravaganza", "2016-04-02", 15, 1);


INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 2, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 3, 1, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 4, 1, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 5, 4, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 7, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 8, 1, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 9, 5, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 10, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 12, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 13, 4, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 16, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 17, 1, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 24, 6, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 25, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 28, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("World Percussion Ensemble Concert", "2016-04-07", 30, 1, 7.00);


INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 1, 2, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 3, 1, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 4, 3, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 6, 1, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 7, 1, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 8, 1, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 11, 4, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 13, 2, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 14, 2, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 16, 1, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 18, 12, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 20, 10, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 22, 6, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 23, 3, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 24, 2, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Smith Sapp CPAs Choir Challenge", "2016-04-09", 28, 1, 8.00);


INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("David Bankston & Friends Concert", "2016-04-11", 1, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("David Bankston & Friends Concert", "2016-04-11", 3, 1, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("David Bankston & Friends Concert", "2016-04-11", 4, 3, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("David Bankston & Friends Concert", "2016-04-11", 5, 1, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("David Bankston & Friends Concert", "2016-04-11", 6, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("David Bankston & Friends Concert", "2016-04-11", 8, 1, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("David Bankston & Friends Concert", "2016-04-11", 9, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("David Bankston & Friends Concert", "2016-04-11", 11, 4, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("David Bankston & Friends Concert", "2016-04-11", 12, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("David Bankston & Friends Concert", "2016-04-11", 13, 1, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("David Bankston & Friends Concert", "2016-04-11", 15, 4, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("David Bankston & Friends Concert", "2016-04-11", 16, 1, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("David Bankston & Friends Concert", "2016-04-11", 22, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("David Bankston & Friends Concert", "2016-04-11", 25, 4, 7.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Spring Fling", "2016-04-14", 3, 1, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Spring Fling", "2016-04-14", 4, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Spring Fling", "2016-04-14", 6, 5, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Spring Fling", "2016-04-14", 7, 3, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Spring Fling", "2016-04-14", 10, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Spring Fling", "2016-04-14", 12, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Spring Fling", "2016-04-14", 13, 2, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Spring Fling", "2016-04-14", 14, 3, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Spring Fling", "2016-04-14", 15, 4, 7.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Command Performance", "2016-04-15", 1, 2, 50.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Command Performance", "2016-04-15", 3, 1, 50.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Command Performance", "2016-04-15", 10, 2, 50.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Command Performance", "2016-04-15", 15, 4, 50.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Command Performance", "2016-04-15", 18, 2, 50.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Command Performance", "2016-04-15", 23, 1, 50.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Command Performance", "2016-04-15", 28, 2, 50.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Command Performance", "2016-04-15", 30, 2, 50.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Concert", "2016-04-16", 2, 2, 9.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Concert", "2016-04-16", 4, 1, 9.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Concert", "2016-04-16", 5, 2, 9.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Concert", "2016-04-16", 6, 2, 9.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Concert", "2016-04-16", 9, 1, 9.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Concert", "2016-04-16", 10, 2, 9.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Concert", "2016-04-16", 12, 2, 9.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pop 101 Concert", "2016-04-16", 14, 1, 9.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The Boy From OZ", "2016-04-20", 1, 2, 11.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The Boy From OZ", "2016-04-20", 2, 1, 11.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The Boy From OZ", "2016-04-20", 3, 2, 11.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The Boy From OZ", "2016-04-20", 7, 1, 11.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The Boy From OZ", "2016-04-20", 8, 4, 11.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The Boy From OZ", "2016-04-20", 11, 3, 11.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("All Shook Up", "2016-04-23", 4, 2, 11.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("All Shook Up", "2016-04-23", 5, 1, 11.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("All Shook Up", "2016-04-23", 8, 2, 11.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("All Shook Up", "2016-04-23", 10, 1, 11.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("H.T. Hackney Food Show", "2016-04-07", 3, 1, 4.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("H.T. Hackney Food Show", "2016-04-07", 7, 1, 4.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("H.T. Hackney Food Show", "2016-04-07", 8, 3, 4.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("H.T. Hackney Food Show", "2016-04-07", 13, 2, 4.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("H.T. Hackney Food Show", "2016-04-07", 17, 2, 4.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("H.T. Hackney Food Show", "2016-04-07", 18, 1, 4.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("All Star Challenge 2016", "2016-04-16", 2, 2, 4.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("All Star Challenge 2016", "2016-04-16", 5, 1, 4.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("All Star Challenge 2016", "2016-04-16", 6, 1, 4.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Singing in the Sun", "2016-04-20", 2, 1, 6.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Singing in the Sun", "2016-04-20", 3, 2, 6.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Singing in the Sun", "2016-04-20", 8, 1, 6.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Singing in the Sun", "2016-04-20", 10, 3, 6.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Singing in the Sun", "2016-04-20", 12, 1, 6.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Singing in the Sun", "2016-04-20", 13, 1, 6.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Singing in the Sun", "2016-04-20", 18, 2, 6.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Singing in the Sun", "2016-04-20", 22, 4, 6.00);


INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Championship Basketball Clinic", "2016-05-13", 1, 1, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Championship Basketball Clinic", "2016-05-13", 5, 1, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Championship Basketball Clinic", "2016-05-13", 6, 1, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Championship Basketball Clinic", "2016-05-13", 10, 1, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Championship Basketball Clinic", "2016-05-13", 16, 1, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Championship Basketball Clinic", "2016-05-13", 20, 1, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Championship Basketball Clinic", "2016-05-13", 26, 1, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Championship Basketball Clinic", "2016-05-13", 30, 1, 20.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach X Con", "2016-05-20", 1, 2, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach X Con", "2016-05-20", 2, 7, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach X Con", "2016-05-20", 6, 1, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach X Con", "2016-05-20", 9, 3, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach X Con", "2016-05-20", 11, 1, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach X Con", "2016-05-20", 16, 3, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach X Con", "2016-05-20", 17, 1, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach X Con", "2016-05-20", 21, 4, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach X Con", "2016-05-20", 23, 1, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach X Con", "2016-05-20", 26, 1, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach X Con", "2016-05-20", 28, 1, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach X Con", "2016-05-20", 29, 1, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach X Con", "2016-05-20", 30, 1, 20.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-04-11", 3, 3, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-04-11", 5, 4, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-04-11", 7, 2, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-04-11", 9, 1, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-04-11", 13, 1, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-04-11", 15, 1, 10.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-09", 1, 1, 20.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-09", 2, 1, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-09", 3, 3, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-09", 5, 4, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-09", 9, 2, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-09", 16, 1, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-09", 23, 1, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-09", 25, 4, 10.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-23", 2, 2, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-23", 3, 3, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-23", 4, 2, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-23", 5, 4, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-23", 7, 3, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-23", 9, 4, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-23", 13, 1, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-23", 15, 2, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-23", 23, 5, 10.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Myrtle Beach Indoor Football", "2016-05-23", 29, 2, 10.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Don't Look Back: A Film About Bob Dylan", "2016-03-30", 3, 2, 3.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Don't Look Back: A Film About Bob Dylan", "2016-03-30", 5, 1, 3.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Don't Look Back: A Film About Bob Dylan", "2016-03-30", 13, 1, 3.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Don't Look Back: A Film About Bob Dylan", "2016-03-30", 15, 4, 3.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Don't Look Back: A Film About Bob Dylan", "2016-03-30", 23, 2, 3.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Don't Look Back: A Film About Bob Dylan", "2016-03-30", 25, 4, 3.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Don't Look Back: A Film About Bob Dylan", "2016-04-03", 2, 2, 3.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Don't Look Back: A Film About Bob Dylan", "2016-04-03", 5, 1, 3.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Don't Look Back: A Film About Bob Dylan", "2016-04-03", 11, 1, 3.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Don't Look Back: A Film About Bob Dylan", "2016-04-03", 15, 4, 3.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Don't Look Back: A Film About Bob Dylan", "2016-04-03", 24, 2, 3.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Don't Look Back: A Film About Bob Dylan", "2016-04-03", 28, 4, 3.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Jazzed Up in the Holy City", "2016-04-06", 21, 4, 4.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Jazzed Up in the Holy City", "2016-04-06", 22, 1, 4.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Jazzed Up in the Holy City", "2016-04-06", 24, 3, 4.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Jazzed Up in the Holy City", "2016-04-06", 29, 2, 4.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("BANFF Mountain Film Festival World Tour", "2016-04-16", 18, 2, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("BANFF Mountain Film Festival World Tour", "2016-04-16", 19, 1, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("BANFF Mountain Film Festival World Tour", "2016-04-16", 21, 3, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("BANFF Mountain Film Festival World Tour", "2016-04-16", 24, 2, 8.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("BANFF Mountain Film Festival World Tour", "2016-04-17", 16, 2, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("BANFF Mountain Film Festival World Tour", "2016-04-17", 19, 1, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("BANFF Mountain Film Festival World Tour", "2016-04-17", 21, 3, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("BANFF Mountain Film Festival World Tour", "2016-04-17", 22, 2, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("BANFF Mountain Film Festival World Tour", "2016-04-17", 27, 3, 8.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("BANFF Mountain Film Festival World Tour", "2016-04-17", 29, 2, 8.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Charleston Jazz Orchestra", "2016-04-23", 7, 4, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Charleston Jazz Orchestra", "2016-04-23", 14, 4, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Charleston Jazz Orchestra", "2016-04-23", 20, 4, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Charleston Jazz Orchestra", "2016-04-23", 22, 4, 7.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Charleston Jazz Orchestra", "2016-04-23", 26, 4, 7.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-13", 8, 3, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-13", 12, 4, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-13", 13, 2, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-13", 17, 14, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-13", 18, 3, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-13", 22, 4, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-13", 24, 14, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-13", 26, 3, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-13", 30, 4, 21.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-14", 2, 2, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-14", 5, 5, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-14", 14, 7, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-14", 16, 1, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-14", 18, 20, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-14", 23, 6, 21.00);


INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-15", 17, 4, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-15", 19, 3, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-15", 20, 2, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-15", 24, 4, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-15", 26, 1, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-15", 28, 4, 21.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-16", 8, 9, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-16", 12, 3, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-16", 13, 2, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-16", 17, 4, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-16", 18, 13, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-16", 23, 4, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-16", 24, 4, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-16", 27, 5, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-16", 30, 8, 21.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-17", 8, 3, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-17", 10, 4, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-17", 13, 2, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-17", 16, 14, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-17", 18, 3, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-17", 22, 4, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-17", 25, 14, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-17", 26, 3, 21.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Disney On Ice presents Frozen", "2016-04-17", 29, 4, 21.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pearl Jam", "2016-04-21", 24, 4, 30.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pearl Jam", "2016-04-21", 26, 4, 30.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pearl Jam", "2016-04-21", 29, 4, 30.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Pearl Jam", "2016-04-21", 30, 4, 30.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The One Night Stand Comedy Tour", "2016-04-09", 4, 4, 25.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The One Night Stand Comedy Tour", "2016-04-09", 11, 3, 25.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The One Night Stand Comedy Tour", "2016-04-09", 12, 2, 25.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The One Night Stand Comedy Tour", "2016-04-09", 17, 4, 25.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The One Night Stand Comedy Tour", "2016-04-09", 26, 13, 25.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The One Night Stand Comedy Tour", "2016-04-09", 27, 3, 25.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("The One Night Stand Comedy Tour", "2016-04-09", 30, 4, 25.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Anne Brodie's Carolina Ballet Presents Poetry of Ballet", "2016-04-23", 3, 4, 17.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Anne Brodie's Carolina Ballet Presents Poetry of Ballet", "2016-04-23", 7, 3, 17.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Anne Brodie's Carolina Ballet Presents Poetry of Ballet", "2016-04-23", 8, 4, 17.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Anne Brodie's Carolina Ballet Presents Poetry of Ballet", "2016-04-23", 18, 6, 17.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Anne Brodie's Carolina Ballet Presents Poetry of Ballet", "2016-04-23", 23, 2, 25.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Anne Brodie's Carolina Ballet Presents Poetry of Ballet", "2016-04-23", 27, 7, 25.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("J Anthony Brown Homeboy Overdue Comedy Special", "2016-05-20", 5, 4, 12.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("J Anthony Brown Homeboy Overdue Comedy Special", "2016-05-20", 6, 3, 12.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("J Anthony Brown Homeboy Overdue Comedy Special", "2016-05-20", 15, 2, 12.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("J Anthony Brown Homeboy Overdue Comedy Special", "2016-05-20", 16, 2, 12.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("J Anthony Brown Homeboy Overdue Comedy Special", "2016-05-20", 25, 4, 12.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("J Anthony Brown Homeboy Overdue Comedy Special", "2016-05-20", 26, 3, 12.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("J Anthony Brown Homeboy Overdue Comedy Special", "2016-05-20", 29, 8, 12.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("J Anthony Brown Homeboy Overdue Comedy Special", "2016-05-20", 30, 5, 12.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("H.E.R.O. Dance Benefit", "2016-06-04", 22, 5, 18.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("H.E.R.O. Dance Benefit", "2016-06-04", 23, 5, 18.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("H.E.R.O. Dance Benefit", "2016-06-04", 25, 5, 18.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("H.E.R.O. Dance Benefit", "2016-06-04", 28, 5, 18.00);

INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Columbia Winter Jazz Fest", "2016-11-05", 20, 5, 18.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Columbia Winter Jazz Fest", "2016-11-05", 21, 5, 18.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Columbia Winter Jazz Fest", "2016-11-05", 23, 5, 18.00);
INSERT INTO ShowDB.ShowTicketPurchase (showName, showDate, customerID, numberOfTickets, ticketPrice) VALUES ("Columbia Winter Jazz Fest", "2016-11-05", 27, 5, 18.00);



