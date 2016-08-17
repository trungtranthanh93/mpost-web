-- // create fin product
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[FinProduct](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL,
	[nPrice] [decimal](9, 2) NULL,
	[bActive] [bit] NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[dLastModification] [datetime] NOT NULL
) ON [PRIMARY];


-- //@UNDO
-- SQL to undo the change goes here.


