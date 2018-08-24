DROP DATABASE onlineExam;
CREATE DATABASE onlineExam CHARACTER SET utf8 COLLATE utf8_general_ci;

USE onlineExam;

DROP TABLE IF EXISTS student;

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
CREATE TABLE student
(
   id INT NOT NULL AUTO_INCREMENT,
   usercode VARCHAR(32) DEFAULT NULL,
   username VARCHAR(32) DEFAULT NULL,
   PASSWORD VARCHAR(32) DEFAULT NULL,
   email VARCHAR(64) DEFAULT NULL,
   idCard  CHAR(18) DEFAULT NULL,
   phone  CHAR(11) DEFAULT NULL,
   sex CHAR(2) DEFAULT NULL,
   address VARCHAR(128) DEFAULT NULL,
   usertype INT DEFAULT NULL,
   score INT,
  PRIMARY KEY (id)
);

/*==============================================================*/
/* Index: studentCode                                           */
/*==============================================================*/
CREATE UNIQUE INDEX usercode ON student
(
   usercode
);
CREATE UNIQUE INDEX  idCard ON student(
   idCard
)

/*
DROP TABLE IF EXISTS teacher;


CREATE TABLE teacher
(
   id                   INT NOT NULL AUTO_INCREMENT,
   teacherName          VARCHAR(32),
   usercode             VARCHAR(32),
   PASSWORD             VARCHAR(32),
   usertype             CHAR(1),
   PRIMARY KEY (id)
);


CREATE UNIQUE INDEX usercode ON teacher
(
   usercode
);
*/

INSERT INTO student(username,usercode,PASSWORD,usertype,email,idCard,sex) 
VALUES ('cqyc','admin','123456',0,'825467364@qq.com','500240199908190010','男');



DROP TABLE IF EXISTS SUBJECT;

/*==============================================================*/
/* Table: subject                                               */
/*==============================================================*/
CREATE TABLE SUBJECT
(
   id                   INT NOT NULL AUTO_INCREMENT,
   title                VARCHAR(255),
   optionA              VARCHAR(255),
   optionB              VARCHAR(255),
   optionC              VARCHAR(255),
   gou			varchar(10),
   cha 			varchar(10),
   answer               CHAR(1),
   eaxmtype		int,
   eaxmimg		varchar(255),
   explains             VARCHAR(300),
   PRIMARY KEY (id)
);



