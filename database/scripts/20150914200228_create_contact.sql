-- // create contact
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Contact](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nContactTypeId] [int] NOT NULL,
	[sFirstName] [nvarchar](15) NULL,
	[sLastName] [nvarchar](15) NULL,
	[sGsm] [nvarchar](15) NULL,
	[sMail] [nvarchar](30) NULL,
	[bActive] [bit] NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[dLastModification] [datetime] NOT NULL
CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


