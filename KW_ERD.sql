DROP TABLE IF EXISTS Subcategory;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Contacts;
DROP TABLE IF EXISTS Campaign;

CREATE TABLE Subcategory (
    subcategory_id VARCHAR NOT NULL,
    subcategory VARCHAR NOT NULL,
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE Category (
    category_id VARCHAR NOT NULL,
    category VARCHAR NOT NULL,
    PRIMARY KEY (category_id)
);
 
CREATE TABLE Contacts (
    contact_id INTEGER, 
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR,
    PRIMARY KEY (contact_id)
);

CREATE TABLE Campaign (
    cf_id INTEGER NOT NULL,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL, 
    outcome VARCHAR NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launched_date VARCHAR NOT NULL,
    end_date VARCHAR NOT NULL,
    category_id VARCHAR  NOT NULL,
    subcategory_id VARCHAR NOT NULL,
    FOREIGN KEY(category_id) REFERENCES Category (category_id),
    FOREIGN KEY(subcategory_id) REFERENCES Subcategory (subcategory_id)
);
