drop table recommend;

create sequence recommend_seq
    start with 100
    increment by 1
    minvalue 100
    maxvalue 999999999999999999999999999999999
    nocache;

create table recommend (
    idx         number          default recommend_seq.nextval,
    board_idx   number,
    nick        varchar2(100),
    good        number,
    
    constraint recommend_uk1_board_idx unique(idx, board_idx, nick),
    constraint recommend_fk1_board_idx foreign key(board_idx) references board(idx) on delete cascade,
    constraint recommend_fk2_nick foreign key(nick) references account(nick) on delete set null 
);

select * from recommend;

insert into recommend values(default, 1007, '유저2', 1);
insert into recommend values(default, 1007, '해시', 0);
insert into recommend values(default, 1009, '테스트2', 1);
insert into recommend values(default, 1007, '테스트2', 1);

select writer from board group by writer;

delete from account where nick = '테스트2';
-- ※ 외래키 nick의 열이 제거되면? (게시글을 작성하지 않은 계정으로 실습할 것)
-- 1. 작업 없음 : 삭제가 진행되지 않음 (부모키가 없으면 안되기 때문에 무결성 제약조건 발생)
-- 2. 종속 삭제 : 해당 nick으로 지정된 행 모두 제거
-- 3. null 설정 : 해당 nick으로 지정된 행 데이터를 모두 null로 변경

rollback;

-- 1번. 1007번 글의 추천(1) 수를 구하는 SQL
select count(*) from recommend 
    where board_idx = 1007 and good = 1;
    
-- 2번. group-by로 처리
select board_idx, count(*) from recommend
    where good = 1
    group by board_idx;