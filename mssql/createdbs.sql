USE [master]
GO

CREATE DATABASE [sample] 
ON
    ( NAME = N'sample', FILENAME = N'/var/opt/mssql/data/sample.mdf' )
LOG ON
    ( NAME = N'sample_log', FILENAME = N'/var/opt/mssql/data/sample_log.ldf' )
GO

USE [sample]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Message](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

INSERT INTO [dbo].[Message] ([Text]) VALUES ('Message from the database.')
GO