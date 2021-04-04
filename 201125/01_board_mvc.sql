-- 멤버 테이블
DROP TABLE mvc_member;
CREATE TABLE mvc_member
(
    m_no       NUMBER(8),
    m_id       VARCHAR2(40),
    m_pw       VARCHAR2(40),
    m_nick     VARCHAR2(40),
    m_address  VARCHAR2(200),
    m_joindate DATE
);

DROP SEQUENCE mvc_member_seq;
CREATE SEQUENCE mvc_member_seq;

-- 컨텐트 테이블 조회수 증가
DROP TABLE mvc_content;
CREATE TABLE mvc_content
(
    c_no        NUMBER(8),
    m_no        NUMBER(8), -- 누가 썼는지. 외래키
    c_title     VARCHAR2(200),
    c_content   VARCHAR2(1000),
    c_readcount NUMBER(8),
    c_writedate DATE
);



DROP SEQUENCE mvc_content_seq;
CREATE SEQUENCE mvc_content_seq;

-- 테스트 코드
INSERT INTO mvc_member
VALUES (mvc_member_seq.nextval, 'yo', 'y44', 'yoyo', '강남구', SYSDATE);
INSERT INTO mvc_content
VALUES (mvc_content_seq.nextval, 1, '제목', '내용', 0, SYSDATE);


SELECT *
FROM mvc_member;
SELECT *
FROM mvc_content;



COMMIT;

SELECT *
FROM mvc_content
ORDER BY c_no DESC;

INSERT INTO mvc_content
VALUES (mvc_content_seq.NEXTVAL, 1, '안녕하세요', '내용', 0, SYSDATE);
INSERT INTO mvc_content
VALUES (mvc_content_seq.NEXTVAL, 1, '안녕하세요', '내용', 0, SYSDATE);
INSERT INTO mvc_content
VALUES (mvc_content_seq.NEXTVAL, 1, 'hello', 'mice to meet you', 0, SYSDATE);
INSERT INTO mvc_content
VALUES (mvc_content_seq.NEXTVAL, 1, 'wow', 'LOL', 0, SYSDATE);


-- 회원번호로 select
SELECT *
FROM mvc_member
WHERE m_no = 1;


DELETE
FROM mvc_content
WHERE c_no = 1;
COMMIT;



UPDATE mvc_content
SET c_title   = "바뀐 제목",
    c_content = "바뀐 내용"
WHERE c_no = 2;


SELECT *
FROM mvc_content;


-- READCONTENTPAGEHANDLER가 수행될 때 변경되어야 
UPDATE mvc_content
SET c_readcount = c_readcount + 1
WHERE c_no = 13;