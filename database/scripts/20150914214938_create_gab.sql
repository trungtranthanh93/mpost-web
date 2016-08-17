-- // create gab
-- Migration SQL that makes the change goes here.

/****** Object:  Table [dbo].[GAB]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[GAB](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTerminalId] [int] NULL,
	[sName] [nvarchar](50) NULL,
	[sGABId] [nvarchar](20) NULL
CONSTRAINT [PK_GAB] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];


-- //@UNDO
-- SQL to undo the change goes here.


