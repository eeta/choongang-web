-- 부속 질의 SELECT, FROM, WHERE
SELECT *
FROM book
WHERE price >= 10000;

-- Q. 등록된 책 가격이 평균가격보다 높은 책의 이름을 구하라
SELECT *
FROM book
WHERE price >= (
    SELECT AVG(price)
    FROM book);

-- Q. 가장 비싼 도서의 이름을 구하라
SELECT *
FROM book
WHERE price = (SELECT MAX(PRICE) FROM book);
-- (스칼라)

-- Q. 도서를 구매한 적이 있는 고객의 이름을 구하라 **
SELECT name
FROM customer
WHERE custid NOT IN (
    SELECT custid
    FROM orders);
-- IN(벡터값)

-- Q. 대한미디어에서 출판한 도서를 구매한 고객의 이름을 구하라
SELECT name
FROM customer
WHERE custid IN (
    SELECT custid
    FROM orders
    WHERE bookid IN (
        SELECT bookid
        FROM book
        WHERE publisher = '대한미디어'));