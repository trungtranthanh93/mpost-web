-- // create product
-- Migration SQL that makes the change goes here.

/****** Object:  Table [dbo].[Product]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Product](
	[nId] [int] NOT NULL,
	[sName] [nvarchar](20) NOT NULL,
	[sCode] [nvarchar](10) NULL,
	[nServiceId] [int] NOT NULL,
	[bActive] [bit] NOT NULL,
	[sLogo] [nvarchar](50) NULL,
	[sPrintLogo] [nvarchar](50) NULL,
	[sPrintText] [nvarchar](1000) NULL,
	[nPosition] [nvarchar](50) NULL,
	[nCountryId] [int] NULL,
	[bModify] [bit] NULL,
	[sCustomerCare] [nvarchar](30) NULL,
	[bPass2Pay] [bit] NULL,
	[nPass2PayPosition] [int] NULL,
	[sInfoText] [nvarchar](150) NULL,
	[sPass2PayBGCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];


-- //@UNDO
-- SQL to undo the change goes here.


