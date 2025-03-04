-- create contact table and set the primary key

Create Table contacts(
	contact_id int NOT NULL,
	first_name Varchar(150) NOT NULL,
	last_name Varchar(150) NOT NULL,
	email Varchar(150) NOT NULL,
		Primary key (contact_id)
);

-- create contact category and set the primary key
Create Table category(
	category_id Varchar(150) primary key,
	category Varchar(150) NOT NULL
);

-- create contact subcategory and set the primary key
Create Table subcategory(
	subcategory_id Varchar(150) Primary key,
	subcategory Varchar(150) NOT NULL
);

-- create contact campaign and set the primary key
CREATE TABLE campaign(
	cf_id INT PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL,
		foreign key (contact_id) references contacts(contact_id),
		foreign key (category_id) references category(category_id),
		foreign key (subcategory_id) references subcategory(subcategory_id)
);

SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;