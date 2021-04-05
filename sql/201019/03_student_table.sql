CREATE TABLE student(
    name VARCHAR2(20),
    phone_number VARCHAR2(40),
    score NUMBER(3)
);


INSERT INTO student VALUES('한조', '010-777-7777', 70);
INSERT INTO student VALUES('트레이서', '010-888-8888', 80);
INSERT INTO student VALUES('메르시', '010-222-2222', 20);
INSERT INTO student VALUES('브리기테', '010-333-3333', 30);
INSERT INTO student VALUES('리퍼', '010-666-6666', 60);


SELECT * FROM student;

SELECT * FROM student WHERE NAME = '트레이서';

SELECT * FROM student WHERE score >= 60;

SELECT COUNT(*) FROM student;

SELECT AVG(score) FROM student;