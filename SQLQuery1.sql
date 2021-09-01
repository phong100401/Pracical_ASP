IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'Practical_ASP')
BEGIN
CREATE DATABASE Practical_ASP


END
GO
    USE Practical_ASP

GO

IF NOT EXISTS (SELECT * FROM sys.tables t join sys.schemas s ON (t.schema_id = s.schema_id) WHERE s.name='dbo' and t.name='Employee')
CREATE TABLE [dbo].[Employee]
(
 [Id]          int  IDENTITY (1, 1) NOT NULL ,
 [StudentID]   nvarchar(max) NOT NULL ,
 [FirstName]   nvarchar(max) NOT NULL ,
 [LastName]    nvarchar(max) NOT NULL ,
 [PhoneNumber] nvarchar(max) NOT NULL ,
 [Email]       nvarchar(max) NOT NULL ,


 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO
Drop Table [dbo].[Employee]
Go
INSERT INTO dbo.Employee([StudentID],[FirstName], [LastName], [PhoneNumber], [Email]) values
	('T2001TH', 'Pha', 'Tran Van', '0123456789', 'tranvan@gmail.com'),
	('T2003TA', 'Be', 'Do Van', '0123456789', 'dovan@gmail.com'),
	('T2004C', 'Ce', 'Phan Van', '0123456789', 'phavan@gmail.com'),
	('T2004D', 'Dy', 'Le Van', '0123456789', 'levan@gmail.com'),
	('T2004E', 'En', 'Cao Van', '0123456789', 'caovan@gmail.com')