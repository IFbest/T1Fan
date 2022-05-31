create table members (
    name varchar2(30) not null,
    id varchar2(30),
    pass varchar2(1000) not null,
    passcheck varchar2(1000) not null,
    email varchar2(30) not null,
    phonenum varchar2(20) not null,
    type varchar2(10),
    memberPost varchar2(5) not null,
    memberAddr varchar2(100) not null,
    memberDetail varchar2(20),
    primary key(id)
);
--기본 관리자 계정
INSERT INTO MEMBERS VALUES ('admin', 'admin', 'admin', 'admin', 
'admin@gmail.com', '010-0000-0000', 'admin', '12345', 'admin','admin');

select * from members;