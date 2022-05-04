use cheeses_db;

create table cheeses (
    cheese_id serial primary key not null,
    name TEXT NOT NULL,
    country TEXT NOT NULL,
    color VARCHAR(50) NOT NULL,
    stink_level INT NOT NULL
)

-- using the command line above insert into cheese VALUES Maroilles, a white french cheese with a stink level of 10
-- Durrus, a yellow Irish cheese with a stink level of 2
-- Hooligan, a yellow American cheese with a stink level of 3
-- Teleme, a white american cheese with a stink level of 2
-- Stichelton, a white English cheese with a stink level of 4

SELECT * FROM cheeses;

--finding cheeses by contry
SELECT * FROM cheeses WHERE country = 'France';

SELECT * FROM cheeses WHERE country = 'England';

SELECT * FROM cheeses WHERE stink_level = 2;

SELECT * FROM cheeses WHERE stink_level = 10;
-- Find all cheeses with a stink level of 2
SELECT * FROM cheeses WHERE stink_level = 2;

-- Find all cheeses with a stink level of 10
SELECT * FROM cheeses WHERE stink_level = 10;

-- Find all French cheeses with a stink level of 5
SELECT * FROM cheeses WHERE country = "French" AND stink_level = 5;

-- Find all Irish cheeses with a stink level of 6
SELECT * FROM cheeses WHERE country = "Irish" AND stink_level =
 6;

-- Find all cheeses with a stink level of at least 4, but no greater than 8.
SELECT * FROM cheeses WHERE stink_level > 3 AND stink_level < 8;

-- Find all American and English cheeses.
SELECT * FROM cheeses WHERE country = "American" OR country = "Engl
ish";

-- Find all cheeses that are not from France.
SELECT * FROM cheeses WHERE country != "French";

-- 

--Updates to our database for cheese 
Update cheeses SET stink_level = stink_level + 1 WHERE country = 'Ireland';

--Change the stink level of Roquefort to 3
UPDATE cheeses SET stink_level = 3 WHERE name = 'Roquefort';

--Change the color of Teleme to "mauve"
UPDATE cheeses SET color = 'mauve' WHERE name = 'Teleme';

--Delete the Hooligan cheese
DELETE FROM cheeses WHERE name = 'Hooligan';

--Change the stink level of Stichelton to be 7
UPDATE cheeses SET stink_level = 7 WHERE name = 'Stichelton';

--Add the cheese "Monterey Jack", an American cheese with a stink level of 0

INSERT INTO cheeses VALUES ("Monterey Jack", "American", "", 0);


--Add a column named animal_milk with a datatype of VARCHAR(50) to the cheeses table
ALTER TABLE cheeses ADD COLUMN animal_milk VARCHAR(50);

--Add a column named pasteurized with a boolean datatype to the cheeses table
ALTER TABLE cheeses ADD COLUMN pasteurized BOOLEAN;

--Add the new cheese data (see table below)
INSERT INTO cheeses VALUES (DEFAULT, 'Brie', 'France', 'red', 5, 'cow milk', true);

--Change "Monterey Jack" to "Pepper Jack"
UPDATE cheeses SET name = 'Pepper Jack' WHERE name = 'Monterey Jack';

ALTER TABLE cheeses ADD COLUMN pasteurized BOOLEAN NOT NULL AFTER stink_level;


ALTER TABLE cheeses DROP COLUMN pasteurized;
-- Update the new cheese data (see table below)

INSERT INTO cheeses (cheese_id, name, pasteurized, animal_milk) VALUES 
(3,"Charolais", false, "goat"),
(4,"Maroilles", false, "cow"),
(5,"Durrus", false, "cow"),
(1,"Roquefort", false, "sheep"),
(6,"Teleme", true, "cow"),
(7,"Stichelton", true, "cow"),
(9,"Monterey Jack", true, "cow")
ON DUPLICATE KEY UPDATE
cheese_id=VALUES(cheese_id),
name=VALUES(name),
pasteurized=VALUES(pasteurized),
animal_milk=VALUES(animal_milk);


DELETE FROM cheeses WHERE cheese_id > 9;

-- Change "Monterey Jack" to "Pepper Jack"
UPDATE cheeses SET name = "Pepper Jack" WHERE name = "Monterey Jack";

