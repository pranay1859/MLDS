-- INSERT TABLE
CREATE TABLE `students` (
  `student_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `weight` int(3) NOT NULL,
  `height` int(3) NOT NULL,
  PRIMARY KEY (`student_id`)
);


CREATE TABLE `scores` (
  `score_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `score` int(3) NOT NULL,
  PRIMARY KEY (`score_id`)
);

-- INSERT DATA FOR STUDENTS TABLE
INSERT INTO students
VALUES (1, 'David', '1990-02-01', 75, 175);

INSERT INTO students
VALUES (2, 'John', '1989-04-30', 67, 169);

INSERT INTO students
VALUES (3, 'Mary', '1993-06-22', 58, 171);

INSERT INTO students
VALUES (4, 'Jane', '1990-08-10', 60, 153);

-- INSERT DATA FOR SCORES TABLE
INSERT INTO scores
VALUES (1, 1, 'Maths', 70);

INSERT INTO scores
VALUES (2, 1, 'Computer', 85);

INSERT INTO scores
VALUES (3, 1, 'Science', 74);

INSERT INTO scores
VALUES (4, 2, 'Maths', 68);

INSERT INTO scores
VALUES (5, 2, 'Computer', 72);

INSERT INTO scores
VALUES (6, 2, 'Science', 83);

INSERT INTO scores
VALUES (7, 3, 'Maths', 56);

INSERT INTO scores
VALUES (8, 3, 'Computer', 92);

INSERT INTO scores
VALUES (9, 3, 'Science', 47);