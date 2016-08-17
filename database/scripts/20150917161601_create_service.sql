-- // create service
-- Migration SQL that makes the change goes here.

/****** Object:  Table [dbo].[Service]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Service](
	[nId] [int] NOT NULL,
	[sName] [nvarchar](20) NOT NULL,
	[sActiveLogo] [nvarchar](15) NULL,
	[sNonActiveLogo] [nvarchar](15) NULL,
	[nPosition] [int] NULL,
	[bPass2pay] [bit] NULL,
	[nPass2PayPosition] [int] NULL,
	[nReprint] [int] NULL,
	[bActive] [bit] NULL,
	[bModify] [bit] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


