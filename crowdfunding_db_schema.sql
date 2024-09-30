-- Create a database called "crowdfunding_db"
CREATE DATABASE crowdfunding_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Create a table called "category" and fields in the table
CREATE TABLE category (
  category_id VARCHAR (10) NOT NULL,
  category VARCHAR (50) NOT NULL,
  PRIMARY KEY (category_id)
);

-- Create a table called "subcategory" and fields in the table
CREATE TABLE subcategory (
  subcategory_id VARCHAR (10) NOT NULL,
  subcategory VARCHAR (50) NOT NULL,
  PRIMARY KEY (subcategory_id)
);

-- Create a table called "contacts" and fields in the table
CREATE TABLE contacts (
  contact_id INT NOT NULL,
  first_name VARCHAR (20) NOT NULL,
  last_name VARCHAR (20) NOT NULL,
  email VARCHAR (50) NOT NULL,
  PRIMARY KEY (contact_id)
);

-- Create a table called "campaign" and fields in the table
CREATE TABLE campaign (
  cf_id INT NOT NULL,
  contact_id INT NOT NULL REFERENCES contacts(contact_id),
  company_name VARCHAR (100) NOT NULL,
  description VARCHAR (200),
  goal FLOAT NOT NULL,
  pledged FLOAT NOT NULL,
  outcome VARCHAR (20) NOT NULL,
  backers_count INT NOT NULL,
  country VARCHAR (10) NOT NULL,
  currency VARCHAR (10) NOT NULL,
  launch_date DATE NOT NULL,
  end_date DATE NOT NULL,
  category_id VARCHAR (10) NOT NULL REFERENCES category(category_id),
  subcategory_id VARCHAR (10) NOT NULL REFERENCES subcategory(subcategory_id),
  PRIMARY KEY (cf_id)
);

-- SELECT statements for verifying table creation and the data in each table 
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;