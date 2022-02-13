CREATE DATABASE IF NOT EXISTS lab20;
USE lab20;


CREATE TABLE cars (
Auto_ID BIGINT,
VIN VARCHAR(255),
Manufacturer VARCHAR(255),
Model VARCHAR(255),
Year INT,
Color VARCHAR(255),
Price FLOAT
);

CREATE TABLE salesperson (
Auto_ID BIGINT,
Staff_ID BIGINT,
Name VARCHAR(255),
Store VARCHAR(255),
Invoice_ID VARCHAR(255),
Car_ID VARCHAR(255)
);

CREATE TABLE customers (
Auto_ID BIGINT,
Customer_ID BIGINT,
Customers_Name VARCHAR(20),
Phone INT,
Email VARCHAR(255),
Adress VARCHAR(255),
City VARCHAR(255),
State_Province VARCHAR(255),
Country VARCHAR(255),
Zip_Postal_Code INT,
Car_ID VARCHAR(255),
Staff_ID INT,
Invoice_ID varchar(255)
);

CREATE TABLE invoices (
Auto_ID BIGINT,
Invoice_ID varchar(255),
Date DATETIME, 
Car_ID VARCHAR(255),
Customer_ID BIGINT
);