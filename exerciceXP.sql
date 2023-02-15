-- Database: public

-- DROP DATABASE IF EXISTS public;

CREATE DATABASE public
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	CREATE TABLE items(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	price numeric(50) NOT NULL
	);
	
	CREATE TABLE customers(
		id SERIAL PRIMARY KEY,
		lastname VARCHAR(100)NOT NULL,
		firstname VARCHAR(120) NOT NULL
	);
-- 	ajout de donneees dans la table items
	INSERT INTO items(name, price) VALUES('Small Desk', 100);
	INSERT INTO items(name, price) VALUES('Large desk', 300);
	INSERT INTO items(name, price) VALUES('Fan ', 80);
	
-- 	ajout de donneees dans la table items
INSERT INTO customers(lastname, firstname) VALUES('Greg', 'Jones');
INSERT INTO customers(lastname, firstname)
VALUES('Sandra', 'Jones'),
	  ('Scott', 'Scott '),
	  ('Trevor', 'Green'),
	  ('Melanie', 'Johnson');
	  
	  SELECT * FROM items;
	  SELECT * FROM items WHERE price > 80;
	  SELECT * FROM; items WHERE price <= 300;
	  
	  SELECT * FROM customers WHERE lastname = 'Smith';
	  SELECT * FROM customers WHERE lastname = 'Jones';
	  SELECT * FROM customers WHERE firstname NOT IN ('Scott ');
