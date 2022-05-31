create table gbbs (
    GBBSID NUMBER PRIMARY KEY,
    GBBSTITLE VARCHAR2(50),
    ID VARCHAR2(20),
    GBBSDATE VARCHAR2(30),
    GBBSCONTENT VARCHAR2(2048),
    GBBSAVAILABLE NUMBER
);

select * from gbbs;

INSERT INTO gbbs (gbbsid,gbbstitle,id,gbbsdate,gbbscontent,gbbsavailable)
VALUES (1,'ddd','hihi','2022-05-05','korea',100);
