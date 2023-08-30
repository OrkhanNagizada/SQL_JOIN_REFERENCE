CREATE DATABASE SomeLibrary

USE SomeLibrary 

CREATE TABLE Authors(
  author_id int PRIMARY KEY,
  author_name nvarchar (50)

);
Drop table Books

CREATE TABLE Books(
   book_id int PRIMARY KEY,
    book_name NVARCHAR(50),
    book_year int,

);
Alter Table Books Add author_id int
Alter Table Books Add  Foreign Key(author_id)  REFERENCES Authors(author_id)


CREATE TABLE Customers(
  customer_id int PRIMARY KEY,
  customer_name nvarchar (20) not null,
  customer_surname nvarchar (20) not null,
  customer_age int , check(customer_age>0),
  customer_adress nvarchar (100) not null,
  customer_phoneNumber nvarchar (100) UNIQUE ,
  customer_email nvarchar (100) not null

)

CREATE TABLE Checkouts (
    checkout_id int PRIMARY KEY,
    customer_id int,
    book_id int,
    checkout_date DATE,
    due_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);


SELECT*FROM Customers
INSERT INTO Authors(author_id , author_name) VALUES 
(1,'Nizami Gencevi');
INSERT INTO Books(book_id,book_name,book_year) VALUES
(1,N'X?MS?' ,1209);
INSERT INTO Customers(customer_id, customer_name, customer_surname, customer_age, customer_email, customer_phoneNumber,customer_adress) VALUES
(1, 'Orxan',  N'Na??zad?', 30 ,'orxan@gmail.com' , '+994552185848', '8noyabr pr.189A' ),

INSERT INTO Checkouts (checkout_id, customer_id, book_id, checkout_date, due_date) VALUES
(1, 1, 1, '2023-08-30', '2023-09-30');





