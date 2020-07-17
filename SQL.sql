use mysql;
show tables;
show databases;
use mydb;
create table board(
bno varchar(10) primary key,
btitle varchar(1000),
bcontent varchar(4294967295),
bsearch varchar(4294967295),
bwritedate date,
bwriter varchar(100),
bhit varchar(10),
bfile varchar(4294967295)
);
drop table board;
insert into board values("6","hi","hi","hi",now(), "jinwoo",0,null);
select * from board;