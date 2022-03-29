USE [master]
GO
IF EXISTS(select * from sys.databases where name='絤策A107230001')
   DROP DATABASE [絤策A107230001]

CREATE DATABASE [絤策A107230001]
GO
USE [絤策A107230001]
GO

CREATE TABLE [dbo].[student] (
   [sid]  CHAR(4)        NOT NULL ,
   [sname]  VARCHAR(10)    NOT NULL ,
   [sage]  DATE ,
   [ssex]  VARCHAR(10) ,
   PRIMARY KEY ([sid]) 
) 
GO

CREATE TABLE [dbo].[teacher] (
   [tid]   CHAR(4)       NOT NULL ,
   [tname]   VARCHAR(10)   NOT NULL,
   PRIMARY KEY ([tid])
)
GO

CREATE TABLE [dbo].[course] (
   [cid]   VARCHAR(4)        NOT NULL ,
   [cname]   VARCHAR(10)    NOT NULL ,
   [tid]       CHAR(4)      NOT NULL,
   PRIMARY KEY ([cid]),
   FOREIGN KEY ([tid]) REFERENCES teacher ([tid]) ,
)
GO

CREATE TABLE [dbo].[SC] (
   [sid]   CHAR(4)     NOT NULL ,
   [cid]      VARCHAR(4)     NOT NULL ,
   [score]  INT   ,
   PRIMARY KEY ([sid], [cid]) , 
   FOREIGN KEY ([sid]) REFERENCES student ([sid]) ,
   FOREIGN KEY ([cid]) REFERENCES course ([cid]) ,
)
GO




INSERT INTO [dbo].[student] VALUES('01','化筽','1990-01-01','╧')
GO
INSERT INTO [dbo].[student] VALUES('02','窥筿','1990-12-21','╧')
GO
INSERT INTO [dbo].[student] VALUES('03','甝','1990-05-20','╧')
GO
INSERT INTO [dbo].[student] VALUES('04','冻','1990-08-06','╧')
GO
INSERT INTO [dbo].[student] VALUES('05','㏄宾','1991-12-01','')
GO
INSERT INTO [dbo].[student] VALUES('06','孽','1992-03-01','')
GO
INSERT INTO [dbo].[student] VALUES('07','綠λ ','1989-07-01','')
GO
INSERT INTO [dbo].[student] VALUES('10','','2017-12-25','')
GO
INSERT INTO [dbo].[student] VALUES('11','','2017-12-30','')
GO
INSERT INTO [dbo].[student] VALUES('12','化せ','2017-01-01','')
GO
INSERT INTO [dbo].[student] VALUES('13','甝','2018-01-01','')GOINSERT INTO [dbo].[teacher] VALUES('01' , '眎')
GO
INSERT INTO [dbo].[teacher] VALUES('02' , '')
GO
INSERT INTO [dbo].[teacher] VALUES('03' , 'き')
GO

INSERT INTO [dbo].[course] VALUES('01','粂ゅ','02')
GO
INSERT INTO [dbo].[course] VALUES('02','计厩','01')
GO
INSERT INTO [dbo].[course] VALUES('03','璣粂','03')
GO


INSERT INTO [dbo].[SC] VALUES('01', '01', 80)
GO
INSERT INTO [dbo].[SC] VALUES('01', '02', 90)
GO
INSERT INTO [dbo].[SC] VALUES('01', '03', 99)
GO
INSERT INTO [dbo].[SC] VALUES('02', '01', 70)
GO
INSERT INTO [dbo].[SC] VALUES('02', '02', 60)
GO
INSERT INTO [dbo].[SC] VALUES('02', '03', 80)
GO
INSERT INTO [dbo].[SC] VALUES('03', '01', 80)
GO
INSERT INTO [dbo].[SC] VALUES('03', '02', 80)
GO
INSERT INTO [dbo].[SC] VALUES('03', '03', 80)
GO
INSERT INTO [dbo].[SC] VALUES('04', '01', 50)
GO
INSERT INTO [dbo].[SC] VALUES('04', '02', 30)
GO
INSERT INTO [dbo].[SC] VALUES('04', '03', 20)
GO
INSERT INTO [dbo].[SC] VALUES('05', '01', 76)
GO
INSERT INTO [dbo].[SC] VALUES('05', '02', 87)
GO
INSERT INTO [dbo].[SC] VALUES('06', '01', 31)
GO
INSERT INTO [dbo].[SC] VALUES('06', '03', 34)
GO
INSERT INTO [dbo].[SC] VALUES('07', '02', 89)
GO
INSERT INTO [dbo].[SC] VALUES('07', '03', 98)
GO
