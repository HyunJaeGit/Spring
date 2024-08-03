select * from reply order by idx desc;

-- 1. 게시글 번호와 댓글 개수를 가진 view를 생성
create view ReplyCnt as
    select board_idx, count(board_idx) as cnt
            from reply
            group by board_idx;

-- 2. 1번의 view와 board 테이블을 join
create view BoardView as
    select B.*, nvl(R.cnt, 0) as cnt
        from board B left outer join ReplyCnt R
        on B.idx = R.board_idx;

-- 3. DAO에서 사용할 구문
select * from BoardView
    where title like '%%'
    order by cnt desc;
    

    