create sequence img_board_seq 
    start with 10001
    increment by 1
    minvalue 10001
    maxvalue 999999999999999999
    nocache;
    
create table img_board (
    idx         number          default img_board_seq.nextval,
    title       varchar2(200)   not null,
    contents    clob            not null,
    writer      varchar2(150)   not null,
    write_date  date            default sysdate,
    view_count  number          default 0,
    img         varchar2(300),

    constraint img_board_pk_idx primary key(idx)
);