-- // create terminal product
-- Migration SQL that makes the change goes here.

/****** Object:  Table [dbo].[TerminalProduct]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[TerminalProduct](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductId] [int] NULL,
	[nTerminalId] [int] NULL,
	[bActive] [bit] NULL,
	[nPosition] [int] NULL
CONSTRAINT [PK_TerminalProduct] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


