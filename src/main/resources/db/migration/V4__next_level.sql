CREATE TABLE IF NOT EXISTS role
(
    id   BIGINT      NOT NULL PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name VARCHAR(40) NOT NULL
);

INSERT INTO role (id, name)
VALUES (1, 'Writer'),
       (2, 'Editor'),
       (3, 'Reviewer'),
       (4, 'Reader');

ALTER TABLE people
ADD role_id BIGINT NOT NULL REFERENCES role (id) DEFAULT 1;

UPDATE people
SET role_id = 1
WHERE role = 'Writer';

UPDATE people
SET role_id = 2
WHERE role = 'Editor';

UPDATE people
SET role_id = 3
WHERE role = 'Reviewer';

UPDATE people
SET role_id = 4
WHERE role = 'Reader';

ALTER TABLE people
DROP role;