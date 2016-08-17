-- // create post code
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[PostCode](
	[nid] [int] NOT NULL,
	[nCountryId] [int] NOT NULL,
	[nPostCode] [int] NOT NULL,
	[sCity] [nvarchar](50) NOT NULL
CONSTRAINT [PK_PostCode] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];


-- //@UNDO
-- SQL to undo the change goes here.


