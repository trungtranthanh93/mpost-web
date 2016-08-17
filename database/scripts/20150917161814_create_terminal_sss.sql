-- // create terminal sss
-- Migration SQL that makes the change goes here.

/****** Object:  Table [dbo].[TerminalSSS]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[TerminalSSS](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTerminalId] [int] NOT NULL,
	[bLimitation] [bit] NOT NULL,
	[nBalance] [decimal](10, 0) NULL,
	[sName] [nvarchar](100) NULL,
	[sCode] [nvarchar](100) NULL,
	[bActive] [bit] NULL
CONSTRAINT [PK_TerminalSSS] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];


-- //@UNDO
-- SQL to undo the change goes here.


