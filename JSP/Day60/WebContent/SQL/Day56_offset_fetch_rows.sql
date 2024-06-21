-- 1. insert로 board 테이블 부풀리기
insert into board(title, contents, writer)
    select title, contents, writer from board order by idx desc;
    
-- 2. 확인
select * from board order by idx desc;
select count(*) from board;

-- 3. 지정 범위만 select 하기
-- 3-1. 구버전
select * from
    (select rownum as r, A.* from
        (select * from board order by idx desc) A)
    where r >= 1 and r <= 10;
    
-- 3-2. 신버전
select * from board 
    order by idx desc
    offset 0 rows
    fetch first 10 rows only;
    
commit;