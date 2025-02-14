--DBMS-TOURISM MANAGEMENT SYSTEM DATABASE--
  
CREATE DATABASE Tourism;
USE Tourism;

CREATE TABLE Destination (
    DestinationID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description TEXT NOT NULL,
    Location VARCHAR(255) NOT NULL
);


CREATE TABLE TourPackage (
    PackageID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description TEXT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Duration INT NOT NULL
);


CREATE TABLE PackageDestination (
    PackageDestinationID INT AUTO_INCREMENT PRIMARY KEY,
    PackageID INT NOT NULL,
    DestinationID INT NOT NULL,
    FOREIGN KEY (PackageID) REFERENCES TourPackage(PackageID),
    FOREIGN KEY (DestinationID) REFERENCES Destination(DestinationID)
);




CREATE TABLE User (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    address VARCHAR(300) NOT NULL,
    UserTripType VARCHAR(50) NOT NULL,
    UNIQUE (Email)
);


CREATE TABLE Booking (
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL,
    PackageID INT NOT NULL,
    BookingDate DATE NOT NULL,
    TotalCost DECIMAL(10, 2) NOT NULL,
    CONSTRAINT FK_UserID FOREIGN KEY (UserID) REFERENCES User(UserID),
    CONSTRAINT FK_PackageID FOREIGN KEY (PackageID) REFERENCES TourPackage(PackageID)
);

CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    BookingID INT NOT NULL,
    PaymentDate DATE NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentMethod VARCHAR(50) NOT NULL,
    CONSTRAINT FK_Payment_Booking FOREIGN KEY (BookingID) REFERENCES Booking(BookingID)
);


-- inserting data(1)
-- Destination



INSERT INTO Destination (Name, Description, Location)
VALUES ('Rajwada Palace', 'Rajwada Palace, also known as Holkar Palace, is a historic palace located in Indore, Madhya Pradesh, India. It is one of the prominent landmarks and tourist attractions in the city. The palace showcases a blend of Rajput and Mughal architectural styles.', 'Indore');

INSERT INTO Destination (Name, Description, Location)
VALUES ('Khajrana Ganesh Mandir', 'Khajrana Ganesh Mandir is a renowned Hindu temple located in Indore. It is dedicated to Lord Ganesha, the elephant-headed god and one of the most revered deities in Hinduism. The temple holds significant religious and cultural importance and is a popular pilgrimage site for devotees of Lord Ganesha.', 'Indore');

INSERT INTO Destination (Name, Description, Location)
VALUES ('Annapurna Temple', 'Annapurna Temple is a famous Hindu temple located in Indore, Madhya Pradesh, India. It is dedicated to Goddess Annapurna, who is considered the goddess of food and sustenance in Hindu mythology. The temple is an important religious and cultural landmark in Indore.', 'Indore');

INSERT INTO Destination (Name, Description, Location) VALUES ('Sarafa Bazaar', 'Sarafa Bazaar is a bustling and vibrant night market located in Indore, Madhya Pradesh, India. It is renowned for its wide variety of street food, jewellery, and cultural ambiance. Sarafa Bazaar comes to life after sunset, transforming the streets into a food lovers paradise and a hub for shopping enthusiasts.', 'Indore');



INSERT INTO Destination (Name, Description, Location)
VALUES ('Krishna Puri Chhatri', 'Krishna Puri Chhatri, also known as the Krishna Puri Cenotaphs, is a historical site located in Indore. It is a collection of cenotaphs or chhatris (memorial pavilions) built in honour of the Holkar dynasty rulers of Indore. The cenotaphs exhibit a unique architectural style that combines elements of Maratha and Rajputana architecture. Each chhatri is intricately designed with elaborate carvings, domes, pillars, and spires.', 'Indore');



INSERT INTO Destination (Name, Description, Location)
VALUES ('Choral Dam', 'Choral Dam, also known as Choral River Dam, is a popular tourist attraction located near. It is a scenic reservoir built across the Choral River, offering a serene and picturesque environment for visitors.', 'Indore');

INSERT INTO Destination (Name, Description, Location)
VALUES ('Janapav', 'Janapav is a significant historical and pilgrimage site located near Indore. It holds great cultural and religious significance, attracting visitors for its natural beauty, ancient history, and spiritual associations. It is believed to be the birthplace of the legendary king Parikshit, who was the grandson of Arjuna, one of the Pandavas from the epic Mahabharata.', 'Indore');



INSERT INTO Destination (Name, Description, Location)
VALUES ('Hanuwantiya', 'Hanuwantiya is located in the Khandwa district of Madhya Pradesh. It is approximately 140 kilometres from Indore. It is situated on the banks of the Indira Sagar Reservoir, which is one of the largest man-made lakes in Asia.', 'Indpre');

INSERT INTO Destination (Name, Description, Location)
VALUES ('Chhatri Bagh', 'Chhatri Bagh is situated in the heart of Indore, near the Rajwada Palace. It is easily accessible and well-known among locals and tourists. Chhatri Bagh is a complex of cenotaphs or chhatris (small dome-shaped pavilions) built in memory of the Holkar rulers of Indore. The chhatris showcase exquisite Maratha architecture and design, with intricately carved pillars, ornamental ceilings, and beautiful domes.', 'Indore');

