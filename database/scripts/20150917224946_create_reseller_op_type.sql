-- // creat reseller op type
-- Migration SQL that makes the change goes here.

-- // creat reseller optype
-- Migration SQL that makes the change goes here.
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[ResellerOptype](
 [nId] [int] NOT NULL,
 [sName] [nvarchar](50) NOT NULL
CONSTRAINT [PK_ResellerOptype] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];



-- //@UNDO
-- SQL to undo the change goes here.

-- //@UNDO
-- SQL to undo the change goes here.


