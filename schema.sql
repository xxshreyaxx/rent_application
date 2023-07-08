-- Schema for Property Rental Application

-- Create the database
CREATE DATABASE dbmspr;

-- Use the database
USE dbmspr;

-- Create the 'users' table
CREATE TABLE users (
  adharid INT NOT NULL PRIMARY KEY,
  pname VARCHAR(60) NOT NULL,
  uname VARCHAR(60) NOT NULL,
  upassword VARCHAR(60) NOT NULL,
  age INT NOT NULL,
  doorno VARCHAR(10) NOT NULL,
  street VARCHAR(20) NOT NULL,
  city VARCHAR(20) NOT NULL,
  state VARCHAR(20) NOT NULL,
  pincode VARCHAR(7) NOT NULL
);

-- Create the 'manager' table
CREATE TABLE manager (
  mid INT PRIMARY KEY,
  FOREIGN KEY (mid) REFERENCES users (adharid)
);

-- Create the 'dba' table
CREATE TABLE dba (
  dbaid INT PRIMARY KEY,
  FOREIGN KEY (dbaid) REFERENCES users (adharid)
);

-- Create the 'user_phone' table
CREATE TABLE user_phone (
  uid INT,
  phone_no VARCHAR(10),
  CONSTRAINT user_phone_pk PRIMARY KEY (uid, phone_no),
  FOREIGN KEY (uid) REFERENCES users (adharid)
);

-- Create the 'tenant' table
CREATE TABLE tenant (
  tid INT PRIMARY KEY,
  FOREIGN KEY (tid) REFERENCES users (adharid)
);

-- Create the 'owner' table
CREATE TABLE owner (
  oid INT PRIMARY KEY,
  FOREIGN KEY (oid) REFERENCES users (adharid)
);

-- Create the 'property' table
CREATE TABLE property (
  pid INT NOT NULL PRIMARY KEY,
  owner_id INT NOT NULL,
  start_date DATE,
  end_date DATE,
  rentpm INT,
  hike INT,
  total_area DECIMAL,
  plinth_area DECIMAL,
  no_floors INT,
  year_constr YEAR,
  locality VARCHAR(10),
  door_no VARCHAR(10),
  street VARCHAR(20),
  pincode VARCHAR(6),
  city VARCHAR(15),
  state VARCHAR(15),
  prop_type VARCHAR(20),
  other VARCHAR(100),
  FOREIGN KEY (owner_id) REFERENCES owner (oid)
);

-- Create the 'residential' table
CREATE TABLE residential (
  respid INT NOT NULL PRIMARY KEY,
  no_bedroom INT,
  FOREIGN KEY (respid) REFERENCES property (pid)
);

-- Create the 'rent_relation' table
CREATE TABLE rent_relation (
  tenid INT NOT NULL,
  prop_id INT NOT NULL,
  contract_start DATE,
  contract_end DATE,
  rent_pm DECIMAL,
  hike DECIMAL,
  agency_comm DECIMAL,
  CONSTRAINT rent_relation_pk PRIMARY KEY (tenid, prop_id),
  FOREIGN KEY (prop_id) REFERENCES property (pid),
  FOREIGN KEY (tenid) REFERENCES tenant (tid)
);
