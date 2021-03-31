CREATE TABLE board (
	bno NUMBER(6) PRIMARY KEY,
	title VARCHAR2(100) NOT NULL,
	content VARCHAR2(3000) NOT NULL,
	writer VARCHAR2(30) NOT NULL,
	regdate DATE DEFAULT SYSDATE,
	updatedate DATE DEFAULT SYSDATE,
	viewCnt NUMBER DEFAULT 0
)

drop table board
