-- // create terminal service
-- Migration SQL that makes the change goes here.

/****** Object:  Table [dbo].[TerminalSer]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[TerminalSer](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTerminalId] [int] NOT NULL,
	[nServiceId] [int] NOT NULL,
	[bActive] [bit] NOT NULL,
	[bModify] [bit] NULL,
	[nPrint] [int] NULL
CONSTRAINT [PK_TerminalService] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];


-- //@UNDO
-- SQL to undo the change goes here.


