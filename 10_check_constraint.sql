ALTER TABLE person_list
ADD COLUMN mob VARCHAR(15) CHECK (LENGTH(mob)>=10);

ALTER TABLE person_list
DROP CONSTRAINT person_list_mob_check;

-- Named constraint 
ALTER TABLE person_list ADD CONSTRAINT mob_limit CHECK (LENGTH(mob)>=10);


ALTER TABLE person_list ADD COLUMN email VARCHAR(20) CHECK (email LIKE '%@kshamay.me');