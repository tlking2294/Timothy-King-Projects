-- -----------------------------------------------------
-- ShowDB Inserts: initial data```1 --
-- Author: Timothy King
-- Course: CSCI 225
-- Assignment: 5
-- Date: 4/13/2016
-- Version: 1.0
-- -----------------------------------------------------
SELECT userFirstName, userLastName, age FROM ShowDB.Customer;
SELECT venueName FROM ShowDB.Venue WHERE capacity > 1000;
SELECT venueName FROM ShowDB.Venue ORDER BY venueName; 
SELECT count(showName) FROM ShowDB.Performance WHERE showName  LIKE '%Jazz%'; 
SELECT venueName, street, city, state, zipcode, apartmentNo FROM ShowDB.Venue, ShowDB.Address WHERE yearEstablished IS NULL;
SELECT userFirstName, userLastName, city FROM ShowDB.Customer, ShowDB.Address WHERE city LIKE 'Charleston';
SELECT showName, showDate, venueName, city FROM ShowDB.Performance, ShowDB.Venue, ShowDB.Address WHERE showName LIKE '%Pop 101%';
SELECT venueName, city, showName, showDate FROM ShowDB.Venue, ShowDB.Address, ShowDB.Performance WHERE showName LIKE '%jazz%';
SELECT showName FROM ShowDB.ShowTicketPurchase WHERE numberOfTickets = 0;
SELECT showName, venueName FROM ShowDB.Performance, ShowDB.Venue WHERE showDate = '2016-04-16' ORDER BY venueName, showName;
SELECT showName, venueName FROM ShowDB.Performance, ShowDB.Venue WHERE EXISTS (SELECT venueName, showName FROM showDB.ShowTicketPurchase, showDB.Venue WHERE ShowTicketPurchase.showDate = Performance.showDate AND ShowTicketPurchase.showName != Performance.showName AND Venue.venueID = Performance.venueID);
SELECT userFirstName, userLastName FROM ShowDB.Customer, ShowDB.ShowTicketPurchase WHERE showName like'Disney On Ice Presents Frozen' AND numberOfTickets > 3.94; 
SELECT venueName, city FROM showDB.venue, showDB.Address, showDB.ShowTicketPurchase group by venueName HAVING max(numberOfTickets); 
CREATE VIEW PerformancAndVenue AS SELECT customerID, showName, showDate, numberOfTickets*ticketPrice AS totalPrice FROM ShowDB.ShowTicketPurchase;
CREATE VIEW CustomerWithAddress AS SELECT customerID, userFirstName, userLastName, age, street, city, state, zipcode, apartmentNo FROM ShowDB.Customer, ShowDB.Address;
ALTER TABLE ShowDB.Performance ADD (showDuration INT(30));
UPDATE ShowDB.Performance SET showDuration = 30 WHERE showName IS NOT NULL;
ALTER TABLE ShowDB.Customer ADD (totalTicketsPurchased INT(30));
UPDATE ShowDB.Customer SET totalTicketsPurchased = sum(numberOfTickets) WHERE CustomerID > 0; 