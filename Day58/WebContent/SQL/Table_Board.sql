create sequence board_idx
    start with 1001
    increment by 1
    minvalue 1001
    maxvalue 9999999999999
    nocache;
    
drop table board;

create table board (
    idx         number          default board_idx.nextval,
    title       varchar2(200)   not null,
    contents    clob            not null,
    writer      varchar2(100)   not null,
    view_count  number          default 0,
    write_date  date            default sysdate,
    
    constraint board_idx primary key(idx),
    constraint board_writer foreign key(writer) references account(nick)
);

-- 1. 테이블에 게시글 내용을 채운다
insert into board (idx, title, contents, writer, view_count, write_date) 
values (board_idx.nextval, 'Hello WORLD!!', 'hello, it is test for jsp~', '관리자', 0, sysdate);

-- 게시글 추가 예시
-- 첫 번째 게시글
insert into board (title, contents, writer, view_count, write_date)
values ('첫 번째 게시글', '이 게시글은 첫 번째 게시글의 내용입니다.', '관리자', 0, sysdate);

-- 두 번째 게시글
insert into board (title, contents, writer, view_count, write_date)
values ('두 번째 게시글', '두 번째 게시글의 내용은 다음과 같습니다.', '유저1', 0, sysdate);

-- 세 번째 게시글
insert into board (title, contents, writer, view_count, write_date)
values ('세 번째 게시글', '세 번째 게시글의 내용을 여기에 작성합니다.', '자바바', 0, sysdate);

-- 네 번째 게시글
insert into board (title, contents, writer, view_count, write_date)
values ('네 번째 게시글', '네 번째 게시글은 다음과 같습니다.', '관리자', 0, sysdate);

-- 다섯 번째 게시글
insert into board (title, contents, writer, view_count, write_date)
values ('다섯 번째 게시글', '다섯 번째 게시글의 내용입니다.', '유저1', 0, sysdate);

-- 여섯 번째 게시글
insert into board (title, contents, writer, view_count, write_date)
values ('여섯 번째 게시글', '여섯 번째 게시글의 내용을 여기에 작성합니다.', '자바바', 0, sysdate);

-- 2. Day55 프로젝트 home.jsp에 테이블 목록을 전체 출력

select * from board;

commit;
