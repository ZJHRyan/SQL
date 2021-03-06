USE [master]
GO
IF EXISTS(select * from sys.databases where name='教務系統')
   DROP DATABASE [教務系統]

CREATE DATABASE [教務系統]
GO
USE [教務系統]
GO

CREATE TABLE [dbo].[學生] (
   [學號]  CHAR(4)        NOT NULL ,
   [姓名]  VARCHAR(12)    NOT NULL ,
   [電話]  VARCHAR(15) ,
   [生日]  DATE ,
   PRIMARY KEY ([學號]) 
) 
GO

CREATE TABLE [dbo].[課程] (
   [課程編號]   CHAR(5)       NOT NULL ,
   [課程名稱]   VARCHAR(30)   NOT NULL ,
   [學分數]     INT           DEFAULT 3,
   PRIMARY KEY ([課程編號])
)
GO

CREATE TABLE [dbo].[教授] (
   [教授編號]   CHAR(4)        NOT NULL ,
   [教授姓名]   VARCHAR(12)    NOT NULL ,
   [職稱]       VARCHAR(10) ,
   [所屬科系]       VARCHAR(5) ,
   PRIMARY KEY ([教授編號])
)
GO

CREATE TABLE [dbo].[開課] (
   [教授編號]  CHAR(4)     NOT NULL ,
   [學號]      CHAR(4)     NOT NULL ,
   [課程編號]  CHAR(5)     NOT NULL ,
   [上課時間]  TIME ,
   [教室編號]  VARCHAR(8) ,
   [成績]      FLOAT ,
   PRIMARY KEY ([教授編號], [學號], [課程編號]) , 
   FOREIGN KEY ([教授編號]) REFERENCES 教授 ([教授編號]) ,
   FOREIGN KEY ([學號]) REFERENCES 學生 ([學號]) ,
   FOREIGN KEY ([課程編號]) REFERENCES 課程 ([課程編號])
)
GO

INSERT INTO [dbo].[課程] VALUES ('CS101','計算機概論',4)
GO
INSERT INTO [dbo].[課程] VALUES ('CS121','離散數學',4)
GO
INSERT INTO [dbo].[課程] VALUES ('CS203','程式語言',3)
GO
INSERT INTO [dbo].[課程] VALUES ('CS213','物件導向程式設計',2)
GO
INSERT INTO [dbo].[課程] VALUES ('CS222','資料庫管理系統',3)
GO

INSERT INTO [dbo].[教授] VALUES ('E001','陳慶新','教授','CS')
GO
INSERT INTO [dbo].[教授] VALUES ('E002','楊金欉','副教授','CIS')
GO
INSERT INTO [dbo].[教授] VALUES ('E003','李鴻章','講師','MATH')
GO
INSERT INTO [dbo].[教授] VALUES ('E004','陳允傑','講師','CS')
GO

INSERT INTO [dbo].[學生] VALUES ('S001','陳會安','02-22222222','1999/09/03')
GO
INSERT INTO [dbo].[學生] VALUES ('S002','江小魚','03-33333333','2000/02/02')
GO
INSERT INTO [dbo].[學生] VALUES ('S003','張三丰','04-44444444','1994/03/03')
GO
INSERT INTO [dbo].[學生] VALUES ('S004','李四方','05-55555555','1994/04/04')
GO
INSERT INTO [dbo].[學生] VALUES ('S005','陳允傑','02-22222222','1998/09/03')
GO

INSERT INTO [dbo].[開課] VALUES ('E001','S001','CS101','12:00:00','180-M',85)
GO
INSERT INTO [dbo].[開課] VALUES ('E001','S003','CS213','09:00:00','622-G',66)
GO
INSERT INTO [dbo].[開課] VALUES ('E002','S001','CS222','13:00:00','100-M',78)
GO
INSERT INTO [dbo].[開課] VALUES ('E002','S002','CS222','13:00:00','100-M',58)
GO
INSERT INTO [dbo].[開課] VALUES ('E002','S003','CS121','08:00:00','221-S',75)
GO
INSERT INTO [dbo].[開課] VALUES ('E002','S004','CS222','13:00:00','100-M',92)
GO
INSERT INTO [dbo].[開課] VALUES ('E003','S001','CS203','10:00:00','221-S',68)
GO
INSERT INTO [dbo].[開課] VALUES ('E003','S001','CS213','12:00:00','500-K',78)
GO
INSERT INTO [dbo].[開課] VALUES ('E003','S002','CS203','14:00:00','327-S',85)
GO