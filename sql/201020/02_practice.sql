-- Q. 모든 도서의 이름과 가격
SELECT bookname, price
FROM book;

SELECT bookname, bookname FROM Book;

SELECT * FROM Book;
SELECT bookid, bookname, publisher, price FROM Book;

-- Q. 모든 출판사를 검색하라
SELECT publisher FROM Book;

-- Q. 모든 출판사를 검색하되, 중복된 값은 한 번만 출력하라
SELECT DISTINCT publisher FROM Book;

-- SELECT 연산 가능, 별칭 짓기 가능(ALIAS)
SELECT price * 0.9 AS secondprice FROM Book;


-- WHERE 조건절

-- Q. 가격이 20000원 미만인 도서를 검색하라
SELECT price
FROM book
WHERE price < 20000;

-- Q. 가격이 10000원 이상 20000원 이하 도서를 검색하라
SELECT *
FROM book
WHERE price >= 10000 AND price <= 20000;

SELECT *
FROM book
WHERE price between 10000 AND 20000;

-- Q. 출판사가 굿스포츠 혹은 대한미디어인 도서를 검색하라
SELECT *
FROM book
WHERE publisher = '굿스포츠' OR publisher = '대한미디어';

-- IN: WHERE 절 내에서 특정값 여러개를 선택하는 SQL 연산자
-- 괄호 내의 값 중 일치하는 것이 있으면 TRUE
SELECT * 
FROM book 
WHERE publisher IN('굿스포츠', '대한미디어');

-- Q. 출판사가 굿스포츠 혹은 대한미디어가 아닌 도서를 검색하라
SELECT *
FROM book
WHERE publisher != '굿스포츠' AND publisher != '대한미디어';

SELECT * 
FROM book 
WHERE publisher NOT IN('굿스포츠', '대한미디어');

-- Q. 축구의 역사를 출판한 출판사를 검색하라
-- LIKE: 문자열 패턴 매칭 시 사용
SELECT publisher
FROM Book
WHERE bookname LIKE '축구의 역사';

-- Q. 책 이름에 '축구'가 들어간 출판사를 검색하라
-- 와일드 카드 %: 0개 이상의 문자
SELECT publisher
FROM book
WHERE bookname LIKE '%축구%';

-- Q. 도서 이름 중에 '구'라는 글자가 두번째에 들어가는 도서를 검색하라
-- 와일드 카드 _: 1개의 문자
SELECT *
FROM book
WHERE bookname LIKE '_구%';

-- Q. 성이 김씨인 고객의 정보를 출력하라
SELECT *
FROM customer
WHERE name LIKE '김%';

-- Q. 박으로 시작하고 리로 끝나는 고객의 정보를 출력하라
SELECT *
FROM customer
WHERE name LIKE '박%리';

-- Q. 축구에 관한 도서 중 가격이 20000원 이상인 도서를 검색하라
SELECT *
FROM book
WHERE bookname LIKE '%축구%' AND price >= 20000;

-- Q. 도서를 이름 순으로 검색하라
-- 오름차순: ASC 생략
SELECT *
FROM book
ORDER BY bookname;

-- Q. 도서를 가격 순으로 검색하라
SELECT *
FROM book
ORDER BY price;

-- Q. 도서를 가격 순으로 검색하되, 가격이 같으면 출판사 이름 순으로 검색하라
SELECT *
FROM book
ORDER BY price, publisher;

-- Q. 도서를 가격의 내림차순으로 검색하라
SELECT *
FROM book
ORDER BY price DESC;

-- Q. 도서를 가격의 내림차순으로 검색하되, 가격이 같을 경우 출판사의 오름차순으로 검색하라
SELECT *
FROM book
ORDER BY price DESC, publisher;


-- 집계 함수 (통계)

-- Q. 고객이 주문한 도서의 총 판매액을 구하라
SELECT SUM(saleprice) AS 총_판매액
FROM orders;

SELECT SUM(bookid), SUM(saleprice)
FROM orders;

-- Q. 김연아 고객이 주문한 도서의 총 판매액을 구하라 (custid: 2)
SELECT SUM(saleprice)
FROM orders
WHERE custid = 2;

-- Q. 모든 고객이 주문한 도서의 총 판매액, 평균가, 최저가, 최고가, 표준편차를 구하라
-- SUM, AVG, MIN, MAX, STDDEV: 표준편차
SELECT SUM(saleprice), AVG(saleprice), MIN(saleprice), MAX(saleprice), STDDEV(saleprice)
FROM orders;

-- Q. 마당서점의 도서 판매 건수를 구하라
-- COUNT: NULL 값을 포함한 행의 수를 출력
SELECT COUNT(*)
FROM orders;

-- Q. 고객별 주문한 도서의 총 수량과 총 판매액을 구하라
-- GROUP BY: 기준이 되는 속성만 출력 가능(고객별), 나머지 속성은 집계해서 출력
SELECT custid, COUNT(*), SUM(saleprice)
FROM orders
GROUP BY custid;

-- Q. 가격이 8000원 이상인 도서를 구매한 고객에 한하여, 고객별 주문도서의 총 수량을 구하라
-- 단, 2번 이상 구매한 고객만 구하라
SELECT custid, COUNT(*)
FROM orders
WHERE saleprice >= 8000
GROUP BY custid
HAVING COUNT(*) >= 2;