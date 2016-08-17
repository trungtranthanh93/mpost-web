-- // create language
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Language](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](5) NULL
) ON [PRIMARY];


-- //@UNDO
-- SQL to undo the change goes here.


