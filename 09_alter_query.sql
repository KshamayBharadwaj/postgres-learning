--  How to add or remove a column ?
ALTER TABLE person 
ADD COLUMN age INT;

-- Removing a column 
ALTER TABLE person 
DROP COLUMN age ;

-- Renaming Column Name 
ALTER TABLE person 
RENAME COLUMN name TO full_name;


-- Renaming a table 
ALTER TABLE person 
RENAME TO person_list;

-- Modifying the table data 
ALTER TABLE person_list 
ALTER COLUMN full_name
SET DATA TYPE VARCHAR(150);

ALTER TABLE person_list
ALTER COLUMN full_name
SET DEFAULT 'unknown';

ALTER TABLE person_list
ALTER COLUMN city
SET NOT NULL ;

-- How to remove NOT NULL 
ALTER TABLE person_list
ALTER COLUMN city
DROP NOT NULL ;