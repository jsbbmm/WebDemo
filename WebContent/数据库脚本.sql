/*ɾ�����ݿ�*/
DROP database IF EXISTS MLDN;
/*�������ݿ�*/
CREATE database MLDN default character set utf8 collate  utf8_general_ci;
/*ʹ�����ݿ�*/
USE MLDN;
/*ɾ����*/
DROP TABLE IF EXISTS EMP;

/*�������ݿ��еı�*/
CREATE TABLE EMP(
   EMPNO      INT(4)    PRIMARY KEY,
   ENAME      VARCHAR(10) CHARACTER  set utf8,
   JOB        VARCHAR(9)  CHARACTER  set utf8,
   HIREDATE   DATE,
   SAL       FLOAT(7,2)
)ENGINE=InnoDB default charset=utf8;
/*�����������*/
insert into EMP(EMPNO,ENAME,JOB,HIREDATE,SAL) VALUES (6060,'�˳�','��Ա','2016-12-18',17800);
insert into EMP(EMPNO,ENAME,JOB,HIREDATE,SAL) VALUES (6061,'��ѩ��','IT����ʦ','2016-12-19',270);
insert into EMP(EMPNO,ENAME,JOB,HIREDATE,SAL) VALUES (6062,'������','����','2016-12-22',470);
insert into EMP(EMPNO,ENAME,JOB,HIREDATE,SAL) VALUES (6063,'���ǳ�','��ʦ','2016-12-28',450);
insert into EMP(EMPNO,ENAME,JOB,HIREDATE,SAL) VALUES (6064,'���ӵ�','IT����ʦ','2016-12-23',700);
insert into EMP(EMPNO,ENAME,JOB,HIREDATE,SAL) VALUES (6065,'����','IT����ʦ','2016-12-3',800);
insert into EMP(EMPNO,ENAME,JOB,HIREDATE,SAL) VALUES (6066,'JONN','Ӣ��','2016-12-11',850);


USE 	MLDN

DROP TABLE IF EXISTS USER;

CREATE TABLE USER(
   USERID       VARCHAR(30)   PRIMARY KEY,
   NAME         VARCHAR(30)   NOT NULL,
   PASSWORD     VARCHAR(32)   NOT NULL
)
insert into user(userid,name,password) values ("admin","admin","admin");
