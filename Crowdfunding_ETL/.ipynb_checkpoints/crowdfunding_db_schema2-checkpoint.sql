drop table if exists campaign;
drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;

CREATE TABLE contacts (
	contact_id INT NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL,
	PRIMARY KEY (contact_id)
);

SELECT *
FROM contacts;

CREATE TABLE category (
	category_id VARCHAR(4) NOT NULL,
	category VARCHAR(20) NOT NULL,
	PRIMARY KEY (category_id)
);

SELECT *
FROM category;

CREATE TABLE subcategory (
	subcategory_id VARCHAR(8) NOT NULL,
	subcategory VARCHAR NOT NULL,
	PRIMARY KEY (subcategory_id)
);

SELECT *
FROM subcategory;

CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(10) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	lauched_date VARCHAR(10) NOT NULL,
	end_date VARCHAR(10)NOT NULL,
	category_id VARCHAR(4)NOT NULL,
	subcategory_id VARCHAR(8)NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

SELECT *
FROM campaign;