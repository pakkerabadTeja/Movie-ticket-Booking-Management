CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_address VARCHAR(255),
    customer_contact VARCHAR(15)
);
CREATE TABLE Admin (
    admin_id INT PRIMARY KEY,
    admin_name VARCHAR(100),
    admin_contact_no VARCHAR(15),
    admin_role VARCHAR(50)
);
CREATE TABLE Online_Movie_Ticket_Booking_Website (
    website_name VARCHAR(100) PRIMARY KEY,
    website_url VARCHAR(255),
    contact_no VARCHAR(15)
);
CREATE TABLE Movie (
    movie_title VARCHAR(100) PRIMARY KEY,
    movie_desc TEXT,
    movie_stars VARCHAR(255)
);
CREATE TABLE Cinema (
    cinema_name VARCHAR(100) PRIMARY KEY,
    cinema_location VARCHAR(255),
    cinema_city VARCHAR(100)
);
CREATE TABLE Screen (
    screen_no INT PRIMARY KEY,
    screen_name VARCHAR(100),
    no_of_seats INT,
    cinema_name VARCHAR(100),
    FOREIGN KEY (cinema_name) REFERENCES Cinema(cinema_name)
);
CREATE TABLE Schedule (
    show_date DATE,
    show_time TIME,
    PRIMARY KEY (show_date, show_time)
);
CREATE TABLE Movie_Show (
    show_id INT PRIMARY KEY AUTO_INCREMENT,
    show_date DATE,
    show_time TIME,
    movie_title VARCHAR(100),
    cinema_name VARCHAR(100),
    FOREIGN KEY (movie_title) REFERENCES Movie(movie_title),
    FOREIGN KEY (cinema_name) REFERENCES Cinema(cinema_name)
);
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    show_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (show_id) REFERENCES Movie_Show(show_id)
);