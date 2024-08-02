create sequence board_idx
    start with 1001
    increment by 1
    minvalue 1001
    maxvalue 99999999999999999999999
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
    constraint board_writer foreign key (writer) references account(nick)
);


-- 1. 테이블에 게시글 내용을 채운다
insert into board(title, contents, writer) values('테스트1', '테스트 입니다', '관리자1');
insert into board(title, contents, writer) values('안녕하세요', 'hello', '유저1');
insert into board(title, contents, writer) values('반갑습니다', 'ㅇㅇ', '아이티뱅크');
insert into board(title, contents, writer) values('더미 데이터', 'test', '해시');
insert into board(title, contents, writer) values('빨리 연휴', '빨리', '관리자1');
commit;
rollback;

select * from board order by idx desc;

select to_char(sysdate, 'yyyy-mm-dd') as time from dual;
desc board