create table BBS(
	bbsID number primary key,
	bbsTitle varchar2(50),
	userID varchar2(20),
	bbsDate varchar2(30),
	bbsContent varchar2(2000),
	bbsAvailable number			
);

select * from bbs;
