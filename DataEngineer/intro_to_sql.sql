-- >>> DATA QUERY SQL

-- SELECT
SELECT name, birthday
FROM students;

SELECT *
FROM students;

-- WHERE
SELECT *
FROM students
WHERE weight > 60;

SELECT *
FROM students
WHERE weight > 60 AND height > 170;

SELECT *
FROM students
WHERE weight BETWEEN 55 AND 70;

SELECT *
FROM students
WHERE YEAR(birthday) < 1990;

-- COUNT
SELECT count(*)
FROM students;

SELECT count(*)
FROM students
WHERE weight > 60;

-- GROUPBY
SELECT student_id, count(*)
FROM scores
GROUP BY student_id;

SELECT YEAR(birthday) AS birthyear, count(*)
FROM students
GROUP BY birthyear;

-- AGGREGATE
SELECT student_id, MAX(score)
FROM scores
GROUP BY student_id;

SELECT student_id, AVG(score)
FROM scores
GROUP BY student_id;

-- JOIN
SELECT a.student_id, name, subject, score
FROM students a INNER JOIN scores b
    ON a.student_id = b.student_id;

SELECT a.student_id, name, subject, score
FROM students a LEFT JOIN scores b
    ON a.student_id = b.student_id;



-- >>> DATA MANAGEMENT SQL

-- RESET student_id (for restarting class)
-- ALTER TABLE students AUTO_INCREMENT = 5;

-- INSERT
INSERT INTO students
VALUES (5, 'Michael', '1991-03-21', 60, 160);

INSERT INTO students
VALUES (NULL, 'Sarah', '1991-04-18', 70, 170);

-- UPDATE
UPDATE students
SET name="Tony"
WHERE student_id = 5;

-- DELETE
DELETE FROM students
WHERE student_id = 5;

DELETE FROM students
WHERE student_id > 4;



-- >>> DATA DEFINITION SQL

-- CREATE TABLE
CREATE TABLE `students2` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `weight` int NOT NULL,
  `height` int NOT NULL,
  PRIMARY KEY (`student_id`)
);

-- INSERT TO CREATE SAMPLE DATA
INSERT INTO students2
VALUES (NULL, 'David', '1991-03-21', 60, 160);

INSERT INTO students2
VALUES (NULL, 'Sarah', '1991-04-18', 48, 152);

-- ALTER TABLE
ALTER TABLE students2
    ADD shirt_size varchar(1);

INSERT INTO students2
VALUES (NULL, 'Joe', '1990-06-12', 69, 184, 'M');

-- TRUNCATE
TRUNCATE TABLE students2;

-- DROP TABLE
DROP TABLE students2;

SELECT *
FROM scores
WHERE student_id > 2;