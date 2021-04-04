-- DROP TABLE matchresult;

CREATE TABLE matchresult
(
    ranking            NUMBER(4),
    horse_number       NUMBER(4),
    horse_name         VARCHAR2(40),
    horse_origin       VARCHAR2(10),
    horse_sex          VARCHAR2(10),
    horse_age          NUMBER(4),
    jockey_weight      NUMBER(8),
    rating             VARCHAR2(10),
    jockey_name        VARCHAR2(20),
    assistant_name     VARCHAR2(20),
    owner_name         VARCHAR2(20),
    arrival_difference VARCHAR(20),
    horse_weight       NUMBER(8),
    dan_win            NUMBER(20),
    yun_win            NUMBER(20),
    equipment          VARCHAR(200),
    running_date       DATE,
    race_number        NUMBER(4)
);

-- INSERT INTO matchresult VALUES(
--    1, 3, '마명', '한', '암', 4, 53.3 , '??', '박태종', '어시이름', 
--    '오너이름', '차이', 432.7, 9999.9, 9999.9, '눈가리개', '2014-07-30', 1
--);

SELECT *
FROM matchresult;

SELECT COUNT(*)
FROM matchresult;