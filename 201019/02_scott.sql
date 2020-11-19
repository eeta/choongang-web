-- 명령어를 전달하는 접속기

-- 계정 생성
DROP USER scott;
CREATE USER scott IDENTIFIED BY tiger;
GRANT CONNECT, RESOURCE TO scott;