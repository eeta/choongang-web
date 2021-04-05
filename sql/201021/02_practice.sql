SELECT *
FROM matchresult;

SELECT COUNT(*)
FROM matchresult;

SELECT DISTINCT horse_sex
From matchresult;

-- Q. 성별 출전 횟수
SELECT horse_sex, count(*)
FROM matchresult
GROUP BY horse_sex;

-- Q. 1등한 말의 순서
SELECT horse_name, COUNT(*)
FROM matchresult
WHERE ranking = 1
GROUP BY horse_name
ORDER BY COUNT(*) DESC;

-- Q. 박태종의 출전 횟수
SELECT COUNT(*)
FROM matchresult
WHERE jockey_name = '박태종'
  AND ranking <= 2;

-- Q. 출전 횟수
SELECT jockey_name, COUNT(*) AS cnt
FROM matchresult
GROUP BY jockey_name
ORDER BY cnt DESC;

-- Q. 말들의 평균 몸무게
SELECT horse_name, ROUND(AVG(horse_weight), 3) AS mn
FROM matchresult
GROUP BY horse_name
ORDER BY mn DESC;

-- Q. 몸무게 관리가 가장 안 되는 말
SELECT horse_name, ROUND(STDDEV(horse_weight), 3) AS st
FROM matchresult
GROUP BY horse_name
ORDER BY st DESC;

-- Q. 출생 위치에 따라 3순위권 내 도착 횟수
SELECT horse_origin, COUNT(*)
FROM matchresult
WHERE ranking <= 3
GROUP BY horse_origin;

SELECT horse_number, COUNT(*)
FROM matchresult
WHERE ranking <= 3
GROUP BY horse_number
ORDER BY horse_number;