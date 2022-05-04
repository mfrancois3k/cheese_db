create database cheeses_db;

use cheeses_db;

CREATE TABLE cheeses (
    name VARCHAR(255) NOT NULL DEFAULT "", 
    country VARCHAR(255) NOT NULL DEFAULT "", 
    color VARCHAR(255) NOT NULL DEFAULT "", 
    stink_level INT NOT NULL DEFAULT 0
);

INSERT INTO cheeses VALUES ("Roquefort", "French", "Yellow", 5);
INSERT INTO cheeses VALUES ("Epoisses", "French", "Orange", 9);
INSERT INTO cheeses VALUES ("Charolais", "French", "White", 5);
INSERT INTO cheeses VALUES ( "Maroilles", "French", "White", 10);
INSERT INTO cheeses VALUES ("Durrus", "Irish", "Yellow", 2);
INSERT INTO cheeses VALUES ("Hooligan", "American", "Yellow", 3);
INSERT INTO cheeses VALUES ("Teleme", "American", "White", 2);
INSERT INTO cheeses VALUES ("Stichelton", "English", "White", 4);