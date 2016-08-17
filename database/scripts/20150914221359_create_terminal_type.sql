-- // create terminal type
-- Migration SQL that makes the change goes here.

/****** Object:  Table [dbo].[TerminalType]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[TerminalType](
	[nId] [int] NOT NULL,
	[sName] [nvarchar](10) NULL
CONSTRAINT [PK_TerminalType] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];


-- //@UNDO
-- SQL to undo the change goes here.


