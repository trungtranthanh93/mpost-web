-- // create country
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Country](
	[nId] [int] NOT NULL,
	[sName] [nvarchar](25) NOT NULL,
	[sCode] [nvarchar](5) NOT NULL,
	[nDigitMin] [int] NOT NULL,
	[nDigitMax] [int] NOT NULL,
	[sPrefix] [nvarchar](50) NOT NULL,
	[bNational] [bit] NOT NULL,
	[sCountryPrefix] [nvarchar](5) NOT NULL,
	[nPosition] [int] NOT NULL,
	[sLogo] [nvarchar](25) NULL,
	[bActive] [bit] NOT NULL,
	[bModify] [bit] NOT NULL
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


