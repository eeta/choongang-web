-- Join


-- Cross join (Cartesian Product 카티션 곱): 모든 경우의 수를 전부 표현
-- 결과값: 행의 개수 * 행의 개수
SELECT *
FROM orders,
     customer;

SELECT *
FROM orders,
     customer,
     book;


-- Inner join 내부 조인: 교집합
-- Primary key 혹은 Foreign key로 두 테이블을 연결
-- primary key: 레코드를 고유하게 식별하는 후보 키 중, 설계자가 정해 놓은 것
SELECT *
FROM orders
WHERE orderid = 4;

SELECT *
FROM orders,
     customer
WHERE orders.custid = customer.custid;

SELECT *
FROM orders,
     book
WHERE orders.bookid = book.bookid;

SELECT *
FROM orders,
     customer,
     book
WHERE orders.bookid = book.bookid
  AND orders.custid = customer.custid;

-- 박지성이 구매한 책의 이름
SELECT book.bookname
FROM orders,
     customer,
     book
WHERE Orders.bookid = book.bookid
  AND orders.custid = customer.custid
  And name = '박지성';

-- Q. 고객과 고객의 주문에 관한 데이터를 모두 출력하라
SELECT *
FROM customer cs,
     orders od
WHERE cs.custid = od.custid;

-- Q. 고객과 고객의 주문에 관한 데이터를 모두 출력하라
-- 단, 데이터를 고객번호 순으로 정렬하라
SELECT *
FROM customer cs,
     orders od
WHERE cs.custid = od.custid
ORDER BY cs.custid;

-- Q. 고객의 이름과 고객이 주문한 도서의 판매가격을 출력하라
SELECT customer.name, orders.saleprice
FROM customer,
     orders
WHERE customer.custid = orders.custid;

-- Q. 고객별로 주문한 모든 도서의 총 판매액을 구하고, 고객별로 정렬하라
SELECT customer.name, SUM(orders.saleprice)
FROM customer,
     orders
WHERE customer.custid = orders.custid
GROUP BY customer.name
ORDER BY customer.name;

-- Q. 동명이인일 경우 감안하여 custid로 group
SELECT customer.custid, SUM(orders.saleprice)
FROM customer,
     orders
WHERE customer.custid = orders.custid
GROUP BY customer.custid;

-- Q. 고객의 이름과 고객이 주문한 도서의 이름을 구하라
SELECT Customer.name, book.bookname
FROM orders,
     customer,
     Book
WHERE orders.custid = customer.custid
  And orders.bookid = book.bookid;

-- Q. 가격이 20000원인 도서를 주문한 고객의 이름과 도서의 이름을 구하라
SELECT cs.name, bk.bookname
FROM book bk,
     customer cs,
     Orders od
WHERE cs.custid = od.custid
  AND od.bookid = bk.bookid
  AND bk.price = 20000;

-- Q. 도서를 구매하지 않는 고객을 포함하여 
-- 고객의 이름과 고객이 주문한 도서의 판매 가격을 구하라
SELECT cs.name, bk.price
FROM customer cs,
     orders od,
     book bk
WHERE od.custid = cs.custid
  AND od.bookid = bk.bookid;


-- Outer join 외부 조인: 기준테이블의 값 + 테이블과 기준테이블의 중복된 값
SELECT customer.name, orders.saleprice
FROM customer
         LEFT OUTER JOIN orders -- 기준테이블
                         ON customer.custid = orders.custid;

SELECT customer.name, orders.saleprice
FROM orders
         RIGHT OUTER JOIN customer -- 기준으로 붙임
                          ON orders.custid = customer.custid;


-- 내부 조인하는 법 두 가지
-- 1. 크로스 조인 후 WHERE로 필터링
SELECT *
FROM orders,
     customer
WHERE orders.custid = customer.custid;

-- 2. FROM 테이블명1
--    INNER JOIN 테이블명2
--    ON 테이블명1.속성명 = 테이블명2.속성명
SELECT *
FROM orders
         INNER JOIN customer
                    ON orders.custid = customer.custid;