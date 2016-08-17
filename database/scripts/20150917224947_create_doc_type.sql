-- // create doc type
-- Migration SQL that makes the change goes here.

CREATE TABLE [dbo].[DocType](
	[nId] [int] NOT NULL,
	[sName] [nvarchar](20) NULL
CONSTRAINT [PK_DocType] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


