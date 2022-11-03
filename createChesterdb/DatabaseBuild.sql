DROP TABLE IF EXISTS tbl_student
DROP TABLE IF EXISTS tbl_scooter
DROP TABLE IF EXISTS tbl_ticket
DROP TABLE IF EXISTS tbl_bookings


CREATE TABLE tbl_student
(
    Student_No   int NOT NULL,
    Last_Name    varchar(15),
    First_Name   varchar(15),
    Email        varchar(30),
    Phone_Number varchar(15),

    PRIMARY KEY (Student_No)


);



CREATE TABLE tbl_scooter
(
    Scooter_ID      int NOT NULL,
    Scooter_Colours varchar(20),

    PRIMARY KEY (Scooter_ID)

);

CREATE TABLE tbl_ticket(
    Ticket_ID int NOT NULL ,
    Description varchar(100),

    PRIMARY KEY (Ticket_ID)

)




CREATE TABLE tbl_bookings
(
    Booking_ID   int NOT NULL,
    Booking_Date date,
    Scooter_ID   int,
    Student_No   int,
    Ticket_ID    int,

    PRIMARY KEY (Booking_ID),
        CONSTRAINT FK_Student_No FOREIGN KEY (Student_No)
        REFERENCES tbl_student(Student_No),
        CONSTRAINT FK_Scooter_ID FOREIGN KEY (Scooter_ID)
        REFERENCES tbl_scooter(Scooter_ID),
        CONSTRAINT FK_Ticket_ID FOREIGN KEY (Ticket_ID)
        REFERENCES tbl_ticket(Ticket_ID)

);