INSERT INTO Destination (Name, Description, Location)
VALUES ('Central Museum', 'The Central Museum, also known as the Indore Museum, is a prominent museum located in the city. It is one of the oldest and most significant museums in the state of Madhya Pradesh, housing a diverse collection of artefacts, artworks, and historical exhibits. The Central Museum was established in 1929 by the Holkar dynasty rulers of Indore. It is housed in the Lalbagh Palace complex.', 'Indore');

Rajwada Palace, Khajrana Ganesh Mandir, Annapurna Temple, Sarafa Bazaar, Krishna Puri Chhatri, Choral Dam, Janapav, Hanuwantiya, Chhatri Bagh, Central Museum


-- inserting data(2)
-- tourpackage


INSERT INTO tourpackage (Name, Description, Price, Duration)
VALUES ('Silver', 'Rajwada Palace, Khajrana  Mandir, Sarafa Bazaar, Choral Dam.', 15000, 2);

INSERT INTO tourpackage (Name, Description, Price, Duration)
VALUES ('Gold', 'Rajwada Palace, Khajrana Ganesh Mandir, Annapurna Temple, Sarafa Bazaar, Janapav, Hanuwantiya,', 25000,3);

INSERT INTO tourpackage (Name, Description, Price, Duration)
VALUES ('platinum', 'Rajwada Palace, Khajrana Ganesh Mandir, Annapurna Temple, Sarafa Bazaar, Krishna Puri Chhatri, Choral Dam, Janapav, Hanuwantiya, Chhatri Bagh, Central Museum', 35000,5);

INSERT INTO tourpackage (Name, Description, Price, Duration)
VALUES ('Historical', 'Rajwada Palace, Khajrana Ganesh Mandir, Central Museum, ', 20000,4);

INSERT INTO tourpackage (Name, Description, Price, Duration)
VALUES ('WaterFall', 'Choral Dam, Janapav, Hanuwantiya, Chhatri Bagh,', 18000,2);




-- inserting data(3)
-- PackageDestination

 -- 1 Rajwada Palace   
 -- 2 Khajrana Ganesh Mandir
 -- 3 Annapurna Temple   
 -- 4 Sarafa Bazaar    
 -- 5 Krishna Puri Chhatri  
 -- 6 Choral Dam   
 -- 7 Janapav   
 -- 8 Hanuwantiya    
 -- 9 Chhatri Bagh   
 -- 10 Central Museum


  -- (1, 1,2,4,6)
 -- (2, 1,2,3,4,7,8)
 -- (3, 1,2,3,4,5,6,7,8,9,10)
 -- (4, 1,2,10)
-- (5, 6,7,8,9)


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (1, 1);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (1, 2);

INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (1, 4);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (1, 6);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (2, 1);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (2, 2);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (2, 3);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (2, 4);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (2, 7);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (2, 8);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (3, 1);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (3, 2);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (3, 3);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (3, 4);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (3, 5);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (3, 6);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (3, 7);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (3, 8);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (3, 9);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (3, 10);

INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (4, 1);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (4, 10);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (4, 2);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (5, 6);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (5, 7);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (5, 8);


INSERT INTO PackageDestination (PackageID, DestinationID) VALUES (5, 9);





-- inserting data (4)
-- user


INSERT INTO user (Name, Email, Password, Address, UserTripType)
VALUES ('dipesh', 'dipesh@example.com', 'password123', '123 Main St, Anytown, India', 'solo');

INSERT INTO user (Name, Email, Password, Address, UserTripType)
VALUES ('Sandhya', 'Sandhya@example.com', 'secret456', '456 Oak Ave, Othertown, Indore', 'friends');

INSERT INTO user (Name, Email, Password, Address, UserTripType)
VALUES ('Divyanshi', 'Divyanshi@example.com', 'topsecret789', '789 Elm St, Anotherplace, Indore', 'solo karate');

INSERT INTO user (Name, Email, Password, Address, UserTripType)
VALUES ('Rohit', 'Rohit@example.com', 'topsecret0726', '789 Elm St, Anotherplace, Indore', 'friends');


-- inserting data (5)
-- booking


INSERT INTO booking (UserID, PackageID, BookingDate, TotalCost)
VALUES (1, 1, '2024-05-01', 15000.00);

INSERT INTO booking (UserID, PackageID, BookingDate, TotalCost)
VALUES (2, 2, '2024-05-02', 25000.00);

INSERT INTO booking (UserID, PackageID, BookingDate, TotalCost)
VALUES (3, 3, '2024-05-03', 35000.00);

INSERT INTO booking (UserID, PackageID, BookingDate, TotalCost)
VALUES (4, 4, '2024-05-01', 20000.00);

-- inserting data(6)
-- payment

INSERT INTO payment (BookingID, PaymentDate, Amount, PaymentMethod)
VALUES (1, '2024-05-01', 15000.00, 'Credit Card');

INSERT INTO payment (BookingID, PaymentDate, Amount, PaymentMethod)
VALUES (2, '2024-05-02', 25000.00, 'PayPal');

INSERT INTO payment (BookingID, PaymentDate, Amount, PaymentMethod)
VALUES (3, '2024-05-03', 35000.00, 'Bank Transfer');

INSERT INTO payment (BookingID, PaymentDate, Amount, PaymentMethod)
VALUES (4, '2024-06-03', 20000.00, 'Bank Transfer');
