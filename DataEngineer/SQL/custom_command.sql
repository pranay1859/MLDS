-- add data
INSERT INTO students
VALUES (5, 'Michael', '1991-03-21', 60, 160);

-- update data
UPDATE students
SET name="Tony"
WHERE student_id = 5;

-- delete data
DELETE FROM students
WHERE student_id = 5;

-- delete many data
DELETE FROM students;
WHERE student_id > 4;

-- SQL LIFE CYCLE

-- CREATE 
-- QUERY
-- ALTER (edit)
-- TRUNCATE (clear all data)
-- DROP (remove all TABLE)

CREATE TABLE `students2`(
    `student_id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `birthdat` date NOT NULL,
    `weight` int NOT NULL,
    `heigtht` int NOT NULL,
    PRIMARY KEY ( `student_id`)

);
