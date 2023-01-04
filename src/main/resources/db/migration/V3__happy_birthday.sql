ALTER TABLE people
    ADD birthday TIMESTAMP;

UPDATE people
SET birthday = '2001-01-01'
WHERE id = 1;

UPDATE people
SET birthday = '2002-02-02'
WHERE id = 2;

UPDATE people
SET birthday = '2003-03-03'
WHERE id = 3;

UPDATE people
SET birthday = '2004-04-04'
WHERE id = 4;