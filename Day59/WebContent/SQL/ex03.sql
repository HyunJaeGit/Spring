create sequence reply_seq 
    start with 101
    increment by 1
    minvalue 101
    maxvalue 9999999999999999999999999999
    nocache;
    
create table reply (
    idx         number          default reply_seq.nextval,
    board_idx   number          not null,
    contents    clob            not null,
    writer      varchar2(100)   not null,
    write_date  date            default sysdate,
    
    constraint reply_idx primary key(idx),
    constraint board_fk_idx foreign key(board_idx) references board(idx),
    constraint account_fk_nick foreign key(writer) references account(nick)
);

insert into 
    reply(board_idx, contents, writer)
    values(2544, '댓글 테스트 입니다', '유저1');

insert into 
    reply(board_idx, contents, writer)
    values(2543, '다른 글 댓글 테스트 입니다', '관리자1');
    
insert into 
    reply(board_idx, contents, writer)
    values(2544, '하이~', '아이티뱅크');

commit;

select * from reply where board_idx = 2544 order by idx desc;

select A.*, B.contents, B.writer, B.write_date
    from board A 
    left outer join reply B
    on A.idx = B.board_idx
    where A.idx = 2544
    order by B.idx desc;

desc reply;
