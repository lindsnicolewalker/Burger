-- Create the burgers_db.
-- Switch to or use the burgers_db.
-- Create a burgers table with these fields:



-- id: an auto incrementing int that serves as the primary key.

-- burger_name: a string.

-- devoured: a boolean.
DROP DATABASE IF EXISTS bf6d029qqeofpztm;
CREATE DATABASE IF NOT EXISTS bf6d029qqeofpztm;
USE bf6d029qqeofpztm;

CREATE TABLE burger (
	id INT AUTO_INCREMENT NOT NULL,
	burger_name VARCHAR(255),
	devoured BOOLEAN DEFAULT false,
    createdAt TIMESTAMP NOT NULL,
	PRIMARY KEY (id)
);

SELECT * FROM bf6d029qqeofpztm.burger;