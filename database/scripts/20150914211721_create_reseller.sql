-- // create reseller
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Reseller](
	[nId] [int] NOT NULL,
	[sName] [nvarchar](30) NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[nMentorId] [int] NOT NULL,
	[nResellerComListId] [int] NOT NULL,
	[nBalance] [decimal](12, 2) NULL,
	[nSaleChannelId] [int] NULL,
	[nPrepaidBalance] [decimal](12, 2) NULL,
	[sMapping] [nvarchar](20) NULL,
	[bOnNet] [bit] NULL,
	[nLevel] [int] NULL,
	[nMentorResellerId] [int] NULL,
	[bActive] [bit] NOT NULL
CONSTRAINT [PK_Reseller] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];


-- //@UNDO
-- SQL to undo the change goes here.


