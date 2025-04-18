CREATE DATABASE ShopDB; 
USE ShopDB; 

-- Create a table to store countries 
CREATE TABLE Countries (
    ID INT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
) ENGINE=InnoDB;

-- Create a table for caching GeoIP data (Columns: ID, IP Range, CountryID)
CREATE TABLE GeoIpCache (
  ID INT AUTO_INCREMENT,
  IPRange INT,
  CountryID INT,
  PRIMARY KEY (ID)
) ENGINE=MEMORY;

-- Create a table for storing product descriptions for different countries (Columns: ID, CountryID, ProductID, Description )
CREATE TABLE ProductDescriptions (
  ID INT AUTO_INCREMENT,
  Description VARCHAR(255),
  ProductID INT,
  CountryID INT,
  PRIMARY KEY (ID)
) ENGINE=MyISAM;

-- Create a table for storing logs. For now we don't need to save them, but we need to implement functionality (Columns: ID, Time, LogRecord)
CREATE TABLE Logs (
  ID INT AUTO_INCREMENT,
  Timestamp DATETIME,
  Message VARCHAR(255),
  PRIMARY KEY (ID)
) ENGINE=BLACKHOLE;

-- Create a table for storing reporting data, which will be send to a separate application in the CSV format for analytics purposes (Columns:  Date, ProductName, Orders)
CREATE TABLE ProductReporting (
  Date DATE,
  ProductName VARCHAR(50),
  Orders INT
) ENGINE=CSV;