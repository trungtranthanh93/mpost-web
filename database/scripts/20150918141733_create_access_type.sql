-- // create access type
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[AccessType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL,
	[sAccessTable] [nvarchar](20) NULL
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


