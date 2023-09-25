DROP DATABASE hackerrank;

CREATE DATABASE hackerrank;

CREATE SCHEMA hr;

CREATE TABLE hr.occupations (
                                id serial PRIMARY KEY,
                                name character varying(100) NOT NULL,
                                occupation character varying(100) NOT NULL
);


INSERT INTO hr.occupations (name, occupation) VALUES ('Aamina', 'Doctor');
INSERT INTO hr.occupations (name, occupation) VALUES ('Ashley', 'Professor');
INSERT INTO hr.occupations (name, occupation) VALUES ('Belvet', 'Doctor');
INSERT INTO hr.occupations (name, occupation) VALUES ('Britney', 'Professor');
INSERT INTO hr.occupations (name, occupation) VALUES ('Christeen', 'Singer');
INSERT INTO hr.occupations (name, occupation) VALUES ('Eve', 'Actor');
INSERT INTO hr.occupations (name, occupation) VALUES ('Jane', 'Singer');
INSERT INTO hr.occupations (name, occupation) VALUES ('Jennifer', 'Actor');
INSERT INTO hr.occupations (name, occupation) VALUES ('Jenny', 'Singer');
INSERT INTO hr.occupations (name, occupation) VALUES ('Julia', 'Doctor');
INSERT INTO hr.occupations (name, occupation) VALUES ('Ketty', 'Actor');
INSERT INTO hr.occupations (name, occupation) VALUES ('Kristeen', 'Singer');
INSERT INTO hr.occupations (name, occupation) VALUES ('Maria', 'Professor');
INSERT INTO hr.occupations (name, occupation) VALUES ('Meera', 'Professor');
INSERT INTO hr.occupations (name, occupation) VALUES ('Naomi', 'Professor');
INSERT INTO hr.occupations (name, occupation) VALUES ('Priya', 'Doctor');
INSERT INTO hr.occupations (name, occupation) VALUES ('Samantha', 'Actor');


SELECT str FROM (

                    SELECT CONCAT(NAME,'(',SUBSTRING(OCCUPATION,1,1) ,')') str FROM hr.occupations ORDER BY OCCUPATION ASC

                )t ORDER BY STR;
SELECT CONCAT('There are a total of ',COUNT(*),' ',LOWER(OCCUPATION),'s.') str FROM hr.occupations GROUP BY OCCUPATION ORDER BY str ASC;