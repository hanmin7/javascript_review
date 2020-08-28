

create table board(
no number primary key,
poster varchar2(20), --작성자
subject varchar2(100), --제목  ins
contents varchar2(2000), --내용  ins
lastpost date, --작성일자  ins
views number(5), --조회수
filename varchar2(50) --첨부파일  ins
);