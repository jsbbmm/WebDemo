/*删除数据库*/
DROP database IF EXISTS MLDN;
/*创建数据库*/
CREATE database MLDN default character set utf8 collate  utf8_general_ci;
/*使用数据库*/
USE MLDN;
/*删除表*/
DROP TABLE IF EXISTS EMP;

/*创建数据库中的表*/
CREATE TABLE EMP(
   EMPNO      INT(4)    PRIMARY KEY,
   ENAME      VARCHAR(10) CHARACTER  set utf8,
   JOB        VARCHAR(9)  CHARACTER  set utf8,
   HIREDATE   DATE,
   SAL       FLOAT(7,2)
)ENGINE=InnoDB default charset=utf8;
/*插入测试数据*/
insert into EMP(EMPNO,ENAME,JOB,HIREDATE,SAL) VALUES (6060,'邓超','演员','2016-12-18',17800);
insert into EMP(EMPNO,ENAME,JOB,HIREDATE,SAL) VALUES (6061,'李雪健','IT工程师','2016-12-19',270);
insert into EMP(EMPNO,ENAME,JOB,HIREDATE,SAL) VALUES (6062,'李连杰','歌手','2016-12-22',470);
insert into EMP(EMPNO,ENAME,JOB,HIREDATE,SAL) VALUES (6063,'周星驰','老师','2016-12-28',450);
insert into EMP(EMPNO,ENAME,JOB,HIREDATE,SAL) VALUES (6064,'甄子丹','IT工程师','2016-12-23',700);
insert into EMP(EMPNO,ENAME,JOB,HIREDATE,SAL) VALUES (6065,'成龙','IT工程师','2016-12-3',800);
insert into EMP(EMPNO,ENAME,JOB,HIREDATE,SAL) VALUES (6066,'JONN','英国','2016-12-11',850);


USE 	MLDN

DROP TABLE IF EXISTS USER;

CREATE TABLE USER(
   USERID       VARCHAR(30)   PRIMARY KEY,
   NAME         VARCHAR(30)   NOT NULL,
   PASSWORD     VARCHAR(32)   NOT NULL
)
insert into user(userid,name,password) values ("admin","admin","admin");
