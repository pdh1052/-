CREATE TABLE board (
	bno NUMBER(6) PRIMARY KEY,
	title VARCHAR2(100) NOT NULL,
	content VARCHAR2(3000) NOT NULL,
	writer VARCHAR2(30) NOT NULL,
	regdate DATE DEFAULT SYSDATE,
	updatedate DATE DEFAULT SYSDATE,
	viewCnt NUMBER DEFAULT 0
)

CREATE TABLE member(
id varchar2(20) NOT NULL,
pw varchar2(20) NOT NULL,
name varchar2(20) NOT NULL,
gender varchar2(10) NOT NULL,
birth varchar2(20) NOT NULL,
email varchar2(30) NOT NULL,
address varchar2(50) NOT NULL,
tell varchar2(20) not null,
primary key(id)
)

drop table member
delete table member
select *from member
