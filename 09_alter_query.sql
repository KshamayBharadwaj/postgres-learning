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
