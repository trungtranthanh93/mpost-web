USE [MPOST_DEMO]
GO
/****** Object:  Table [dbo].[ProductCategoryPreCancelation]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategoryPreCancelation](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductCategoryId] [int] NULL,
	[bActive] [bit] NULL,
	[sScript] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductId] [int] NOT NULL,
	[bActive] [bit] NOT NULL,
	[bCustomized] [bit] NOT NULL,
	[bRegular] [bit] NULL,
	[nPeriodId] [int] NULL,
	[nValue] [decimal](9, 2) NULL,
	[nValueExVat] [decimal](9, 2) NULL,
	[nVat] [decimal](5, 2) NULL,
	[sName] [nvarchar](30) NOT NULL,
	[sLogo] [nvarchar](20) NULL,
	[nCodeBar] [nvarchar](20) NULL,
	[nPosition] [nchar](2) NULL,
	[bModify] [bit] NULL,
	[nStockAlert] [int] NULL,
	[bAlert] [bit] NULL,
	[bStockManagment] [bit] NULL,
	[bPass2Pay] [bit] NULL,
	[nPass2PayPosition] [int] NULL,
	[sReprintProcess] [nvarchar](50) NULL,
	[sJob] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[nId] [int] IDENTITY(1,1) NOT NULL,
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
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrintTemplating]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrintTemplating](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductCategoryId] [int] NOT NULL,
	[sTemplateFile] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCode]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCode](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nCountryId] [int] NOT NULL,
	[nPostCode] [int] NOT NULL,
	[sCity] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pont]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pont](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTransactionsId] [int] NULL,
	[nErrorCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PMCountry]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PMCountry](
	[nId] [int] NOT NULL,
	[sName] [nvarchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Period]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Period](
	[nId] [int] NOT NULL,
	[dStart] [datetime] NULL,
	[dEnd] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentModeProductCategory]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentModeProductCategory](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nPaymentModeId] [int] NULL,
	[nProductCategoryId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMode]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMode](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](20) NULL,
	[bActive] [bit] NULL,
	[bCash] [bit] NULL,
	[bPass2Pay] [bit] NULL,
	[sLogo] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentDetailsTest]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentDetailsTest](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTransactionsId] [int] NULL,
	[sCode] [nvarchar](50) NULL,
	[sDom] [nvarchar](50) NULL,
	[sNum] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentDetails]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentDetails](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTransactionsId] [int] NULL,
	[sCode] [nvarchar](50) NULL,
	[sDom] [nvarchar](50) NULL,
	[sNum] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pass2PayVersionType]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pass2PayVersionType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pass2PayVersionToDeliver]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pass2PayVersionToDeliver](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nPass2PayVersionId] [int] NULL,
	[nPass2PayTablesId] [nvarchar](20) NULL,
	[sField] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pass2PayVersions]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pass2PayVersions](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[nPass2PayVersionTypeId] [int] NULL,
	[bMandatory] [bit] NULL,
	[nVersionNumber] [int] NULL,
	[sPackageLocation] [nvarchar](50) NULL,
	[sSize] [nvarchar](50) NULL,
	[sMD5] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pass2PayTables]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pass2PayTables](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pass2PaySession]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pass2PaySession](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[sSession] [nvarchar](10) NULL,
	[nPass2PayAccessId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pass2PayPass]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pass2PayPass](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sPass2PayPass] [nvarchar](50) NULL,
	[nPass2PayAccessId] [int] NULL,
	[bActive] [bit] NULL,
	[bSuspended] [bit] NULL,
	[bLinked] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pass2PayMonitoring]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pass2PayMonitoring](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sMobileId] [nvarchar](50) NULL,
	[dInsertion] [datetime] NULL,
	[nPass2PayJobId] [int] NULL,
	[sIp] [nvarchar](20) NULL,
	[sFileLog] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pass2PayJob]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pass2PayJob](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sJobName] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pass2PayDBVersion]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pass2PayDBVersion](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nVersionNumber] [int] NULL,
	[sComment] [nvarchar](50) NULL,
	[dInsertion] [datetime] NULL,
	[bCompleteTable] [bit] NULL,
	[bAllFileds] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pass2PayDBUpdate]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pass2PayDBUpdate](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[sFileName] [nvarchar](50) NULL,
	[nPass2PayVersionId] [int] NULL,
	[nPass2PayAccessId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pass2PayDBMapping]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pass2PayDBMapping](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nPass2PayTableId] [int] NULL,
	[sFiledOriginName] [nvarchar](20) NULL,
	[sFiledDestinationName] [nvarchar](20) NULL,
	[bSame] [bit] NULL,
	[bSub] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pass2PayCountryCom]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pass2PayCountryCom](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nCountryId] [int] NULL,
	[sUrl] [nvarchar](150) NULL,
	[sResourceUrl] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pass2PayAnswerCode]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pass2PayAnswerCode](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nAnswerCode] [int] NULL,
	[sFr] [nvarchar](100) NULL,
	[sEn] [nvarchar](50) NULL,
	[sEs] [nvarchar](50) NULL,
	[sNl] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pass2PayAccess]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pass2PayAccess](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sLogin] [nvarchar](50) NULL,
	[sPwd] [nvarchar](50) NULL,
	[nCountryId] [int] NULL,
	[bActive] [bit] NULL,
	[bSuspended] [bit] NULL,
	[sMail] [nvarchar](50) NULL,
	[dInsertion] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerShopMapping]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerShopMapping](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nPartnerId] [int] NULL,
	[nPartnerMapping] [int] NULL,
	[nTerminalId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpType]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpType](
	[nId] [int] NOT NULL,
	[sName] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationSource]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationSource](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OnNetTransactionType]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnNetTransactionType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OnNetTransaction]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnNetTransaction](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dTime] [datetime] NULL,
	[nAccessId] [int] NULL,
	[nOnNetTransactionTypeId] [int] NULL,
	[nAmount] [decimal](10, 2) NULL,
	[nInitialBalance] [decimal](10, 2) NULL,
	[nFinalBalance] [decimal](10, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OnNetProductGroupProduct]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnNetProductGroupProduct](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductId] [int] NULL,
	[nOnNetProductGroupId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OnNetProductGroup]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnNetProductGroup](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](20) NULL,
	[nResellerId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OnNetCompany]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnNetCompany](
	[nId] [int] NOT NULL,
	[nCompanyId] [int] NULL,
	[nBalance] [decimal](10, 2) NULL,
	[nOnNetProductGroupId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OMSSupplier]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMSSupplier](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL,
	[sPic] [nvarchar](20) NULL,
	[nAccessId] [int] NOT NULL,
	[dInsertion] [datetime] NULL,
	[bUpdate] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OMSProductCategory]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMSProductCategory](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sEAN] [nvarchar](50) NOT NULL,
	[sName] [nvarchar](50) NOT NULL,
	[nPack] [int] NOT NULL,
	[nOMSProductId] [int] NOT NULL,
	[nOMSSupplierId] [int] NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[bUpdate] [bit] NOT NULL,
	[sSourceFile] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OMSProduct]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMSProduct](
	[Nid] [int] IDENTITY(1,1) NOT NULL,
	[sEAN] [nvarchar](50) NOT NULL,
	[sName] [nvarchar](50) NOT NULL,
	[dInsertion] [datetime] NULL,
	[bUpdate] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MultiSearchMapping]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MultiSearchMapping](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nDynamicScreensId] [int] NOT NULL,
	[sFieldName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MpostTitles]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MpostTitles](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NULL,
	[sCode] [nvarchar](50) NULL,
	[sUrl] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MpostServices]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MpostServices](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](20) NOT NULL,
	[nPrice] [decimal](4, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MpostReloadType]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MpostReloadType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MpostReload]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MpostReload](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nFinProductId] [int] NULL,
	[sPinCode] [nvarchar](12) NULL,
	[sSerialNumber] [nvarchar](6) NULL,
	[nValue] [int] NULL,
	[dInsertion] [datetime] NULL,
	[bActive] [bit] NULL,
	[dUsed] [datetime] NULL,
	[bused] [bit] NULL,
	[nMpostReloadTypeId] [int] NULL,
	[bDelivered] [bit] NOT NULL,
	[dDelivered] [datetime] NULL,
UNIQUE NONCLUSTERED
(
	[sPinCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MpostPassportReportType]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MpostPassportReportType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MpostPassportReport]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MpostPassportReport](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dActivity] [datetime] NULL,
	[nResslerId] [int] NULL,
	[nMpostPassportReportTypeId] [int] NULL,
	[sFileName] [nvarchar](20) NULL,
 CONSTRAINT [PK_MpostPassportReport] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MpostPassportFunction]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MpostPassportFunction](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sFunction] [nvarchar](50) NULL,
	[sUrl] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MpostPassportAccessTypeFunction]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MpostPassportAccessTypeFunction](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nAccessTypeId] [int] NULL,
	[nFunctionId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MpostPassportAccessType]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MpostPassportAccessType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NULL,
 CONSTRAINT [PK_MpostPassportAccessType] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MpostPassportAccess]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MpostPassportAccess](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sLogin] [nvarchar](100) NOT NULL,
	[sPwd] [nvarchar](100) NOT NULL,
	[nAccessTypeId] [int] NOT NULL,
	[nResellerId] [int] NULL,
	[bActive] [bit] NULL,
	[sLastName] [nvarchar](20) NULL,
	[sFirstName] [nvarchar](20) NULL,
 CONSTRAINT [PK_MpostPassportAccess] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MpostFunctions]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MpostFunctions](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL,
	[sUrl] [varchar](150) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MpostExtraService]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MpostExtraService](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductCategoryId] [int] NULL,
	[nTerminalId] [int] NULL,
	[nLevel] [int] NULL,
	[nResellerId] [int] NULL,
	[nBillCycle] [int] NULL,
	[nBilled] [int] NULL,
	[nValue] [decimal](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonetyPayOnPeriod]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonetyPayOnPeriod](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[bMonday] [bit] NULL,
	[bTuesday] [bit] NULL,
	[bWednesday] [bit] NULL,
	[bThursday] [bit] NULL,
	[bFriday] [bit] NULL,
	[bSaturday] [bit] NULL,
	[bSunday] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonetyFinPayment]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonetyFinPayment](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dRequest] [datetime] NULL,
	[dReceipt] [datetime] NULL,
	[sRequestFileName] [nvarchar](30) NULL,
	[sReceiptFileName] [nvarchar](30) NULL,
	[sAcceptanceCode] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonetyFinOp]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonetyFinOp](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nMonetyCompanyId] [int] NULL,
	[dInsertion] [datetime] NULL,
	[dOperation] [datetime] NULL,
	[nTotalCashIn] [decimal](10, 2) NULL,
	[nTotalCashOut] [decimal](10, 2) NULL,
	[nActualBalance] [decimal](10, 2) NULL,
	[nLossOnInitial] [decimal](10, 2) NULL,
	[nBalance] [decimal](10, 2) NULL,
	[nMonetyFinPaymentId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonetyContact]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonetyContact](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[nAccessId] [int] NULL,
	[sFirstName] [nvarchar](20) NULL,
	[sLastName] [nvarchar](20) NULL,
	[sGsm] [nvarchar](15) NULL,
	[sMail] [nvarchar](20) NULL,
	[nMonetyCompanyId] [int] NULL,
	[bActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonetyCompany]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonetyCompany](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nCorrespondence] [int] NULL,
	[sName] [nvarchar](50) NULL,
	[nInitialBalance] [decimal](10, 2) NULL,
	[nMonetyBankId] [int] NULL,
	[bPayOnPeriod] [bit] NULL,
	[bPayOnAmount] [bit] NULL,
	[nMonetyPayOnPeriodId] [int] NULL,
	[nPayOnAmount] [decimal](10, 2) NULL,
	[sBankAccount] [nvarchar](30) NULL,
	[sMail] [nvarchar](50) NULL,
	[bActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonetyBank]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonetyBank](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](20) NULL,
	[sProcess] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MobMessages]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MobMessages](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sText] [nvarchar](150) NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[dLastModification] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MobileMoney]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MobileMoney](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductCategoryId] [int] NULL,
	[nServiceTypeId] [int] NULL,
	[nPosition] [int] NULL,
	[bActive] [bit] NULL,
	[sPlugin] [nvarchar](50) NULL,
	[sPluginConfig] [nvarchar](200) NULL,
	[sSchema] [nvarchar](50) NULL,
	[bmodify] [bit] NULL,
	[bPass2Pay] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MobAccess]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MobAccess](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sLogin] [nvarchar](50) NOT NULL,
	[sPwd] [nvarchar](50) NOT NULL,
	[sMacAddress] [nvarchar](50) NOT NULL,
	[dInsertion] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mepay2]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mepay2](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductId] [int] NULL,
	[nServiceTypeId] [int] NULL,
	[nTask1] [int] NULL,
	[nTask2] [int] NULL,
	[nTask3] [int] NULL,
	[bShowProductCategory] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mepay]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mepay](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductCategoryId] [int] NULL,
	[sMode] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MBM_COM]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBM_COM](
	[nPCID] [int] NULL,
	[nComList] [int] NULL,
	[nComReseller] [decimal](9, 4) NULL,
	[nComCompany] [decimal](9, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JT_Partner]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JT_Partner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[nProductCategoryId] [int] NULL,
	[host] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[userName] [varchar](255) NULL,
	[importSeparateFields] [varchar](1000) NULL,
	[importTemplateFile] [varchar](255) NULL,
	[importSeparateSizes] [varchar](1000) NULL,
	[unipayDatabase] [varchar](255) NULL,
	[unipayTable] [varchar](255) NULL,
	[importTemplateFields] [varchar](1000) NULL,
	[importTableFields] [varchar](1000) NULL,
	[importFieldFormat] [varchar](1000) NULL,
	[exportTableFields] [varchar](1000) NULL,
	[exportFieldFormat] [varchar](1000) NULL,
	[importException] [text] NULL,
	[actionBeforeImport] [varchar](1000) NULL,
	[createEmptyFile] [tinyint] NOT NULL,
	[exportFileNameTemplate] [varchar](255) NULL,
	[importCompressMethod] [varchar](255) NULL,
	[exportCompress] [tinyint] NOT NULL,
	[exportCompressMethod] [varchar](255) NULL,
	[importDateMo] [tinyint] NOT NULL,
	[importDateTu] [tinyint] NOT NULL,
	[importDateWe] [tinyint] NOT NULL,
	[importDateTh] [tinyint] NOT NULL,
	[importDateFr] [tinyint] NOT NULL,
	[importDateSa] [tinyint] NOT NULL,
	[importDateSu] [tinyint] NOT NULL,
	[exportDateMo] [tinyint] NOT NULL,
	[exportDateTu] [tinyint] NOT NULL,
	[exportDateWe] [tinyint] NOT NULL,
	[exportDateTh] [tinyint] NOT NULL,
	[exportDateFr] [tinyint] NOT NULL,
	[exportDateSa] [tinyint] NOT NULL,
	[exportDateSu] [tinyint] NOT NULL,
	[exportTime] [varchar](255) NULL,
	[exportUrl] [varchar](255) NULL,
	[importTime] [varchar](255) NULL,
	[importUrl] [varchar](255) NULL,
	[importCompress] [tinyint] NOT NULL,
	[resumeFileTemplate] [varchar](255) NULL,
	[resumeFolder] [varchar](255) NULL,
	[resumeFileNameTemplate] [varchar](255) NULL,
	[createResumeFile] [tinyint] NOT NULL,
	[exportHeaderTemplate] [varchar](255) NULL,
	[exportFooterTemplate] [varchar](255) NULL,
	[ignoreImportHeader] [tinyint] NOT NULL,
	[ignoreImportFooter] [tinyint] NOT NULL,
	[separateByCharacter] [tinyint] NOT NULL,
	[separateByPosition] [tinyint] NOT NULL,
	[fieldSeparator] [varchar](255) NULL,
	[rowSeparator] [varchar](255) NULL,
	[exportFolder] [varchar](255) NULL,
	[importFolder] [varchar](255) NULL,
	[logFolder] [varchar](255) NULL,
	[proceedFolder] [varchar](255) NULL,
	[exportLogin] [varchar](255) NULL,
	[exportPwd] [varchar](255) NULL,
	[importLogin] [varchar](255) NULL,
	[importPwd] [varchar](255) NULL,
	[actionAfterExport] [varchar](1000) NULL,
	[exportCondition] [varchar](1000) NULL,
	[startedScheduler] [tinyint] NOT NULL,
	[ccOnMail] [tinyint] NULL,
	[message] [varchar](255) NULL,
	[goodFileOperator] [varchar](255) NULL,
	[goodFileNumberOfLines] [int] NULL,
	[importRetry] [tinyint] NULL,
	[exportRetry] [tinyint] NULL,
	[importRetryDuration] [int] NULL,
	[exportRetryDuration] [int] NULL,
	[importTrimString] [tinyint] NULL,
	[configFolder] [varchar](255) NULL,
	[exportUseSeparateCharacter] [tinyint] NULL,
	[exportLength] [varchar](1000) NULL,
	[importFullDuplicateQuery] [varchar](1000) NULL,
	[importOptimizeDuplicateQuery] [varchar](1000) NULL,
	[exportSeparateCharacter] [varchar](255) NULL,
	[importMonthly] [tinyint] NULL,
	[exportMonthly] [tinyint] NULL,
	[importDaily] [tinyint] NULL,
	[importMonthlyDuration] [int] NULL,
	[exportDaily] [tinyint] NULL,
	[exportMonthlyDuration] [int] NULL,
	[importExecuteBeforeScript] [tinyint] NULL,
	[importBeforeScript] [varchar](255) NULL,
	[importExecuteExceptionScript] [tinyint] NULL,
	[importExceptionScript] [varchar](255) NULL,
	[exportExecuteConditionScript] [tinyint] NULL,
	[exportConditionScript] [varchar](255) NULL,
	[exportExecuteAfterScript] [tinyint] NULL,
	[exportAfterScript] [varchar](255) NULL,
	[importMonthlyDay] [int] NULL,
	[importMonthlyTime] [varchar](255) NULL,
	[exportMonthlyTime] [varchar](255) NULL,
	[exportMonthlyDay] [int] NULL,
	[importMonthlyHour] [varchar](255) NULL,
	[exportMonthlyHour] [varchar](255) NULL,
	[exportLengthFormat] [varchar](1000) NULL,
	[exportCustomFields] [varchar](500) NULL,
	[startedSchedulerServer] [varchar](255) NULL,
	[importFormatType] [varchar](255) NULL,
	[exportFormatType] [varchar](255) NULL,
	[exportXmlWrapElement] [varchar](255) NULL,
	[importXmlWrapElement] [varchar](255) NULL,
	[exportXmlFormatFile] [varchar](255) NULL,
	[importExternalTable] [varchar](255) NULL,
	[importExternalLinkClause] [varchar](255) NULL,
	[importSpeedDownload] [tinyint] NULL,
	[importBeforeBat] [tinyint] NULL,
	[importExceptionBat] [tinyint] NULL,
	[exportConditionBat] [tinyint] NULL,
	[exportAfterBat] [tinyint] NULL,
	[resumeRemote] [tinyint] NULL,
	[toAddresses] [nvarchar](600) NULL,
	[directImportUrl] [varchar](255) NULL,
	[directExportUrl] [varchar](255) NULL,
	[importAutoStarted] [tinyint] NULL,
	[exportAutoStarted] [tinyint] NULL,
	[runningHost] [varchar](255) NULL,
 CONSTRAINT [PK__JT_Partn__3213E83F3335971A] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvoiceType]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nServiceId] [int] NOT NULL,
	[nCompanyId] [int] NOT NULL,
	[sType] [nvarchar](12) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceIn]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceIn](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sComInNumber] [nvarchar](300) NULL,
	[sInvoiceInternal] [nvarchar](300) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sInvoiceOut] [nvarchar](300) NULL,
	[nInvoiceInId] [int] NULL,
	[dInvoicePeriode] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoogleMapping]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoogleMapping](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nShopId] [int] NULL,
	[nProspectId] [nchar](10) NULL,
	[sLat] [float] NOT NULL,
	[sLon] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GAB]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GAB](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTerminalId] [int] NULL,
	[sName] [nvarchar](50) NULL,
	[sGABId] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinSale]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinSale](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nFinProductId] [int] NOT NULL,
	[nQuantity] [int] NOT NULL,
	[nAmount] [decimal](9, 2) NOT NULL,
	[nMpostReloadId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinProduct]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinProduct](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL,
	[nPrice] [decimal](9, 2) NULL,
	[bActive] [bit] NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[dLastModification] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinPaymentType]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinPaymentType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinPayment]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinPayment](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nFinPaymentTypeId] [int] NOT NULL,
	[nAmount] [decimal](9, 2) NOT NULL,
	[nFinCashRefId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinOpType]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinOpType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinOperationType]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinOperationType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinOp]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinOp](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nFinOperationTypeId] [int] NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[dOperation] [datetime] NOT NULL,
	[nCompanyId] [int] NOT NULL,
	[nFinSaleId] [int] NULL,
	[nFinPaymentId] [int] NULL,
	[nBalance] [decimal](9, 2) NOT NULL,
	[sComment] [nvarchar](1000) NULL,
	[bActive] [bit] NULL,
	[nMentorId] [int] NULL,
	[nFinOpTypeId] [int] NULL,
	[nOperationSourceId] [int] NULL,
	[nSmsId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[findTrans]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[findTrans](
	[Data1] [int] NULL,
	[Data2] [int] NULL,
	[Data3] [varchar](20) NULL,
	[Data4] [varchar](2) NULL,
	[Data5] [int] NULL,
	[Data6] [varchar](51) NULL,
	[Data7] [int] NULL,
	[Data8] [varchar](11) NULL,
	[Data9] [varchar](61) NULL,
	[Data10] [decimal](18, 2) NULL,
	[Data11] [datetime] NULL,
	[Data12] [varchar](32) NULL,
	[Data13] [varchar](50) NULL,
	[Data14] [varchar](7) NULL,
	[Data15] [varchar](7) NULL,
	[Data16] [varchar](2) NULL,
	[Data17] [varchar](1) NULL,
	[Data18] [varchar](7) NULL,
	[Data19] [int] NULL,
	[Data20] [varchar](2) NULL,
	[Data21] [decimal](18, 2) NULL,
	[Data22] [varchar](2) NULL,
	[Data23] [varchar](2) NULL,
	[Data24] [datetime] NULL,
	[Data25] [varchar](4) NULL,
	[Data26] [varchar](200) NULL,
	[Data27] [varchar](1) NULL,
	[Data28] [int] NULL,
	[Data29] [varchar](2) NULL,
	[Data30] [varchar](10) NULL,
	[Data31] [varchar](10) NULL,
	[Data32] [varchar](20) NULL,
	[Data33] [varchar](2) NULL,
	[Data34] [varchar](24) NULL,
	[Data35] [varchar](24) NULL,
	[Data36] [int] NULL,
	[Data37] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Find Duplicate Data5 Values]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Find Duplicate Data5 Values](
	[Column 0] [int] NULL,
	[Column 1] [int] NULL,
	[Column 2] [varchar](20) NULL,
	[Column 3] [varchar](2) NULL,
	[Column 4] [int] NULL,
	[Column 5] [varchar](50) NULL,
	[Column 6] [int] NULL,
	[Column 7] [varchar](11) NULL,
	[Column 8] [varchar](50) NULL,
	[Column 9] [decimal](29, 2) NULL,
	[Column 10] [datetime] NULL,
	[Column 11] [varchar](32) NULL,
	[Column 12] [varchar](50) NULL,
	[Column 13] [varchar](7) NULL,
	[Column 14] [varchar](7) NULL,
	[Column 15] [varchar](2) NULL,
	[Column 16] [varchar](1) NULL,
	[Column 17] [varchar](7) NULL,
	[Column 18] [int] NULL,
	[Column 19] [varchar](2) NULL,
	[Column 20] [decimal](29, 2) NULL,
	[Column 21] [varchar](2) NULL,
	[Column 22] [varchar](2) NULL,
	[Column 23] [datetime] NULL,
	[Column 24] [varchar](4) NULL,
	[Column 25] [varchar](50) NULL,
	[Column 26] [varchar](1) NULL,
	[Column 27] [int] NULL,
	[Column 28] [varchar](2) NULL,
	[Column 29] [varchar](10) NULL,
	[Column 30] [varchar](10) NULL,
	[Column 31] [varchar](20) NULL,
	[Column 32] [varchar](2) NULL,
	[Column 33] [varchar](24) NULL,
	[Column 34] [varchar](24) NULL,
	[Column 35] [int] NULL,
	[Column 36] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FinCashRef]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinCashRef](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nAmount] [decimal](7, 2) NOT NULL,
	[nInsertedAmount] [decimal](7, 2) NULL,
	[nSmsId] [int] NOT NULL,
	[nAccessId] [int] NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[bActive] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExistingTransaction]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExistingTransaction](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductCategoryId] [int] NULL,
	[sProcess] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[e-topup]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[e-topup](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductId] [int] NOT NULL,
	[sExtension] [nvarchar](50) NOT NULL,
	[bOnNet] [bit] NULL,
	[nResellerId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorCodeSaleChannel]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorCodeSaleChannel](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nErrorCodeId] [int] NULL,
	[nSalechannelId] [int] NULL,
	[bModify] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorCode]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorCode](
	[nid] [int] NOT NULL,
	[nProviderId] [int] NULL,
	[nProErrorCode] [nvarchar](50) NULL,
	[sProErrorText] [nvarchar](200) NULL,
	[sErrorFr] [nvarchar](200) NULL,
	[sErrorEn] [nvarchar](200) NULL,
	[sErrorNl] [nvarchar](200) NULL,
	[sComment] [nvarchar](200) NULL,
	[bModify] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[error]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[error](
	[Column 0] [varchar](50) NULL,
	[Column 1] [varchar](50) NULL,
	[Column 2] [varchar](50) NULL,
	[Column 3] [varchar](50) NULL,
	[Column 4] [varchar](50) NULL,
	[Column 5] [varchar](50) NULL,
	[Column 6] [varchar](50) NULL,
	[Column 7] [varchar](50) NULL,
	[Column 8] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DynamicScreens]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DynamicScreens](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL,
	[nProductCategoryId] [int] NOT NULL,
	[sFunction] [nvarchar](50) NULL,
	[nRank] [int] NOT NULL,
	[sDataType] [nvarchar](50) NOT NULL,
	[bMultiSearch] [bit] NOT NULL,
	[nSaleChannelId] [int] NULL,
	[bPass2Pay] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](100) NOT NULL,
	[nDocTypeId] [int] NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[nCompanyId] [int] NULL,
	[nTerminalId] [int] NULL,
	[nInvoiceId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocType]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocType](
	[nid] [int] NOT NULL,
	[sName] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sIdType] [int] NOT NULL,
	[sComposedName] [nvarchar](30) NOT NULL,
	[sFirstLastName] [nvarchar](50) NULL,
	[sIdNumber] [nvarchar](30) NOT NULL,
	[sPhoneNumber] [nvarchar](30) NULL,
	[dBirthday] [datetime] NOT NULL,
	[sJob] [nvarchar](30) NULL,
	[sAddress1] [nvarchar](50) NULL,
	[sAddress2] [nvarchar](50) NULL,
	[sAddress3] [nvarchar](50) NULL,
	[sZipCode] [nvarchar](30) NULL,
	[sSex] [int] NULL,
	[sTitleId] [int] NULL,
	[sStatusId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CurrencyExchangeRate]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrencyExchangeRate](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[nCurrencyExchangeRate] [decimal](4, 2) NULL,
	[nCountryOriginId] [int] NULL,
	[nCountryDestinationId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sCode] [nvarchar](50) NOT NULL,
	[nCountryId] [int] NOT NULL,
	[bLocal] [bit] NOT NULL,
	[bActive] [bit] NOT NULL,
	[bModify] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryService]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryService](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nCountryId] [int] NOT NULL,
	[nServiceId] [int] NOT NULL,
	[nPosition] [int] NOT NULL,
	[bActive] [bit] NOT NULL,
	[bModify] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[nid] [int] IDENTITY(1,1) NOT NULL,
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
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactType]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyTest]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyTest](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nContractNumber] [nvarchar](50) NULL,
	[sName] [nvarchar](30) NOT NULL,
	[sVat] [nvarchar](18) NOT NULL,
	[sAddress1] [nvarchar](60) NOT NULL,
	[sAddress2] [nvarchar](10) NULL,
	[nPostCodeId] [int] NOT NULL,
	[sLg] [nvarchar](10) NULL,
	[sWebSite] [nvarchar](15) NULL,
	[sTel] [nvarchar](15) NULL,
	[sFax] [nvarchar](15) NULL,
	[sLogin] [nvarchar](20) NULL,
	[sPwd] [nvarchar](20) NULL,
	[bActive] [bit] NOT NULL,
	[nMentorId] [int] NULL,
	[nComListId] [int] NULL,
	[nBalance] [decimal](10, 2) NULL,
	[sInvoiceType] [nvarchar](20) NULL,
	[dInsertion] [datetime] NOT NULL,
	[dLastModification] [datetime] NOT NULL,
	[nRiskValue] [decimal](10, 2) NULL,
	[bContractActive] [bit] NOT NULL,
	[dContractEnd] [datetime] NULL,
	[sBillingLevel] [nvarchar](15) NULL,
	[nResellerId] [int] NULL,
	[nSaleChannelId] [int] NULL,
	[nProductSupplierId] [int] NULL,
 CONSTRAINT [PK_CompanyTest] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyInvoiceType]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyInvoiceType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nCompanyId] [int] NULL,
	[sInvoiceType] [nvarchar](50) NULL,
	[dPeriod] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyCont]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nContactTypeId] [int] NOT NULL,
	[sFirstName] [nvarchar](15) NULL,
	[sLastName] [nvarchar](15) NULL,
	[sGsm] [nvarchar](15) NULL,
	[sMail] [nvarchar](30) NULL,
	[bActive] [bit] NULL,
	[dInsertion] [datetime] NOT NULL,
	[dLastModification] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nContractNumber] [nvarchar](50) NULL,
	[sName] [nvarchar](30) NOT NULL,
	[sVat] [nvarchar](18) NOT NULL,
	[sAddress1] [nvarchar](60) NOT NULL,
	[sAddress2] [nvarchar](10) NULL,
	[nPostCodeId] [int] NOT NULL,
	[sLg] [nvarchar](10) NULL,
	[sWebSite] [nvarchar](15) NULL,
	[sTel] [nvarchar](15) NULL,
	[sFax] [nvarchar](15) NULL,
	[sLogin] [nvarchar](20) NULL,
	[sPwd] [nvarchar](20) NULL,
	[bActive] [bit] NOT NULL,
	[nMentorId] [int] NULL,
	[nComListId] [int] NULL,
	[nBalance] [decimal](10, 2) NULL,
	[sInvoiceType] [nvarchar](20) NULL,
	[dInsertion] [datetime] NOT NULL,
	[dLastModification] [datetime] NOT NULL,
	[nRiskValue] [decimal](10, 2) NULL,
	[bContractActive] [bit] NOT NULL,
	[dContractEnd] [datetime] NULL,
	[sBillingLevel] [nvarchar](15) NULL,
	[nResellerId] [int] NULL,
	[nSaleChannelId] [int] NULL,
	[nContactId] [int] NULL,
	[nProductSupplierId] [int] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComOrigin]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComOrigin](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductSupplierId] [int] NULL,
	[nProductCategoryId] [int] NULL,
	[nPercentage] [decimal](4, 2) NULL,
	[nFlat] [decimal](6, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UP_RadeemaTest]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UP_RadeemaTest](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[Data1] [int] NULL,
	[Data2] [nvarchar](20) NULL,
	[Data3] [varchar](20) NULL,
	[Data4] [varchar](2) NULL,
	[Data5] [int] NULL,
	[Data6] [varchar](51) NULL,
	[Data7] [int] NULL,
	[Data8] [varchar](11) NULL,
	[Data9] [varchar](61) NULL,
	[Data10] [decimal](18, 2) NULL,
	[Data11] [nvarchar](30) NULL,
	[Data12] [varchar](32) NULL,
	[Data13] [varchar](50) NULL,
	[Data14] [varchar](7) NULL,
	[Data15] [varchar](7) NULL,
	[Data16] [varchar](2) NULL,
	[Data17] [varchar](1) NULL,
	[Data18] [varchar](7) NULL,
	[Data19] [int] NULL,
	[Data20] [varchar](2) NULL,
	[Data21] [decimal](18, 2) NULL,
	[Data22] [varchar](2) NULL,
	[Data23] [varchar](2) NULL,
	[Data24] [datetime] NULL,
	[Data25] [varchar](250) NULL,
	[Data26] [varchar](200) NULL,
	[Data27] [varchar](1) NULL,
	[Data28] [int] NULL,
	[Data29] [varchar](50) NULL,
	[Data30] [varchar](50) NULL,
	[Data31] [varchar](10) NULL,
	[Data32] [varchar](20) NULL,
	[Data33] [varchar](2) NULL,
	[Data34] [varchar](24) NULL,
	[Data35] [varchar](24) NULL,
	[Data36] [int] NULL,
	[Data37] [varchar](20) NULL,
	[sFilename] [nvarchar](260) NULL,
	[nAmountToPay]  AS ([data10]+(1.5)) PERSISTED,
	[bProceeded] [bit] NULL,
	[sExportFilename] [nvarchar](200) NULL,
	[dExport] [datetime] NULL,
	[nTransactionsId] [int] NULL,
	[bExported] [bit] NULL,
	[nStampDuty]  AS ((0)*[Data10]) PERSISTED
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UP_Radeema_Unique]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UP_Radeema_Unique](
	[nUnipayId] [int] NOT NULL,
	[nTransactionId] [int] NOT NULL,
	[sTermTrans] [nvarchar](12) NULL,
	[sServerTransaction] [nvarchar](50) NULL,
 CONSTRAINT [PK_UP_Radeema_RUnique] PRIMARY KEY CLUSTERED
(
	[nUnipayId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UP_Radeema]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UP_Radeema](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[Data1] [int] NULL,
	[Data2] [nvarchar](20) NULL,
	[Data3] [varchar](20) NULL,
	[Data4] [varchar](2) NULL,
	[Data5] [int] NULL,
	[Data6] [varchar](51) NULL,
	[Data7] [int] NULL,
	[Data8] [varchar](11) NULL,
	[Data9] [varchar](61) NULL,
	[Data10] [decimal](18, 2) NULL,
	[Data11] [nvarchar](30) NULL,
	[Data12] [varchar](32) NULL,
	[Data13] [varchar](50) NULL,
	[Data14] [varchar](7) NULL,
	[Data15] [varchar](7) NULL,
	[Data16] [varchar](2) NULL,
	[Data17] [varchar](1) NULL,
	[Data18] [varchar](7) NULL,
	[Data19] [int] NULL,
	[Data20] [varchar](2) NULL,
	[Data21] [decimal](18, 2) NULL,
	[Data22] [varchar](2) NULL,
	[Data23] [varchar](2) NULL,
	[Data24] [datetime] NULL,
	[Data25] [varchar](250) NULL,
	[Data26] [varchar](200) NULL,
	[Data27] [varchar](1) NULL,
	[Data28] [int] NULL,
	[Data29] [varchar](50) NULL,
	[Data30] [varchar](50) NULL,
	[Data31] [varchar](10) NULL,
	[Data32] [varchar](20) NULL,
	[Data33] [varchar](2) NULL,
	[Data34] [varchar](24) NULL,
	[Data35] [varchar](24) NULL,
	[Data36] [int] NULL,
	[Data37] [varchar](20) NULL,
	[sFilename] [nvarchar](260) NULL,
	[bProceeded] [bit] NULL,
	[sExportFilename] [nvarchar](200) NULL,
	[dExport] [datetime] NULL,
	[nTransactionsId] [int] NULL,
	[bExported] [bit] NULL,
	[nStampDuty]  AS ((0)*[Data10]) PERSISTED,
	[nAmountToPay]  AS ([data10]+(1))
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UP_RadeelTest]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UP_RadeelTest](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[DATA1] [nvarchar](2) NULL,
	[DATA2] [nvarchar](3) NULL,
	[DATA3] [nvarchar](3) NULL,
	[DATA4] [nvarchar](3) NULL,
	[DATA5] [nvarchar](6) NULL,
	[DATA6] [nvarchar](50) NULL,
	[DATA7] [nvarchar](50) NULL,
	[DATA8] [nvarchar](20) NULL,
	[DATA9] [nvarchar](20) NULL,
	[DATA10] [nvarchar](2) NULL,
	[DATA11] [nvarchar](2) NULL,
	[DATA12] [datetime] NULL,
	[DATA13] [decimal](10, 2) NULL,
	[DATA14] [nvarchar](5) NULL,
	[nAmountToPay]  AS ([data13]+(1.5)),
	[bProceeded] [bit] NULL,
	[dProceeded] [datetime] NULL,
	[sExportFilename] [nvarchar](200) NULL,
	[dExport] [datetime] NULL,
	[nTransactionsId] [int] NULL,
	[bExported] [bit] NULL,
	[nStampDuty] [int] NULL,
	[nSequence] [bigint] NULL,
	[sCollectorId] [nvarchar](10) NULL,
	[sPaymentMode] [nvarchar](2) NULL,
	[sChkNumber] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UP_Radeel_Unique]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UP_Radeel_Unique](
	[nUnipayId] [int] NOT NULL,
	[nTransactionId] [int] NOT NULL,
	[sTermTrans] [nvarchar](12) NULL,
	[sServerTransaction] [nvarchar](50) NULL,
 CONSTRAINT [PK_UP_Radeel_RUnique] PRIMARY KEY CLUSTERED
(
	[nUnipayId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UP_Radeel]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UP_Radeel](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[DATA1] [nvarchar](2) NULL,
	[DATA2] [nvarchar](3) NULL,
	[DATA3] [nvarchar](3) NULL,
	[DATA4] [nvarchar](3) NULL,
	[DATA5] [nvarchar](6) NULL,
	[DATA6] [nvarchar](50) NULL,
	[DATA7] [nvarchar](50) NULL,
	[DATA8] [nvarchar](20) NULL,
	[DATA9] [nvarchar](20) NULL,
	[DATA10] [nvarchar](2) NULL,
	[DATA11] [nvarchar](2) NULL,
	[DATA12] [datetime] NULL,
	[DATA13] [decimal](10, 2) NULL,
	[DATA14] [nvarchar](5) NULL,
	[nAmountToPay]  AS ([data13]+(1.5)),
	[bProceeded] [bit] NULL,
	[dProceeded] [datetime] NULL,
	[sExportFilename] [nvarchar](200) NULL,
	[dExport] [datetime] NULL,
	[nTransactionsId] [int] NULL,
	[bExported] [bit] NULL,
	[nStampDuty] [int] NULL,
	[nSequence] [bigint] NULL,
	[sCollectorId] [nvarchar](10) NULL,
	[sPaymentMode] [nvarchar](2) NULL,
	[sChkNumber] [nvarchar](20) NULL,
	[sChannel] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UP_MarocTelecom]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UP_MarocTelecom](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](255) NULL,
	[codeFourniture] [nvarchar](255) NULL,
	[numeroPolice] [nvarchar](255) NULL,
	[dateEcheance] [date] NULL,
	[delegation] [int] NULL,
	[montantTimbre] [decimal](18, 2) NULL,
	[montantTTC] [decimal](18, 2) NULL,
	[montantTVA] [decimal](18, 2) NULL,
	[numeroFacture] [int] NULL,
	[ordre] [int] NULL,
	[numeroLigne] [int] NULL,
	[produit] [int] NULL,
	[secteur] [int] NULL,
	[tournee] [int] NULL,
	[pCritere] [nvarchar](50) NULL,
	[pTypeCritere] [int] NULL,
	[sClientName] [nvarchar](250) NULL,
	[sClientNumber] [nvarchar](50) NULL,
	[sClientId] [nvarchar](10) NULL,
	[sClientIdType] [nvarchar](10) NULL,
	[pAgence] [int] NULL,
	[sFilename] [nvarchar](260) NULL,
	[nAmountToPay]  AS ([montantTTC]),
	[dProceeded] [datetime] NULL,
	[bProceeded] [bit] NULL,
	[sExportFilename] [nvarchar](200) NULL,
	[dExport] [datetime] NULL,
	[nTransactionsId] [int] NULL,
	[nShopId] [int] NULL,
	[bExported] [bit] NULL,
	[nStampDuty]  AS ((0.0025)*[montantTVA]),
	[sTag] [nvarchar](20) NULL,
	[nReceiveTransId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UP_Lydec_Unique]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UP_Lydec_Unique](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[bCancel] [bit] NULL,
	[nShopId] [int] NULL,
	[nCancelId] [nvarchar](50) NULL,
	[sInvoiceNumbers] [nvarchar](500) NULL,
	[sLine] [nvarchar](500) NULL,
	[sAmount] [nvarchar](500) NULL,
	[nValue] [decimal](18, 2) NULL,
	[bOk] [bit] NULL,
	[nProceededTick] [bigint] NULL,
	[nReceiveTransId] [int] NULL,
	[nTransactionsId] [nvarchar](500) NULL,
	[dInsertion] [datetime] NULL,
	[sResponseCode] [nvarchar](20) NULL,
	[bReconDone] [bit] NULL,
	[dRecon] [datetime] NULL,
 CONSTRAINT [PK_UP_Lydec_RUnique] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UP_Lydec]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UP_Lydec](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](255) NULL,
	[codeFourniture] [nvarchar](255) NULL,
	[numeroPolice] [nvarchar](255) NULL,
	[dateEcheance] [date] NULL,
	[delegation] [int] NULL,
	[montantTimbre] [decimal](18, 2) NULL,
	[montantTTC] [decimal](18, 2) NULL,
	[montantTVA] [decimal](18, 2) NULL,
	[numeroFacture] [int] NULL,
	[ordre] [int] NULL,
	[numeroLigne] [int] NULL,
	[produit] [int] NULL,
	[secteur] [int] NULL,
	[tournee] [int] NULL,
	[pCritere] [nvarchar](50) NULL,
	[pTypeCritere] [int] NULL,
	[sClientName] [nvarchar](250) NULL,
	[sClientNumber] [nvarchar](50) NULL,
	[sClientId] [nvarchar](25) NULL,
	[sClientIdType] [nvarchar](100) NULL,
	[pAgence] [int] NULL,
	[sFilename] [nvarchar](260) NULL,
	[nAmountToPay]  AS ([montantTTC]),
	[dProceeded] [datetime] NULL,
	[bProceeded] [bit] NULL,
	[sExportFilename] [nvarchar](200) NULL,
	[dExport] [datetime] NULL,
	[nTransactionsId] [int] NULL,
	[nShopId] [int] NULL,
	[bExported] [bit] NULL,
	[nStampDuty]  AS ((0.0025)*[montantTVA]),
	[sTag] [nvarchar](20) NULL,
	[nReceiveTransId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UP_AmendisTest]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UP_AmendisTest](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[DATA0] [nvarchar](7) NULL,
	[DATA1] [nvarchar](1) NULL,
	[DATA2] [nvarchar](3) NULL,
	[DATA3] [nvarchar](20) NULL,
	[DATA4] [nvarchar](2) NULL,
	[DATA5] [numeric](15, 0) NULL,
	[DATA6] [nvarchar](51) NULL,
	[DATA7] [numeric](5, 0) NULL,
	[DATA8] [nvarchar](11) NULL,
	[DATA9] [nvarchar](61) NULL,
	[DATA10] [decimal](11, 2) NULL,
	[DATA11] [datetime] NULL,
	[DATA12] [nvarchar](32) NULL,
	[DATA13] [datetime] NULL,
	[DATA14] [nvarchar](7) NULL,
	[DATA15] [nvarchar](7) NULL,
	[DATA16] [nvarchar](2) NULL,
	[DATA17] [nvarchar](1) NULL,
	[DATA18] [nvarchar](7) NULL,
	[DATA19] [numeric](5, 0) NULL,
	[DATA20] [nvarchar](2) NULL,
	[DATA21] [decimal](11, 2) NULL,
	[DATA22] [nvarchar](2) NULL,
	[DATA23] [nvarchar](2) NULL,
	[DATA24] [datetime] NULL,
	[DATA25] [nvarchar](4) NULL,
	[DATA26] [nvarchar](200) NULL,
	[DATA27] [nvarchar](1) NULL,
	[DATA28] [numeric](7, 0) NULL,
	[DATA29] [nvarchar](2) NULL,
	[DATA30] [nvarchar](10) NULL,
	[DATA31] [nvarchar](20) NULL,
	[DATA32] [nvarchar](2) NULL,
	[DATA33] [nvarchar](24) NULL,
	[DATA34] [nvarchar](24) NULL,
	[DATA35] [numeric](6, 0) NULL,
	[DATA36] [int] NULL,
	[Data37] [nvarchar](50) NULL,
	[nAmountToPay]  AS ([data10]) PERSISTED,
	[sFilename] [nvarchar](200) NULL,
	[bProceeded] [bit] NULL,
	[sExportFilename] [nvarchar](200) NULL,
	[dExport] [datetime] NULL,
	[nTransactionsId] [int] NULL,
	[bExported] [bit] NULL,
	[nStampDuty]  AS ((0)*[Data10]) PERSISTED
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UP_Amendis_Unique]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UP_Amendis_Unique](
	[nUnipayId] [int] NOT NULL,
	[nTransactionId] [int] NOT NULL,
	[sTermTrans] [nvarchar](12) NULL,
	[sServerTransaction] [nvarchar](50) NULL,
 CONSTRAINT [PK_UP_Amendis_RUnique] PRIMARY KEY CLUSTERED
(
	[nUnipayId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UP_Amendis_MonthlyTest]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UP_Amendis_MonthlyTest](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[DATA0] [nvarchar](20) NULL,
	[DATA1] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UP_Amendis_Monthly]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UP_Amendis_Monthly](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[DATA0] [nvarchar](20) NULL,
	[DATA1] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UP_Amendis]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UP_Amendis](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[DATA0] [nvarchar](7) NULL,
	[DATA1] [nvarchar](1) NULL,
	[DATA2] [nvarchar](3) NULL,
	[DATA3] [nvarchar](20) NULL,
	[DATA4] [nvarchar](2) NULL,
	[DATA5] [numeric](12, 0) NULL,
	[DATA6] [nvarchar](51) NULL,
	[DATA7] [numeric](5, 0) NULL,
	[DATA8] [nvarchar](11) NULL,
	[DATA9] [nvarchar](61) NULL,
	[DATA10] [decimal](11, 2) NULL,
	[DATA11] [datetime] NULL,
	[DATA12] [nvarchar](32) NULL,
	[DATA13] [datetime] NULL,
	[DATA14] [nvarchar](7) NULL,
	[DATA15] [nvarchar](7) NULL,
	[DATA16] [nvarchar](2) NULL,
	[DATA17] [nvarchar](1) NULL,
	[DATA18] [nvarchar](7) NULL,
	[DATA19] [numeric](5, 0) NULL,
	[DATA20] [nvarchar](2) NULL,
	[DATA21] [decimal](11, 2) NULL,
	[DATA22] [nvarchar](2) NULL,
	[DATA23] [nvarchar](2) NULL,
	[DATA24] [datetime] NULL,
	[DATA25] [nvarchar](4) NULL,
	[DATA26] [nvarchar](200) NULL,
	[DATA27] [nvarchar](1) NULL,
	[DATA28] [numeric](7, 0) NULL,
	[DATA29] [nvarchar](2) NULL,
	[DATA30] [nvarchar](10) NULL,
	[DATA31] [nvarchar](20) NULL,
	[DATA32] [nvarchar](2) NULL,
	[DATA33] [nvarchar](24) NULL,
	[DATA34] [nvarchar](24) NULL,
	[DATA35] [numeric](6, 0) NULL,
	[DATA36] [int] NULL,
	[Data37] [nvarchar](50) NULL,
	[nAmountToPay]  AS ([data10]) PERSISTED,
	[sFilename] [nvarchar](200) NULL,
	[bProceeded] [bit] NULL,
	[sExportFilename] [nvarchar](200) NULL,
	[dExport] [datetime] NULL,
	[nTransactionsId] [int] NULL,
	[bExported] [bit] NULL,
	[nStampDuty]  AS ((0)*[Data10]) PERSISTED
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnipayTransactionTest]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnipayTransactionTest](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTransactionsId] [int] NULL,
	[sOperatorTransNumber] [nvarchar](30) NULL,
	[sInvoiceNumber] [nvarchar](30) NULL,
	[nValue] [decimal](18, 2) NULL,
	[sCustomerName] [varchar](100) NULL,
	[sCustomerNumber] [nvarchar](20) NULL,
	[sDueDate] [nvarchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnipayTransaction]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnipayTransaction](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTransactionsId] [int] NULL,
	[sInvoiceNumber] [nvarchar](30) NULL,
	[nValue] [decimal](18, 2) NULL,
	[sCustomerName] [varchar](100) NULL,
	[sCustomerNumber] [nvarchar](20) NULL,
	[sDueDate] [nvarchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnipayOffLineTransactionMapping]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnipayOffLineTransactionMapping](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sPartnerTableField] [nvarchar](20) NULL,
	[sUnipayTransactionField] [nvarchar](20) NULL,
	[sPartnerTable] [nvarchar](20) NULL,
	[nProductCategoryId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnipayOffLineMapping]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnipayOffLineMapping](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nDynamicScreensId] [int] NOT NULL,
	[sFiledName] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnipayGetBillsMapping]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnipayGetBillsMapping](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductCategoryId] [int] NOT NULL,
	[sSourceFieldName] [nvarchar](20) NOT NULL,
	[sXmlFieldName] [nvarchar](40) NOT NULL,
	[bCapsule] [bit] NOT NULL,
	[nPosition] [int] NULL,
	[nSaleChannelId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnipayGAB]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnipayGAB](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sGABId] [int] NULL,
	[nTerminalId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unipay]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unipay](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductCategoryId] [int] NOT NULL,
	[bOnline] [bit] NOT NULL,
	[sExtension] [nvarchar](50) NULL,
	[sTableName] [nvarchar](50) NULL,
	[bPartialPayment] [bit] NOT NULL,
	[nServiceTypeId] [int] NULL,
	[bModify] [bit] NULL,
	[sProcessExtention] [nvarchar](20) NULL,
	[bPayMultiple] [bit] NULL,
	[nSaleChannelId] [int] NULL,
	[bPass2Pay] [bit] NULL,
	[bAllInOneTransaction] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unimob]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unimob](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductId] [int] NOT NULL,
	[bCustomValue] [bit] NOT NULL,
	[sReloadType] [nvarchar](50) NOT NULL,
	[nMinReload] [int] NULL,
	[nMaxReload] [int] NULL,
	[bModify] [bit] NULL,
	[bPass2Pay] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionsTest]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionsTest](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sServerTransaction] [nvarchar](50) NULL,
	[sTermTrans] [nvarchar](12) NULL,
	[dInsertion] [datetime] NULL,
	[sOpType] [nvarchar](20) NULL,
	[nErrorCodeId] [int] NULL,
	[nProductCategoryId] [int] NULL,
	[nTerminalId] [int] NULL,
	[sShopUserName] [nvarchar](20) NULL,
	[nFidelioId] [int] NULL,
	[nComListId] [int] NULL,
	[nBalance1] [decimal](10, 4) NULL,
	[nBalance2] [decimal](10, 4) NULL,
	[nRevenue] [decimal](9, 4) NULL,
	[nRevenue2] [decimal](9, 4) NULL,
	[nMpostReloadId] [int] NULL,
	[sReloadMethod] [nvarchar](10) NULL,
	[nVoucherId] [int] NULL,
	[sGsmLoaded] [nvarchar](15) NULL,
	[nValue] [decimal](9, 2) NULL,
	[nProductSupplierId] [int] NULL,
	[nResellerRevenue] [decimal](9, 4) NULL,
	[nResellerComListId] [int] NULL,
	[nPaymentModeId] [int] NULL,
	[bOnNet] [bit] NULL,
	[sResellerName] [nvarchar](50) NULL,
	[sProductName] [nvarchar](50) NULL,
	[sShopName] [nvarchar](50) NULL,
	[sCompanyName] [nvarchar](50) NULL,
	[nResellerId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionsPreCancelled]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionsPreCancelled](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[nAccessId] [int] NULL,
	[nTransactionsId] [int] NULL,
	[sScript] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionsCorrespondence]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionsCorrespondence](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTransactionsId] [int] NOT NULL,
	[sProvTransId] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sServerTransaction] [nvarchar](50) NULL,
	[sTermTrans] [nvarchar](12) NULL,
	[dInsertion] [datetime] NULL,
	[sOpType] [nvarchar](20) NULL,
	[nErrorCodeId] [int] NULL,
	[nProductCategoryId] [int] NULL,
	[nTerminalId] [int] NULL,
	[sShopUserName] [nvarchar](20) NULL,
	[nFidelioId] [int] NULL,
	[nComListId] [int] NULL,
	[nBalance1] [decimal](10, 4) NULL,
	[nBalance2] [decimal](10, 4) NULL,
	[nRevenue] [decimal](9, 4) NULL,
	[nRevenue2] [decimal](9, 4) NULL,
	[nMpostReloadId] [int] NULL,
	[sReloadMethod] [nvarchar](10) NULL,
	[nVoucherId] [int] NULL,
	[sGsmLoaded] [nvarchar](15) NULL,
	[nValue] [decimal](9, 2) NULL,
	[nProductSupplierId] [int] NULL,
	[nResellerRevenue] [decimal](9, 4) NULL,
	[nResellerComListId] [int] NULL,
	[nPaymentModeId] [int] NULL,
	[bOnNet] [bit] NULL,
	[sResellerName] [nvarchar](50) NULL,
	[sProductName] [nvarchar](50) NULL,
	[sShopName] [nvarchar](50) NULL,
	[sCompanyName] [nvarchar](50) NULL,
	[nResellerId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionOnGoing]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionOnGoing](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nCategoryId] [int] NOT NULL,
	[nBillId] [int] NOT NULL,
	[sRequestId] [nvarchar](20) NULL,
	[sServerTransNumber] [nvarchar](100) NULL,
	[sUser] [nvarchar](20) NULL,
	[dInsertion] [datetime] NULL,
	[nCompanyId] [int] NULL,
	[nShopId] [int] NULL,
	[nTerminalId] [int] NULL,
	[nAmount] [decimal](8, 2) NULL,
	[sBillingLevel] [nvarchar](13) NULL,
	[bClosed] [bit] NULL,
 CONSTRAINT [PK_TransactionOnGoing] PRIMARY KEY CLUSTERED
(
	[nCategoryId] ASC,
	[nBillId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionFshStatus]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionFshStatus](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionFshBillingStatus]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionFshBillingStatus](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionFsh]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionFsh](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[nTerminalId] [int] NULL,
	[nRequestId] [nvarchar](50) NULL,
	[sSTR] [nvarchar](50) NULL,
	[nProductCategoryId] [int] NULL,
	[nValue] [decimal](7, 2) NULL,
	[nTransactionFshStatusId] [int] NULL,
	[nResponseCodeId] [int] NULL,
	[bOnNet] [bit] NULL,
	[nOnNetProductGroupId] [int] NULL,
	[nCompanyCommission] [decimal](7, 4) NULL,
	[nCompanyComListId] [int] NULL,
	[nResellerCommission] [decimal](7, 4) NULL,
	[nResslerComListId] [int] NULL,
 CONSTRAINT [PK_TransactionFsh] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tracking]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tracking](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTimes] [int] NOT NULL,
	[nValue] [int] NOT NULL,
	[nMpostReloadTypeId] [int] NOT NULL,
	[nFinProductId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tracing]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tracing](
	[nid] [int] IDENTITY(1,1) NOT NULL,
	[sip] [nvarchar](50) NULL,
	[surl] [nvarchar](1500) NULL,
	[datea] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TouriDealProduct]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TouriDealProduct](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NULL,
	[sImage] [nvarchar](50) NULL,
	[nPrice] [decimal](8, 2) NULL,
	[nSpecialPrice] [decimal](8, 2) NULL,
	[sDescription] [text] NULL,
	[bSpecial] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TouriDealCustomer]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TouriDealCustomer](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[sFirstName] [nvarchar](20) NULL,
	[sLastName] [nvarchar](20) NULL,
	[sAddress] [nvarchar](50) NULL,
	[nPostCode] [nvarchar](10) NULL,
	[nBalanceOn] [int] NULL,
	[sGSM] [nvarchar](20) NULL,
	[sMail] [nvarchar](150) NULL,
	[bActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TouriDealCartProduct]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TouriDealCartProduct](
	[nid] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[nCartId] [int] NULL,
	[nQuantity] [int] NULL,
	[nTouriDealProductId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TouriDealCart]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TouriDealCart](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[bPaid] [bit] NULL,
	[nPaymentId] [nvarchar](50) NULL,
	[dPaid] [datetime] NULL,
	[nDelay] [int] NULL,
	[nTotal] [decimal](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiketoTicketContent]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiketoTicketContent](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTiketoTicketId] [int] NULL,
	[nTikeoItemTypeId] [int] NULL,
	[nItemValue] [decimal](8, 2) NULL,
	[nTiketoBrandItemId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiketoTicket]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiketoTicket](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[dTicket] [datetime] NULL,
	[sTicketReference] [nvarchar](50) NULL,
	[nTicketValue] [decimal](8, 2) NULL,
	[nItemsQuantity] [int] NULL,
	[nTiketoMerchantInfoId] [int] NULL,
	[sTicketCopy] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiketoSupplier]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiketoSupplier](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](20) NULL,
	[bConfirmed] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiketoMerchantInfo]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiketoMerchantInfo](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sCompanyName] [nvarchar](20) NULL,
	[sCompanyType] [nvarchar](20) NULL,
	[sContactLastName] [nvarchar](20) NULL,
	[sContactFirstName] [nvarchar](20) NULL,
	[sContactMail] [nvarchar](20) NULL,
	[sContactGSM] [nchar](10) NULL,
	[sAddress] [nvarchar](150) NULL,
	[sZipCode] [nvarchar](50) NULL,
	[sVAT] [nvarchar](20) NULL,
	[sLogo] [nvarchar](15) NULL,
	[sBrandName] [nvarchar](20) NULL,
	[bApproved] [bit] NULL,
	[nTiketoAccessId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiketoItemType]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiketoItemType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](20) NULL,
	[bConfirmed] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiketoItemBrand]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiketoItemBrand](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](20) NULL,
	[bConfirmed] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiketoConsumerInfo]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiketoConsumerInfo](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTiketoAccessId] [int] NULL,
	[sFirstName] [nvarchar](20) NULL,
	[sLastName] [nvarchar](20) NULL,
	[sMail] [nvarchar](50) NULL,
	[sAddress] [nvarchar](150) NULL,
	[sZipCode] [nvarchar](10) NULL,
	[sGSM] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiketoAccessManagmentFunction]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiketoAccessManagmentFunction](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTiketoAccessId] [int] NULL,
	[nTikeoManagmentFunctionId] [int] NULL,
	[bActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiketoAccess]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiketoAccess](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sLogin] [nvarchar](100) NULL,
	[SPWD] [nvarchar](100) NULL,
	[nTiketoAccessTypeId] [int] NULL,
	[nMentorId] [int] NULL,
	[dInsertion] [datetime] NULL,
	[bActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TikeoManagmentFunction]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TikeoManagmentFunction](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NULL,
	[sExtension] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TerminalType]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TerminalType](
	[nId] [int] NOT NULL,
	[sName] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TerminalStock]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TerminalStock](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sMacAddress] [nvarchar](20) NOT NULL,
	[sSerialNumber] [nvarchar](15) NOT NULL,
	[sSimSerialNum] [nvarchar](15) NOT NULL,
	[sCli] [nvarchar](15) NOT NULL,
	[nTelcoSupplierId] [int] NOT NULL,
	[bLinked] [bit] NOT NULL,
	[nMentorId] [int] NULL,
	[ddateinsertion] [datetime] NOT NULL,
	[nTerminalTypeId] [int] NULL,
 CONSTRAINT [PK_TerminalStock] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TerminalSSS]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TerminalSSS](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTerminalId] [int] NOT NULL,
	[bLimitation] [bit] NOT NULL,
	[nBalance] [decimal](10, 0) NULL,
	[sName] [nvarchar](100) NULL,
	[sCode] [nvarchar](100) NULL,
	[bActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TerminalSer]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TerminalSer](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTerminalId] [int] NOT NULL,
	[nServiceId] [int] NOT NULL,
	[bActive] [bit] NOT NULL,
	[bModify] [bit] NULL,
	[nPrint] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TerminalProduct]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TerminalProduct](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductId] [int] NULL,
	[nTerminalId] [int] NULL,
	[bActive] [bit] NULL,
	[nPosition] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Terminal]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Terminal](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nConvention] [nvarchar](50) NULL,
	[bActiveConvention] [bit] NULL,
	[bActive] [bit] NULL,
	[nGuarantyAmount] [decimal](6, 2) NULL,
	[nShopId] [int] NULL,
	[sMacAddress] [nvarchar](20) NULL,
	[sSerialNumber] [nvarchar](15) NULL,
	[sSimSerialNum] [nvarchar](15) NULL,
	[sCli] [nvarchar](15) NULL,
	[nTelcoSupplierId] [int] NULL,
	[sLogin] [nvarchar](15) NULL,
	[sPwd] [nvarchar](15) NULL,
	[nMentorId] [int] NULL,
	[dIinsertion] [datetime] NULL,
	[bModify] [bit] NULL,
	[nReloadTries] [int] NULL,
	[nDbTimeMarker] [int] NULL,
	[nOrderNumber] [int] NULL,
	[breprint] [bit] NULL,
	[nTerminalStockId] [int] NULL,
	[dConventionEnd] [datetime] NULL,
	[nVirtualCorrespondance] [int] NULL,
 CONSTRAINT [PK_Terminal] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefloussTransactionType]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefloussTransactionType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](20) NULL,
	[nFunction] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefloussTransactionFee]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefloussTransactionFee](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nFixFee] [decimal](5, 2) NULL,
	[nVariableFee] [decimal](4, 2) NULL,
	[sName] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefloussTransaction]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefloussTransaction](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[nTelefloussTransactionTypeId] [int] NULL,
	[nAmount] [decimal](8, 2) NULL,
	[nInitialBalance] [decimal](8, 2) NULL,
	[nFinalBalance] [decimal](8, 2) NULL,
	[nTransactionCost] [decimal](8, 2) NULL,
	[nTeleFloussResponseCodeId] [int] NULL,
	[sRequestStamp] [nvarchar](30) NULL,
	[sResponseStamp] [nvarchar](30) NULL,
	[sRequestTransaction] [nvarchar](50) NULL,
	[sAuthorizationNumber] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefloussTerminalTransaction]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefloussTerminalTransaction](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [date] NULL,
	[nTelefloussTransactionId] [int] NULL,
	[nTeleFloussTransactionFeeId] [int] NULL,
	[nTransactionCost] [decimal](8, 2) NULL,
	[bTransfer] [bit] NULL,
	[dPaymentExecution] [datetime] NULL,
	[nTlefloussTransferToId] [int] NULL,
	[sFileName] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefloussTerminal]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefloussTerminal](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTerminalId] [int] NULL,
	[bActive] [bit] NULL,
	[sLogin] [nvarchar](20) NULL,
	[sPwd] [nvarchar](20) NULL,
	[nTelefloussTransactionFeeId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefloussTagBalance]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefloussTagBalance](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTelefloussTAGId] [int] NULL,
	[nBalance] [decimal](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefloussTag]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefloussTag](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sTagId] [nvarchar](30) NULL,
	[nPIN] [nvarchar](30) NULL,
	[nTeleFloussCustomerId] [int] NULL,
	[bLinked] [bit] NULL,
	[nTries] [int] NULL,
	[bActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefloussResponseCode]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefloussResponseCode](
	[nId] [int] NOT NULL,
	[sName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefloussFunction]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefloussFunction](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sFunction] [nvarchar](20) NULL,
	[sExtension] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefloussCustomerBalance]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefloussCustomerBalance](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTelefloussCustomerId] [int] NULL,
	[nBalance] [decimal](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefloussCustomer]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefloussCustomer](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[sFirstName] [nvarchar](20) NULL,
	[sLastName] [nvarchar](20) NULL,
	[sAddress] [nvarchar](50) NULL,
	[nPostCode] [nvarchar](10) NULL,
	[nBalanceOn] [int] NULL,
	[sGSM] [nvarchar](20) NULL,
	[sMail] [nvarchar](150) NULL,
	[bActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefloussAccessType]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefloussAccessType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefloussAccessFunction]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefloussAccessFunction](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTelefloussAccessId] [int] NULL,
	[nTelefloussFunctionId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefloussAccess]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefloussAccess](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sLogin] [nvarchar](20) NULL,
	[sPwd] [nvarchar](20) NULL,
	[nTelefloussAccessTypeId] [int] NULL,
	[bActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelcoSupplierRepository]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelcoSupplier](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskRooter]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskRooter](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NULL,
	[nTaskId] [int] NULL,
	[nServiceId] [int] NULL,
	[sTaskRoot] [nvarchar](50) NULL,
	[bBilled] [bit] NULL,
	[sProductCategoryMapping] [nvarchar](50) NULL,
	[bQueryPC] [bit] NULL,
	[bQueryTV] [bit] NULL,
	[sTransactionValueMapping] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupportReport]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupportReport](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nSupportContactId] [int] NOT NULL,
	[sSupportType] [nvarchar](20) NOT NULL,
	[sPartnerName] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResellerComList]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResellerComList](
	[nid] [int] NOT NULL,
	[sName] [nvarchar](20) NULL,
	[bActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reseller2ResellerComListProd]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reseller2ResellerComListProd](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nResellerId] [int] NULL,
	[nMentorResellerId] [int] NULL,
	[nCom] [decimal](8, 2) NULL,
	[nValue] [decimal](8, 8) NULL,
	[nProductCategoryId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reseller]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reseller](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](30) NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[nMentorId] [int] NOT NULL,
	[nResellerComListId] [int] NOT NULL,
	[nBalance] [decimal](12, 2) NULL,
	[nSaleChannelId] [int] NULL,
	[nPrepaidBalance] [decimal](12, 2) NULL,
	[sMapping] [nvarchar](20) NULL,
	[bOnNet] [bit] NULL,
	[nLevel] [int] NULL,
	[nMentorResellerId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResponseTracking]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResponseTracking](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[nTerminalRequestId] [nvarchar](10) NULL,
	[nServerRequestId] [nvarchar](10) NULL,
	[nInternalResponseCodeId] [int] NULL,
	[nPartnerResponseCodeId] [int] NULL,
	[nPartnerComRef] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResponseCode]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResponseCode](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductSupplierId] [int] NULL,
	[bInternalResponse] [bit] NULL,
	[nPartnerResponseCodeId] [nvarchar](50) NULL,
	[sSyntax] [nvarchar](500) NULL,
	[nResponseCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepTermProdCat]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepTermProdCat](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[dPeriod] [datetime] NOT NULL,
	[sPeriodicity] [nvarchar](20) NOT NULL,
	[nTerminalId] [int] NOT NULL,
	[nProductCategoryId] [int] NOT NULL,
	[nQuantity] [int] NULL,
	[nValue] [decimal](10, 4) NULL,
	[nComListId] [int] NULL,
	[nRevCartomat] [decimal](10, 4) NULL,
	[nRevTerminal] [decimal](10, 4) NULL,
	[nRevReseller] [decimal](10, 4) NULL,
	[bToRecalculate] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepReload]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepReload](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[dPeriod] [datetime] NULL,
	[sPeriodicity] [nvarchar](20) NULL,
	[nTerminalId] [int] NULL,
	[nQuantity] [int] NULL,
	[nValue] [decimal](10, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepCompany]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepCompany](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dTransaction] [datetime] NOT NULL,
	[nCompanyId] [int] NOT NULL,
	[Nb_transactions] [int] NOT NULL,
	[T_sold] [int] NOT NULL,
	[R_Company] [int] NOT NULL,
	[R_Carto] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepBusinessSummary]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepBusinessSummary](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sPeriodicity] [nvarchar](50) NULL,
	[nTerminalId] [int] NULL,
	[nShopId] [int] NULL,
	[nCompanyId] [int] NULL,
	[nQuantity] [int] NOT NULL,
	[nValue] [decimal](16, 4) NULL,
	[nRevCartomat] [decimal](16, 4) NULL,
	[nRevenue] [decimal](16, 4) NULL,
	[nRevReseller] [decimal](16, 4) NULL,
	[dInsertion] [datetime] NOT NULL,
	[dPeriod] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepBusinessGlobal]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepBusinessGlobal](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[dPeriod] [datetime] NULL,
	[sPeriodicity] [nvarchar](20) NULL,
	[nQuantity] [int] NULL,
	[nValue] [decimal](10, 4) NULL,
	[nRevCartomat] [decimal](10, 4) NULL,
	[nRevTerminal] [decimal](10, 4) NULL,
	[nRevReseller] [decimal](10, 4) NULL,
	[nTerminalId] [int] NULL,
	[nTotalTerminal] [int] NULL,
	[nActiveTerminal] [int] NULL,
	[nAverageBusiness] [decimal](10, 4) NULL,
	[nAverageTransaction] [decimal](10, 4) NULL,
	[bToRecalculate] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReconMeditelTest]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReconMeditelTest](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sMSISDN] [nvarchar](20) NULL,
	[dInsertion] [datetime] NULL,
	[nTransactionId] [int] NULL,
	[sPartnerTransactionId] [nvarchar](10) NULL,
	[nErrorCode] [int] NULL,
	[bReconciled] [bit] NULL,
	[dReconciled] [datetime] NULL,
	[nValue] [int] NULL,
	[bSuccessReconciled] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReconMeditel]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReconMeditel](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sMSISDN] [nvarchar](20) NULL,
	[dInsertion] [datetime] NULL,
	[nTransactionId] [int] NULL,
	[sPartnerTransactionId] [nvarchar](10) NULL,
	[nErrorCode] [int] NULL,
	[bReconciled] [bit] NULL,
	[dReconciled] [datetime] NULL,
	[nValue] [int] NULL,
	[bSuccessReconciled] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReconLydec]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReconLydec](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[dInsertion] [datetime] NULL,
	[nReconLydecTypeId] [int] NULL,
	[typeSignature] [varchar](1) NULL,
	[dateSignature] [datetime] NULL,
	[dateDebut] [bigint] NULL,
	[dateFin] [bigint] NULL,
	[numeroTransactionDebut] [int] NULL,
	[numeroTransactionFin] [int] NULL,
	[numeroTransactionIfxDebut] [int] NULL,
	[numeroTransactionIfxFin] [int] NULL,
	[espaceServiceDebut] [int] NULL,
	[espaceServiceFin] [int] NULL,
	[montantDebiteDebut] [decimal](18, 2) NULL,
	[montantDebiteFin] [decimal](18, 2) NULL,
	[nombreAnnulations] [int] NULL,
	[nombreRejets] [int] NULL,
	[nombreTransactionsDebitees] [int] NULL,
	[nombreTransactions] [int] NULL,
	[montantTotalDebite] [decimal](18, 2) NULL,
	[montantTotalEspecesTr] [decimal](18, 2) NULL,
	[montantTotalAutresMPTr] [int] NULL,
	[montantTotalTimbresAnnules] [int] NULL,
	[nombreFacturesRegles] [int] NULL,
	[montantTotalTTC] [decimal](18, 2) NULL,
	[nombreMPs] [int] NULL,
	[montantTotalEspecesMP] [int] NULL,
	[montantTotalAutresMPMP] [decimal](18, 2) NULL,
	[agcCod] [int] NULL,
	[numero] [int] NULL,
	[validation] [bit] NULL,
	[message] [varchar](25) NULL,
	[ok] [bit] NULL,
	[shopRecon] [varchar](250) NULL,
	[transRecon] [varchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QueueStatus]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QueueStatus](
	[nAccessId] [int] NOT NULL,
	[bRunning] [bit] NULL,
 CONSTRAINT [PK_QueueStatus] PRIMARY KEY CLUSTERED
(
	[nAccessId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Queue]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Queue](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nAccessId] [int] NULL,
	[nRecordSequenceNumber] [nvarchar](5) NULL,
	[sComment] [nvarchar](50) NULL,
	[nVisaJobsId] [int] NULL,
	[nVisaFileTrackId] [int] NULL,
	[sCardNumber] [nvarchar](20) NULL,
	[bProceeded] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Query]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Query](
	[nid] [int] NOT NULL,
	[nProductCategoryId] [int] NULL,
	[ncom] [decimal](6, 4) NULL,
	[nvalue] [decimal](9, 4) NULL,
	[dinsertion] [datetime2](3) NULL,
	[nSaleValue] [decimal](9, 4) NULL,
	[nSaleValueExcVat] [decimal](9, 4) NULL,
	[nComExcVat] [decimal](6, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProspectSpeakerType]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProspectSpeakerType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sType] [nvarchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProspectShopType]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProspectShopType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sType] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProspectSalesEstimation]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProspectSalesEstimation](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sSalesEstimation] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProspectPotential]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProspectPotential](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sPotential] [nvarchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProspectExistingSales]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProspectExistingSales](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sExistingSale] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProspectBoost]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProspectBoost](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nMentorId] [int] NOT NULL,
	[nProspectId] [int] NOT NULL,
	[dBoost] [datetime] NOT NULL,
	[sComment] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prospect]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prospect](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sShopName] [nvarchar](30) NOT NULL,
	[nProspectShopTypeId] [int] NOT NULL,
	[sSpeakerName] [nvarchar](30) NULL,
	[nProspectSpeakerTypeId] [int] NOT NULL,
	[sGsm] [nvarchar](30) NOT NULL,
	[sAddress] [nvarchar](50) NOT NULL,
	[sAddressNumber] [nvarchar](50) NOT NULL,
	[nPostCodeId] [int] NOT NULL,
	[nProspectPotentialId] [int] NOT NULL,
	[nProspectSalesEstimationId] [int] NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[dProspection] [datetime] NOT NULL,
	[sComment] [nvarchar](500) NULL,
	[nMentorId] [int] NULL,
	[bContracted] [bit] NOT NULL,
	[nBoosted] [int] NOT NULL,
	[nProspectExistingSalesId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSupplier]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSupplier](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](20) NOT NULL,
	[sAddress] [nvarchar](50) NULL,
	[nPostCodeId] [int] NULL,
	[sTel] [nvarchar](15) NULL,
	[sFax] [nvarchar](15) NULL,
	[sWebsite] [nvarchar](20) NULL,
	[sMapping] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductReseller]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReseller](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductId] [int] NULL,
	[nResellerId] [int] NULL,
	[bActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComList]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComList](
	[nid] [int] NOT NULL,
	[sName] [nvarchar](15) NULL,
	[bActive] [bit] NULL,
	[nResellerId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComComTransit]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComComTransit](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nComCompany] [decimal](18, 2) NULL,
	[nComReseller] [decimal](18, 2) NULL,
	[nPCId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Com2Reseller]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Com2Reseller](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nResellerComListId] [int] NULL,
	[nProductCategoryId] [int] NULL,
	[nPercent] [decimal](4, 2) NULL,
	[nFlat] [decimal](6, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Com2Company]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Com2Company](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nComListId] [int] NULL,
	[nProductCategoryId] [int] NULL,
	[nPercent] [decimal](4, 2) NULL,
	[nFlat] [decimal](6, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NULL,
	[sZip] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankCode]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankCode](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sCode] [nvarchar](10) NULL,
	[sName] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUpdate]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUpdate](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sFileListName] [nvarchar](30) NULL,
	[dInsert] [datetime] NULL,
	[nTimeMarker] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlarmType]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlarmType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessType]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL,
	[sAccessTable] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessMpostTitles]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessMpostTitles](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nAccessId] [int] NULL,
	[nMpostTitleId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessMpostFunctions]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessMpostFunctions](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nAccessId] [int] NOT NULL,
	[nMpostFunctionsId] [int] NOT NULL,
	[bAllow] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessMpost]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccessMpost](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nAccessId] [int] NOT NULL,
	[sFunction] [nvarchar](50) NOT NULL,
	[bAllow] [bit] NOT NULL,
	[url] [varchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Access]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Access](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sLogin] [nvarchar](100) NOT NULL,
	[sPwd] [nvarchar](100) NOT NULL,
	[nAccessTypeId] [int] NOT NULL,
	[nCompanyId] [int] NULL,
	[nUsersId] [int] NULL,
	[bActive] [bit] NULL,
	[nResellerId] [int] NULL,
	[nProductSupplierId] [int] NULL,
	[nLanguageId] [int] NULL,
	[sAppCategory] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmsType]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmsType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSTest]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSTest](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmsReceipt]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmsReceipt](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[SmsID] [nvarchar](50) NULL,
	[ClientSmsID] [nvarchar](50) NULL,
	[Dest] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[Comment] [nvarchar](50) NULL,
	[StatusCode] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMS]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMS](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sSmsId] [nvarchar](50) NULL,
	[sSender] [nvarchar](50) NULL,
	[sMsg] [nvarchar](300) NULL,
	[sProvider] [nvarchar](50) NULL,
	[dInsertion] [datetime] NOT NULL,
	[nSmsTypeId] [int] NULL,
	[sOutBoundId] [nvarchar](50) NULL,
	[bReceip] [bit] NULL,
	[dReceipt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nCompanyid] [int] NOT NULL,
	[sName] [nvarchar](20) NOT NULL,
	[sAddress1] [nvarchar](50) NOT NULL,
	[sAddress2] [nvarchar](50) NULL,
	[nPostCodeId] [int] NOT NULL,
	[sTel] [nvarchar](20) NULL,
	[sFax] [nvarchar](20) NULL,
	[bactive] [bit] NOT NULL,
	[nMentorId] [int] NULL,
	[dInsertion] [datetime] NOT NULL,
	[bContractActive] [bit] NOT NULL,
	[dContractEnd] [datetime] NULL,
	[nBalance] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceType]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceType](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](25) NOT NULL,
	[nServiceId] [int] NOT NULL,
	[nPosition] [int] NULL,
	[sLogo] [nvarchar](25) NULL,
	[sLogoActive] [nvarchar](25) NULL,
	[bPass2Pay] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[nId] [int] NOT NULL,
	[sName] [nvarchar](20) NOT NULL,
	[sActiveLogo] [nvarchar](15) NULL,
	[sNonActiveLogo] [nvarchar](15) NULL,
	[nPosition] [int] NULL,
	[bPass2pay] [bit] NULL,
	[nPass2PayPosition] [int] NULL,
	[nReprint] [int] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nServiceId] [int] NULL,
	[sName] [nvarchar](20) NULL,
	[sConnexionType] [nvarchar](20) NULL,
	[nTimeOut] [int] NULL,
	[bMode] [bit] NULL,
	[sUrl] [nvarchar](100) NULL,
	[nSmsNumber] [int] NULL,
	[nPriority] [int] NULL,
	[bModify] [bit] NULL,
	[nSupplierId] [int] NULL,
	[bDedicated] [bit] NULL,
	[bPass2pay] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleChannel]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleChannel](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResellerTransactionsTest]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResellerTransactionsTest](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nResellerId] [int] NULL,
	[nReselleropTypeId] [int] NOT NULL,
	[nCompanyId] [int] NULL,
	[nTransactionsId] [int] NULL,
	[nResellerInitialBalance] [decimal](12, 2) NOT NULL,
	[nResellerFinalBalance] [decimal](12, 2) NOT NULL,
	[nValue] [decimal](12, 2) NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[nAccessId] [int] NULL,
	[nResellerComListId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResellerTransaction]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResellerTransaction](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nResellerId] [int] NULL,
	[nReselleropTypeId] [int] NOT NULL,
	[nCompanyId] [int] NULL,
	[nTransactionsId] [int] NULL,
	[nResellerInitialBalance] [decimal](12, 2) NOT NULL,
	[nResellerFinalBalance] [decimal](12, 2) NOT NULL,
	[nValue] [decimal](12, 2) NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[nAccessId] [int] NULL,
	[nResellerComListId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResellerTest]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResellerTest](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](30) NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[nMentorId] [int] NOT NULL,
	[nResellerComListId] [int] NOT NULL,
	[nBalance] [decimal](12, 2) NULL,
	[nSaleChannelId] [int] NULL,
	[nPrepaidBalance] [decimal](12, 2) NULL,
	[sMapping] [nvarchar](20) NULL,
	[bOnNet] [bit] NULL,
	[nLevel] [int] NULL,
	[nMentorResellerId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResellerOpType]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResellerOptype](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkLoad]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkLoad](
	[RowNumber] [int] IDENTITY(0,1) NOT NULL,
	[EventClass] [int] NULL,
	[TextData] [ntext] NULL,
	[ApplicationName] [nvarchar](128) NULL,
	[NTUserName] [nvarchar](128) NULL,
	[LoginName] [nvarchar](128) NULL,
	[CPU] [int] NULL,
	[Reads] [bigint] NULL,
	[Writes] [bigint] NULL,
	[Duration] [bigint] NULL,
	[ClientProcessID] [int] NULL,
	[SPID] [int] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[BinaryData] [image] NULL,
PRIMARY KEY CLUSTERED
(
	[RowNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebScan]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebScan](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sImagePath] [nvarchar](250) NULL,
	[dInsertion] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoucherTest]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherTest](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductCategoryId] [int] NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[bUsed] [bit] NOT NULL,
	[sPinCode] [nvarchar](50) NOT NULL,
	[sSerialNumber] [nvarchar](50) NOT NULL,
	[dValidity] [datetime] NULL,
	[nValidity] [int] NULL,
	[nProductSupplierId] [int] NOT NULL,
	[sFileSourceName] [nvarchar](50) NOT NULL,
	[dExport] [datetime] NULL,
	[sDestFile] [nvarchar](50) NULL,
	[bMain] [bit] NULL,
	[nResellerId] [int] NULL,
	[bOnNet] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoucherBackup]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherBackup](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductCategoryId] [int] NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[bUsed] [bit] NOT NULL,
	[sPinCode] [nvarchar](50) NOT NULL,
	[sSerialNumber] [nvarchar](50) NOT NULL,
	[dValidity] [datetime] NULL,
	[nValidity] [int] NULL,
	[nProductSupplierId] [int] NOT NULL,
	[sFileSourceName] [nvarchar](50) NOT NULL,
	[dExport] [datetime] NULL,
	[sDestFile] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductCategoryId] [int] NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[bUsed] [bit] NOT NULL,
	[sPinCode] [nvarchar](50) NOT NULL,
	[sSerialNumber] [nvarchar](50) NOT NULL,
	[dValidity] [datetime] NULL,
	[nValidity] [int] NULL,
	[nProductSupplierId] [int] NOT NULL,
	[sFileSourceName] [nvarchar](50) NOT NULL,
	[dExport] [datetime] NULL,
	[sDestFile] [nvarchar](50) NULL,
	[bMain] [bit] NULL,
	[nResellerId] [int] NULL,
	[bOnNet] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Validity]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Validity](
	[nId] [int] NOT NULL,
	[dValidity1] [datetime] NULL,
	[nValidity2] [nchar](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UpdateDBCompany]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UpdateDBCompany](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nCompanyId] [int] NULL,
	[sDBGenUrl] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UpdateDb]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UpdateDb](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nTerminalId] [int] NULL,
	[bFirst] [bit] NULL,
	[bDownloaded] [bit] NULL,
	[dDownloaded] [datetime] NULL,
	[sFileName] [nvarchar](100) NULL,
	[bAll] [bit] NULL,
	[nTimeMarker] [int] NULL,
	[dinsertion] [datetime] NULL,
	[sZipPin] [nvarchar](20) NULL,
	[sCountryListID] [nvarchar](300) NULL,
	[sserverListId] [nvarchar](300) NULL,
	[sServiceListId] [nvarchar](300) NULL,
	[sProductListID] [nvarchar](300) NULL,
	[sCategoryListId] [nvarchar](300) NULL,
	[sErrorCodeListId] [nvarchar](300) NULL,
	[sUnimobListId] [nvarchar](300) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UP_RedalTest]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UP_RedalTest](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[DATA1] [int] NULL,
	[DATA2] [nvarchar](3) NULL,
	[DATA3] [int] NULL,
	[DATA4] [nvarchar](50) NULL,
	[DATA5] [int] NULL,
	[DATA6] [nvarchar](30) NULL,
	[DATA7] [nvarchar](150) NULL,
	[DATA8] [nvarchar](150) NULL,
	[DATA9] [nvarchar](150) NULL,
	[DATA10] [nvarchar](150) NULL,
	[DATA11] [decimal](18, 2) NULL,
	[DATA12] [datetime] NULL,
	[DATA13] [nvarchar](150) NULL,
	[DATA14] [datetime] NULL,
	[sFileName] [nvarchar](250) NULL,
	[nAmountToPay]  AS ([Data11]+(0.0025)*[Data11]),
	[bProceeded] [bit] NULL,
	[dProceeded] [datetime] NULL,
	[sExportFilename] [nvarchar](200) NULL,
	[dExport] [datetime] NULL,
	[nTransactionsId] [int] NULL,
	[bExported] [bit] NULL,
	[nStampDuty]  AS ((0.0025)*[Data11]) PERSISTED,
	[nSequence] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UP_Redal_Unique]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UP_Redal_Unique](
	[nUnipayId] [int] NOT NULL,
	[nTransactionId] [int] NOT NULL,
	[sTermTrans] [nvarchar](12) NULL,
	[sServerTransaction] [nvarchar](50) NULL,
 CONSTRAINT [PK_UP_Redal_RUnique] PRIMARY KEY CLUSTERED
(
	[nUnipayId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UP_Redal]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UP_Redal](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[DATA1] [int] NULL,
	[DATA2] [nvarchar](3) NULL,
	[DATA3] [int] NULL,
	[DATA4] [nvarchar](50) NULL,
	[DATA5] [int] NULL,
	[DATA6] [nvarchar](30) NULL,
	[DATA7] [nvarchar](150) NULL,
	[DATA8] [nvarchar](150) NULL,
	[DATA9] [nvarchar](150) NULL,
	[DATA10] [nvarchar](150) NULL,
	[DATA11] [decimal](18, 2) NULL,
	[DATA12] [datetime] NULL,
	[DATA13] [nvarchar](150) NULL,
	[DATA14] [datetime] NULL,
	[sFileName] [nvarchar](250) NULL,
	[nAmountToPay]  AS ([Data11]+(0.0025)*[Data11]),
	[bProceeded] [bit] NULL,
	[dProceeded] [datetime] NULL,
	[sExportFilename] [nvarchar](200) NULL,
	[dExport] [datetime] NULL,
	[nTransactionsId] [int] NULL,
	[bExported] [bit] NULL,
	[nStampDuty]  AS ((0.0025)*[Data11]) PERSISTED,
	[nSequence] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UP_RamsaTest]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UP_RamsaTest](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[Data1] [numeric](10, 0) NULL,
	[Data2] [numeric](4, 0) NULL,
	[Data3] [nvarchar](200) NULL,
	[Data4] [nvarchar](30) NULL,
	[Data5] [nvarchar](10) NULL,
	[Data6] [nvarchar](10) NULL,
	[Data7] [decimal](18, 2) NULL,
	[Data8] [datetime] NULL,
	[Data9] [nvarchar](200) NULL,
	[sFilename] [nvarchar](260) NULL,
	[nAmountToPay]  AS ((1.5)*[Data7]),
	[dProceeded] [datetime] NULL,
	[bProceeded] [bit] NULL,
	[sExportFilename] [nvarchar](200) NULL,
	[dExport] [datetime] NULL,
	[nTransactionsId] [int] NULL,
	[nShopId] [int] NULL,
	[bExported] [bit] NULL,
	[nStampDuty]  AS ((0)*[Data7])
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UP_Ramsa_Unique]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UP_Ramsa_Unique](
	[nUnipayId] [int] NOT NULL,
	[nTransactionId] [int] NOT NULL,
	[sTermTrans] [nvarchar](12) NULL,
	[sServerTransaction] [nvarchar](50) NULL,
 CONSTRAINT [PK_UP_Ramsa_RUnique] PRIMARY KEY CLUSTERED
(
	[nUnipayId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UP_Ramsa]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UP_Ramsa](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[Data1] [numeric](10, 0) NULL,
	[Data2] [numeric](4, 0) NULL,
	[Data3] [nvarchar](200) NULL,
	[Data4] [nvarchar](30) NULL,
	[Data5] [nvarchar](10) NULL,
	[Data6] [nvarchar](10) NULL,
	[Data7] [decimal](18, 2) NULL,
	[Data8] [datetime] NULL,
	[Data9] [nvarchar](200) NULL,
	[sFilename] [nvarchar](260) NULL,
	[nAmountToPay]  AS (((1.5)+[Data7])+[Data7]*(0.0025)),
	[dProceeded] [datetime] NULL,
	[bProceeded] [bit] NULL,
	[sExportFilename] [nvarchar](200) NULL,
	[dExport] [datetime] NULL,
	[nTransactionsId] [int] NULL,
	[nShopId] [int] NULL,
	[bExported] [bit] NULL,
	[nStampDuty]  AS ((0.0025)*[Data7])
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResellerComListProd]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResellerComListProd](
	[nid] [int] IDENTITY(1,1) NOT NULL,
	[nResellerComlistID] [int] NULL,
	[nProductCategoryId] [int] NULL,
	[ncom] [decimal](6, 4) NULL,
	[nvalue] [decimal](9, 4) NULL,
	[dinsertion] [datetime] NULL,
	[nSaleValue] [decimal](9, 4) NULL,
	[nSaleValueExcVat] [decimal](9, 4) NULL,
	[nComExcVat] [decimal](6, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCorrespondence]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCorrespondence](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nProductCategoryId] [int] NOT NULL,
	[nProductCorrespondence] [int] NOT NULL,
	[nProductSupplierId] [int] NOT NULL,
	[nCom] [decimal](6, 4) NOT NULL,
	[nValue] [decimal](6, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupportContact]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupportContact](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sLastName] [nvarchar](50) NULL,
	[sFirstName] [nvarchar](50) NULL,
	[sMail] [nvarchar](50) NULL,
	[sGSM] [nvarchar](50) NULL,
	[sSupportType] [nvarchar](50) NULL,
	[partner_id] [int] NULL,
	[sEmail] [nvarchar](50) NULL,
	[redAlertEnabled] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComListProd]    Script Date: 09/08/2015 09:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComListProd](
	[nid] [int] IDENTITY(1,1) NOT NULL,
	[nComlistID] [int] NULL,
	[nProductCategoryId] [int] NULL,
	[ncom] [decimal](6, 4) NULL,
	[nvalue] [decimal](9, 4) NULL,
	[dinsertion] [datetime] NULL,
	[nSaleValue] [decimal](9, 4) NULL,
	[nSaleValueExcVat] [decimal](9, 4) NULL,
	[nComExcVat] [decimal](6, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Default [DF_AppUpdate_dInsert]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[AppUpdate] ADD  CONSTRAINT [DF_AppUpdate_dInsert]  DEFAULT (getdate()) FOR [dInsert]
GO
/****** Object:  Default [DF_ComListProd_dinsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[ComListProd] ADD  CONSTRAINT [DF_ComListProd_dinsertion]  DEFAULT (getdate()) FOR [dinsertion]
GO
/****** Object:  Default [DF_Company_bActive]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_bActive]  DEFAULT ((1)) FOR [bActive]
GO
/****** Object:  Default [DF_Company_nBalance]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_nBalance]  DEFAULT ((0)) FOR [nBalance]
GO
/****** Object:  Default [DF_Company_nInvoicingTypeId]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_nInvoicingTypeId]  DEFAULT (N'(Agent)') FOR [sInvoiceType]
GO
/****** Object:  Default [DF_Company_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_Company_dLastModification]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_dLastModification]  DEFAULT (getdate()) FOR [dLastModification]
GO
/****** Object:  Default [DF_Company_bContractActive]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_bContractActive]  DEFAULT ((1)) FOR [bContractActive]
GO
/****** Object:  Default [DF_CompanyCont_bActive]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[CompanyCont] ADD  CONSTRAINT [DF_CompanyCont_bActive]  DEFAULT ((1)) FOR [bActive]
GO
/****** Object:  Default [DF_CompanyCont_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[CompanyCont] ADD  CONSTRAINT [DF_CompanyCont_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_CompanyCont_dLastModification]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[CompanyCont] ADD  CONSTRAINT [DF_CompanyCont_dLastModification]  DEFAULT (getdate()) FOR [dLastModification]
GO
/****** Object:  Default [DF_CompanyTest_bActive]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[CompanyTest] ADD  CONSTRAINT [DF_CompanyTest_bActive]  DEFAULT ((1)) FOR [bActive]
GO
/****** Object:  Default [DF_CompanyTest_nBalance]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[CompanyTest] ADD  CONSTRAINT [DF_CompanyTest_nBalance]  DEFAULT ((0)) FOR [nBalance]
GO
/****** Object:  Default [DF_CompanyTest_nInvoicingTypeId]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[CompanyTest] ADD  CONSTRAINT [DF_CompanyTest_nInvoicingTypeId]  DEFAULT (N'(Agent)') FOR [sInvoiceType]
GO
/****** Object:  Default [DF_CompanyTest_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[CompanyTest] ADD  CONSTRAINT [DF_CompanyTest_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_CompanyTest_dLastModification]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[CompanyTest] ADD  CONSTRAINT [DF_CompanyTest_dLastModification]  DEFAULT (getdate()) FOR [dLastModification]
GO
/****** Object:  Default [DF_CompanyTest_bContractActive]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[CompanyTest] ADD  CONSTRAINT [DF_CompanyTest_bContractActive]  DEFAULT ((1)) FOR [bContractActive]
GO
/****** Object:  Default [DF_CurrencyExchangeRate_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[CurrencyExchangeRate] ADD  CONSTRAINT [DF_CurrencyExchangeRate_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_Documents_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Documents] ADD  CONSTRAINT [DF_Documents_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_FinCashRef_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[FinCashRef] ADD  CONSTRAINT [DF_FinCashRef_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_FinCashRef_bActive]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[FinCashRef] ADD  CONSTRAINT [DF_FinCashRef_bActive]  DEFAULT ((1)) FOR [bActive]
GO
/****** Object:  Default [DF_findTrans_Data1]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[findTrans] ADD  CONSTRAINT [DF_findTrans_Data1]  DEFAULT ((0)) FOR [Data1]
GO
/****** Object:  Default [DF_findTrans_Data2]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[findTrans] ADD  CONSTRAINT [DF_findTrans_Data2]  DEFAULT ((73)) FOR [Data2]
GO
/****** Object:  Default [DF_FinOp_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[FinOp] ADD  CONSTRAINT [DF_FinOp_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_FinOp_bActive]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[FinOp] ADD  CONSTRAINT [DF_FinOp_bActive]  DEFAULT ((1)) FOR [bActive]
GO
/****** Object:  Default [DF_FinProduct_bActive]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[FinProduct] ADD  CONSTRAINT [DF_FinProduct_bActive]  DEFAULT ((1)) FOR [bActive]
GO
/****** Object:  Default [DF_FinProduct_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[FinProduct] ADD  CONSTRAINT [DF_FinProduct_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_FinProduct_dLastModification]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[FinProduct] ADD  CONSTRAINT [DF_FinProduct_dLastModification]  DEFAULT (getdate()) FOR [dLastModification]
GO
/****** Object:  Default [DF_InvoiceType_sType]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[InvoiceType] ADD  CONSTRAINT [DF_InvoiceType_sType]  DEFAULT (N'Agent') FOR [sType]
GO
/****** Object:  Default [DF_MobAccess_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[MobAccess] ADD  CONSTRAINT [DF_MobAccess_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_MobileMoney_bmodify]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[MobileMoney] ADD  CONSTRAINT [DF_MobileMoney_bmodify]  DEFAULT ((0)) FOR [bmodify]
GO
/****** Object:  Default [DF_MobErrorCode_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[MobMessages] ADD  CONSTRAINT [DF_MobErrorCode_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_MobErrorCode_dLastModification]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[MobMessages] ADD  CONSTRAINT [DF_MobErrorCode_dLastModification]  DEFAULT (getdate()) FOR [dLastModification]
GO
/****** Object:  Default [DF_MonetyContact_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[MonetyContact] ADD  CONSTRAINT [DF_MonetyContact_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_ServiceMpostPrice_nBilled]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[MpostExtraService] ADD  CONSTRAINT [DF_ServiceMpostPrice_nBilled]  DEFAULT ((0)) FOR [nBilled]
GO
/****** Object:  Default [DF_MpostReload_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[MpostReload] ADD  CONSTRAINT [DF_MpostReload_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_MpostReload_bActive]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[MpostReload] ADD  CONSTRAINT [DF_MpostReload_bActive]  DEFAULT ((0)) FOR [bActive]
GO
/****** Object:  Default [DF_MpostReload_bused]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[MpostReload] ADD  CONSTRAINT [DF_MpostReload_bused]  DEFAULT ((0)) FOR [bused]
GO
/****** Object:  Default [DF_MpostReload_bDelivered]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[MpostReload] ADD  CONSTRAINT [DF_MpostReload_bDelivered]  DEFAULT ((0)) FOR [bDelivered]
GO
/****** Object:  Default [DF_OMSProduct_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[OMSProduct] ADD  CONSTRAINT [DF_OMSProduct_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_OMSProduct_bUpdate]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[OMSProduct] ADD  CONSTRAINT [DF_OMSProduct_bUpdate]  DEFAULT ((1)) FOR [bUpdate]
GO
/****** Object:  Default [DF_OMSProductCategory_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[OMSProductCategory] ADD  CONSTRAINT [DF_OMSProductCategory_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_OMSProductCategory_bUpdate]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[OMSProductCategory] ADD  CONSTRAINT [DF_OMSProductCategory_bUpdate]  DEFAULT ((1)) FOR [bUpdate]
GO
/****** Object:  Default [DF_OMSSupplier_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[OMSSupplier] ADD  CONSTRAINT [DF_OMSSupplier_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_OMSSupplier_bUpdate]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[OMSSupplier] ADD  CONSTRAINT [DF_OMSSupplier_bUpdate]  DEFAULT ((1)) FOR [bUpdate]
GO
/****** Object:  Default [DF_OnNetTransaction_dTime]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[OnNetTransaction] ADD  CONSTRAINT [DF_OnNetTransaction_dTime]  DEFAULT (getdate()) FOR [dTime]
GO
/****** Object:  Default [DF_PassportMobileAccess_bActive]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Pass2PayAccess] ADD  CONSTRAINT [DF_PassportMobileAccess_bActive]  DEFAULT ((1)) FOR [bActive]
GO
/****** Object:  Default [DF_PassportMobileAccess_bSuspended]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Pass2PayAccess] ADD  CONSTRAINT [DF_PassportMobileAccess_bSuspended]  DEFAULT ((0)) FOR [bSuspended]
GO
/****** Object:  Default [DF_PassportMobileAccess_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Pass2PayAccess] ADD  CONSTRAINT [DF_PassportMobileAccess_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_PassportMobileDBMapping_bSame]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Pass2PayDBMapping] ADD  CONSTRAINT [DF_PassportMobileDBMapping_bSame]  DEFAULT ((1)) FOR [bSame]
GO
/****** Object:  Default [DF_PassportMobileDBMapping_bSub]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Pass2PayDBMapping] ADD  CONSTRAINT [DF_PassportMobileDBMapping_bSub]  DEFAULT ((0)) FOR [bSub]
GO
/****** Object:  Default [DF_PassportMobileDBUpdate_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Pass2PayDBUpdate] ADD  CONSTRAINT [DF_PassportMobileDBUpdate_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_PassportMobileVersion_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Pass2PayDBVersion] ADD  CONSTRAINT [DF_PassportMobileVersion_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_PassportMobileMonitoring_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Pass2PayMonitoring] ADD  CONSTRAINT [DF_PassportMobileMonitoring_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_PassportmobilePass_bActive]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Pass2PayPass] ADD  CONSTRAINT [DF_PassportmobilePass_bActive]  DEFAULT ((0)) FOR [bActive]
GO
/****** Object:  Default [DF_PassportmobilePass_bsuspended]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Pass2PayPass] ADD  CONSTRAINT [DF_PassportmobilePass_bsuspended]  DEFAULT ((0)) FOR [bSuspended]
GO
/****** Object:  Default [DF_PassportmobilePass_bLinked]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Pass2PayPass] ADD  CONSTRAINT [DF_PassportmobilePass_bLinked]  DEFAULT ((0)) FOR [bLinked]
GO
/****** Object:  Default [DF_PassportMobileSession_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Pass2PaySession] ADD  CONSTRAINT [DF_PassportMobileSession_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_PassportMobileVesrions_dInsertion]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Pass2PayVersions] ADD  CONSTRAINT [DF_PassportMobileVesrions_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_PassportMobileVesrions_bMandatory]    Script Date: 09/08/2015 09:23:28 ******/
ALTER TABLE [dbo].[Pass2PayVersions] ADD  CONSTRAINT [DF_PassportMobileVesrions_bMandatory]  DEFAULT ((0)) FOR [bMandatory]
GO
/****** Object:  Default [DF_Product_bPassportMobile]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_bPassportMobile]  DEFAULT ((1)) FOR [bPass2Pay]
GO
/****** Object:  Default [DF_Product_bActive]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_Product_bActive]  DEFAULT ((1)) FOR [bActive]
GO
/****** Object:  Default [DF_Prospect_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Prospect] ADD  CONSTRAINT [DF_Prospect_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_Prospect_bContracted]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Prospect] ADD  CONSTRAINT [DF_Prospect_bContracted]  DEFAULT ((0)) FOR [bContracted]
GO
/****** Object:  Default [DF_Prospect_nBoosted]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Prospect] ADD  CONSTRAINT [DF_Prospect_nBoosted]  DEFAULT ((0)) FOR [nBoosted]
GO
/****** Object:  Default [DF_ProspectBoost_dBoost]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[ProspectBoost] ADD  CONSTRAINT [DF_ProspectBoost_dBoost]  DEFAULT (getdate()) FOR [dBoost]
GO
/****** Object:  Default [DF_ReconLydec_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[ReconLydec] ADD  CONSTRAINT [DF_ReconLydec_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_ReconMeditel_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[ReconMeditel] ADD  CONSTRAINT [DF_ReconMeditel_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_ReconMeditel_bReconciled]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[ReconMeditel] ADD  CONSTRAINT [DF_ReconMeditel_bReconciled]  DEFAULT ((0)) FOR [bReconciled]
GO
/****** Object:  Default [DF_ReconMeditel_bSuccessReconciled]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[ReconMeditel] ADD  CONSTRAINT [DF_ReconMeditel_bSuccessReconciled]  DEFAULT ((0)) FOR [bSuccessReconciled]
GO
/****** Object:  Default [DF_ReconMeditelTest_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[ReconMeditelTest] ADD  CONSTRAINT [DF_ReconMeditelTest_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_ReconMeditelTest_bReconciled]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[ReconMeditelTest] ADD  CONSTRAINT [DF_ReconMeditelTest_bReconciled]  DEFAULT ((0)) FOR [bReconciled]
GO
/****** Object:  Default [DF_ReconMeditelTest_bSuccessReconciled]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[ReconMeditelTest] ADD  CONSTRAINT [DF_ReconMeditelTest_bSuccessReconciled]  DEFAULT ((0)) FOR [bSuccessReconciled]
GO
/****** Object:  Default [DF_RepBusinessGlobal_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[RepBusinessGlobal] ADD  CONSTRAINT [DF_RepBusinessGlobal_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_RepBusinessGlobal_bToRecalculate]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[RepBusinessGlobal] ADD  CONSTRAINT [DF_RepBusinessGlobal_bToRecalculate]  DEFAULT ((0)) FOR [bToRecalculate]
GO
/****** Object:  Default [DF_RepBusinessSummary_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[RepBusinessSummary] ADD  CONSTRAINT [DF_RepBusinessSummary_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_RepReload_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[RepReload] ADD  CONSTRAINT [DF_RepReload_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_RepTermProdCat_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[RepTermProdCat] ADD  CONSTRAINT [DF_RepTermProdCat_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_RepTermProdCat_bToRecalculate]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[RepTermProdCat] ADD  CONSTRAINT [DF_RepTermProdCat_bToRecalculate]  DEFAULT ((0)) FOR [bToRecalculate]
GO
/****** Object:  Default [DF_ResponseCodeTransaction_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[ResponseTracking] ADD  CONSTRAINT [DF_ResponseCodeTransaction_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_Reseller_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Reseller] ADD  CONSTRAINT [DF_Reseller_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_ResellerComListProd_dinsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[ResellerComListProd] ADD  CONSTRAINT [DF_ResellerComListProd_dinsertion]  DEFAULT (getdate()) FOR [dinsertion]
GO
/****** Object:  Default [DF_ResellerTest_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[ResellerTest] ADD  CONSTRAINT [DF_ResellerTest_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_ResellerTransaction_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[ResellerTransaction] ADD  CONSTRAINT [DF_ResellerTransaction_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_ResellerTransactionsTest_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[ResellerTransactionsTest] ADD  CONSTRAINT [DF_ResellerTransactionsTest_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_Service_bPassportMobile]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [DF_Service_bPassportMobile]  DEFAULT ((1)) FOR [bPass2pay]
GO
/****** Object:  Default [DF_Shop1_bactive]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Shop] ADD  CONSTRAINT [DF_Shop1_bactive]  DEFAULT ((1)) FOR [bactive]
GO
/****** Object:  Default [DF_Shop1_ddateinsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Shop] ADD  CONSTRAINT [DF_Shop1_ddateinsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_Shop_bContractActive]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Shop] ADD  CONSTRAINT [DF_Shop_bContractActive]  DEFAULT ((1)) FOR [bContractActive]
GO
/****** Object:  Default [DF_Shop_nBalance]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Shop] ADD  CONSTRAINT [DF_Shop_nBalance]  DEFAULT ((0)) FOR [nBalance]
GO
/****** Object:  Default [DF_SMS_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[SMS] ADD  CONSTRAINT [DF_SMS_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_TelefloussCustomer_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TelefloussCustomer] ADD  CONSTRAINT [DF_TelefloussCustomer_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_TelefloussCustomer_bActive]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TelefloussCustomer] ADD  CONSTRAINT [DF_TelefloussCustomer_bActive]  DEFAULT ((1)) FOR [bActive]
GO
/****** Object:  Default [DF_TelefloussTag_bLinked]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TelefloussTag] ADD  CONSTRAINT [DF_TelefloussTag_bLinked]  DEFAULT ((0)) FOR [bLinked]
GO
/****** Object:  Default [DF_TelefloussTag_nTries]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TelefloussTag] ADD  CONSTRAINT [DF_TelefloussTag_nTries]  DEFAULT ((0)) FOR [nTries]
GO
/****** Object:  Default [DF_TelefloussTag_bActive]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TelefloussTag] ADD  CONSTRAINT [DF_TelefloussTag_bActive]  DEFAULT ((1)) FOR [bActive]
GO
/****** Object:  Default [DF_TelefloussTerminalTransaction_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TelefloussTerminalTransaction] ADD  CONSTRAINT [DF_TelefloussTerminalTransaction_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_TelefloussTransaction_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TelefloussTransaction] ADD  CONSTRAINT [DF_TelefloussTransaction_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_Terminal_bActiveConvention]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Terminal] ADD  CONSTRAINT [DF_Terminal_bActiveConvention]  DEFAULT ((1)) FOR [bActiveConvention]
GO
/****** Object:  Default [DF_Terminal_bActive]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Terminal] ADD  CONSTRAINT [DF_Terminal_bActive]  DEFAULT ((1)) FOR [bActive]
GO
/****** Object:  Default [DF_Terminal_ddateinsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Terminal] ADD  CONSTRAINT [DF_Terminal_ddateinsertion]  DEFAULT (getdate()) FOR [dIinsertion]
GO
/****** Object:  Default [DF_Terminal_bModify]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Terminal] ADD  CONSTRAINT [DF_Terminal_bModify]  DEFAULT ((0)) FOR [bModify]
GO
/****** Object:  Default [DF_Terminal_nReloadTries]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Terminal] ADD  CONSTRAINT [DF_Terminal_nReloadTries]  DEFAULT ((0)) FOR [nReloadTries]
GO
/****** Object:  Default [DF_Terminal_breprint]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Terminal] ADD  CONSTRAINT [DF_Terminal_breprint]  DEFAULT ((0)) FOR [breprint]
GO
/****** Object:  Default [DF_TerminalSer_nPrint]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TerminalSer] ADD  CONSTRAINT [DF_TerminalSer_nPrint]  DEFAULT ((0)) FOR [nPrint]
GO
/****** Object:  Default [DF_TerminalSSS_bActive]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TerminalSSS] ADD  CONSTRAINT [DF_TerminalSSS_bActive]  DEFAULT ((1)) FOR [bActive]
GO
/****** Object:  Default [DF_TerminalStock_bActive]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TerminalStock] ADD  CONSTRAINT [DF_TerminalStock_bActive]  DEFAULT ((0)) FOR [bLinked]
GO
/****** Object:  Default [DF_TerminalStock_ddateinsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TerminalStock] ADD  CONSTRAINT [DF_TerminalStock_ddateinsertion]  DEFAULT (getdate()) FOR [ddateinsertion]
GO
/****** Object:  Default [DF_TiketoMerchantInfo_bApproved]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TiketoMerchantInfo] ADD  CONSTRAINT [DF_TiketoMerchantInfo_bApproved]  DEFAULT ((0)) FOR [bApproved]
GO
/****** Object:  Default [DF_TiketoTicket_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TiketoTicket] ADD  CONSTRAINT [DF_TiketoTicket_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_TouriDealCart_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TouriDealCart] ADD  CONSTRAINT [DF_TouriDealCart_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_TouriDealCart_bPaid]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TouriDealCart] ADD  CONSTRAINT [DF_TouriDealCart_bPaid]  DEFAULT ((0)) FOR [bPaid]
GO
/****** Object:  Default [DF_TouriDealCartProduct_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TouriDealCartProduct] ADD  CONSTRAINT [DF_TouriDealCartProduct_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_TouriDealCustomer_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TouriDealCustomer] ADD  CONSTRAINT [DF_TouriDealCustomer_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_TouriDealCustomer_bActive]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TouriDealCustomer] ADD  CONSTRAINT [DF_TouriDealCustomer_bActive]  DEFAULT ((1)) FOR [bActive]
GO
/****** Object:  Default [DF_TouriDealProduct_bSpecial]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TouriDealProduct] ADD  CONSTRAINT [DF_TouriDealProduct_bSpecial]  DEFAULT ((0)) FOR [bSpecial]
GO
/****** Object:  Default [DF_vouchervariable_datea]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Tracing] ADD  CONSTRAINT [DF_vouchervariable_datea]  DEFAULT (getdate()) FOR [datea]
GO
/****** Object:  Default [DF_TransactionFsh_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TransactionFsh] ADD  CONSTRAINT [DF_TransactionFsh_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_TransactionFsh_bOnNet]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TransactionFsh] ADD  CONSTRAINT [DF_TransactionFsh_bOnNet]  DEFAULT ((0)) FOR [bOnNet]
GO
/****** Object:  Default [DF_TransactionOnGoing_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TransactionOnGoing] ADD  CONSTRAINT [DF_TransactionOnGoing_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_Transactions_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Transactions] ADD  CONSTRAINT [DF_Transactions_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_Transactions_bOnNet]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Transactions] ADD  CONSTRAINT [DF_Transactions_bOnNet]  DEFAULT ((0)) FOR [bOnNet]
GO
/****** Object:  Default [DF_TransactionsPreCancelled_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TransactionsPreCancelled] ADD  CONSTRAINT [DF_TransactionsPreCancelled_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_TransactionsTest_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TransactionsTest] ADD  CONSTRAINT [DF_TransactionsTest_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_TransactionsTest_bOnNet]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[TransactionsTest] ADD  CONSTRAINT [DF_TransactionsTest_bOnNet]  DEFAULT ((0)) FOR [bOnNet]
GO
/****** Object:  Default [DF_Unipay_bModify]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Unipay] ADD  CONSTRAINT [DF_Unipay_bModify]  DEFAULT ((0)) FOR [bModify]
GO
/****** Object:  Default [DF_UP_Amendis1_bProceeded]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Amendis] ADD  CONSTRAINT [DF_UP_Amendis1_bProceeded]  DEFAULT ((0)) FOR [bProceeded]
GO
/****** Object:  Default [DF_UP_Amendis_bExported]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Amendis] ADD  CONSTRAINT [DF_UP_Amendis_bExported]  DEFAULT ((0)) FOR [bExported]
GO
/****** Object:  Default [DF_UP_AmendisTest_bProceeded]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_AmendisTest] ADD  CONSTRAINT [DF_UP_AmendisTest_bProceeded]  DEFAULT ((0)) FOR [bProceeded]
GO
/****** Object:  Default [DF_UP_AmendisTest_bExported]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_AmendisTest] ADD  CONSTRAINT [DF_UP_AmendisTest_bExported]  DEFAULT ((0)) FOR [bExported]
GO
/****** Object:  Default [DF_UP_Lydec_bProceeded]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Lydec] ADD  CONSTRAINT [DF_UP_Lydec_bProceeded]  DEFAULT ((0)) FOR [bProceeded]
GO
/****** Object:  Default [DF_UP_Lydec_bExported]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Lydec] ADD  CONSTRAINT [DF_UP_Lydec_bExported]  DEFAULT ((0)) FOR [bExported]
GO
/****** Object:  Default [DF_UP_Lydec_Unique_bOk]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Lydec_Unique] ADD  CONSTRAINT [DF_UP_Lydec_Unique_bOk]  DEFAULT ((0)) FOR [bOk]
GO
/****** Object:  Default [DF_UP_Lydec_Unique_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Lydec_Unique] ADD  CONSTRAINT [DF_UP_Lydec_Unique_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_UP_Lydec_Unique_bReconDone]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Lydec_Unique] ADD  CONSTRAINT [DF_UP_Lydec_Unique_bReconDone]  DEFAULT ((0)) FOR [bReconDone]
GO
/****** Object:  Default [DF_UP_MarocTelecom_bProceeded]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_MarocTelecom] ADD  CONSTRAINT [DF_UP_MarocTelecom_bProceeded]  DEFAULT ((0)) FOR [bProceeded]
GO
/****** Object:  Default [DF_UP_MarocTelecom_bExported]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_MarocTelecom] ADD  CONSTRAINT [DF_UP_MarocTelecom_bExported]  DEFAULT ((0)) FOR [bExported]
GO
/****** Object:  Default [DF_UP_Radeel_DATA10]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Radeel] ADD  CONSTRAINT [DF_UP_Radeel_DATA10]  DEFAULT ((0)) FOR [DATA10]
GO
/****** Object:  Default [DF_UP_Radeel_bProceeded]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Radeel] ADD  CONSTRAINT [DF_UP_Radeel_bProceeded]  DEFAULT ((0)) FOR [bProceeded]
GO
/****** Object:  Default [DF_UP_Radeel_bExported]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Radeel] ADD  CONSTRAINT [DF_UP_Radeel_bExported]  DEFAULT ((0)) FOR [bExported]
GO
/****** Object:  Default [DF_UP_Radeel_nStampDuty]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Radeel] ADD  CONSTRAINT [DF_UP_Radeel_nStampDuty]  DEFAULT ((0)) FOR [nStampDuty]
GO
/****** Object:  Default [DF_UP_Radeel_nSequence]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Radeel] ADD  CONSTRAINT [DF_UP_Radeel_nSequence]  DEFAULT ((0)) FOR [nSequence]
GO
/****** Object:  Default [DF_UP_RadeelTest_DATA10]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_RadeelTest] ADD  CONSTRAINT [DF_UP_RadeelTest_DATA10]  DEFAULT ((0)) FOR [DATA10]
GO
/****** Object:  Default [DF_UP_Radeeltest_bProceeded]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_RadeelTest] ADD  CONSTRAINT [DF_UP_Radeeltest_bProceeded]  DEFAULT ((0)) FOR [bProceeded]
GO
/****** Object:  Default [DF_UP_Radeeltest_bExported]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_RadeelTest] ADD  CONSTRAINT [DF_UP_Radeeltest_bExported]  DEFAULT ((0)) FOR [bExported]
GO
/****** Object:  Default [DF_UP_Radeeltest_nStampDuty]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_RadeelTest] ADD  CONSTRAINT [DF_UP_Radeeltest_nStampDuty]  DEFAULT ((0)) FOR [nStampDuty]
GO
/****** Object:  Default [DF_UP_Radeeltest_nSequence]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_RadeelTest] ADD  CONSTRAINT [DF_UP_Radeeltest_nSequence]  DEFAULT ((0)) FOR [nSequence]
GO
/****** Object:  Default [DF_UP_Radeema_bProceeded]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Radeema] ADD  CONSTRAINT [DF_UP_Radeema_bProceeded]  DEFAULT ((0)) FOR [bProceeded]
GO
/****** Object:  Default [DF_UP_Radeema_bExported]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Radeema] ADD  CONSTRAINT [DF_UP_Radeema_bExported]  DEFAULT ((0)) FOR [bExported]
GO
/****** Object:  Default [DF_UP_RadeemaTest_bProceeded]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_RadeemaTest] ADD  CONSTRAINT [DF_UP_RadeemaTest_bProceeded]  DEFAULT ((0)) FOR [bProceeded]
GO
/****** Object:  Default [DF_UP_RadeemaTest_bExported]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_RadeemaTest] ADD  CONSTRAINT [DF_UP_RadeemaTest_bExported]  DEFAULT ((0)) FOR [bExported]
GO
/****** Object:  Default [DF_UP_Ramsa_bProceeded]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Ramsa] ADD  CONSTRAINT [DF_UP_Ramsa_bProceeded]  DEFAULT ((0)) FOR [bProceeded]
GO
/****** Object:  Default [DF_UP_Ramsa_bExported]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Ramsa] ADD  CONSTRAINT [DF_UP_Ramsa_bExported]  DEFAULT ((0)) FOR [bExported]
GO
/****** Object:  Default [DF_UP_RamsaTest_bProceeded]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_RamsaTest] ADD  CONSTRAINT [DF_UP_RamsaTest_bProceeded]  DEFAULT ((0)) FOR [bProceeded]
GO
/****** Object:  Default [DF_UP_RamsaTest_bExported]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_RamsaTest] ADD  CONSTRAINT [DF_UP_RamsaTest_bExported]  DEFAULT ((0)) FOR [bExported]
GO
/****** Object:  Default [DF_UP_Radel_bProceeded]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Redal] ADD  CONSTRAINT [DF_UP_Radel_bProceeded]  DEFAULT ((0)) FOR [bProceeded]
GO
/****** Object:  Default [DF_UP_Radel_bExported]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Redal] ADD  CONSTRAINT [DF_UP_Radel_bExported]  DEFAULT ((0)) FOR [bExported]
GO
/****** Object:  Default [DF_UP_Redal_nSequence]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_Redal] ADD  CONSTRAINT [DF_UP_Redal_nSequence]  DEFAULT ((0)) FOR [nSequence]
GO
/****** Object:  Default [DF_UP_RedalTest_bProceeded]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_RedalTest] ADD  CONSTRAINT [DF_UP_RedalTest_bProceeded]  DEFAULT ((0)) FOR [bProceeded]
GO
/****** Object:  Default [DF_UP_RedalTest_bExported]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UP_RedalTest] ADD  CONSTRAINT [DF_UP_RedalTest_bExported]  DEFAULT ((0)) FOR [bExported]
GO
/****** Object:  Default [DF_UpdateDb_bFirst]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UpdateDb] ADD  CONSTRAINT [DF_UpdateDb_bFirst]  DEFAULT ((0)) FOR [bFirst]
GO
/****** Object:  Default [DF_UpdateDb_bDownloaded]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UpdateDb] ADD  CONSTRAINT [DF_UpdateDb_bDownloaded]  DEFAULT ((0)) FOR [bDownloaded]
GO
/****** Object:  Default [DF_UpdateDb_dinsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[UpdateDb] ADD  CONSTRAINT [DF_UpdateDb_dinsertion]  DEFAULT (getdate()) FOR [dinsertion]
GO
/****** Object:  Default [DF_Voucher_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Voucher] ADD  CONSTRAINT [DF_Voucher_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_Voucher_bUsed]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Voucher] ADD  CONSTRAINT [DF_Voucher_bUsed]  DEFAULT ((0)) FOR [bUsed]
GO
/****** Object:  Default [DF_Voucher_sDestFile]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Voucher] ADD  CONSTRAINT [DF_Voucher_sDestFile]  DEFAULT ((0)) FOR [sDestFile]
GO
/****** Object:  Default [DF_Voucher_bMain]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Voucher] ADD  CONSTRAINT [DF_Voucher_bMain]  DEFAULT ((1)) FOR [bMain]
GO
/****** Object:  Default [DF_Voucher_bOnNet]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[Voucher] ADD  CONSTRAINT [DF_Voucher_bOnNet]  DEFAULT ((0)) FOR [bOnNet]
GO
/****** Object:  Default [DF_VoucherBackup_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[VoucherBackup] ADD  CONSTRAINT [DF_VoucherBackup_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_VoucherBackup_bUsed]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[VoucherBackup] ADD  CONSTRAINT [DF_VoucherBackup_bUsed]  DEFAULT ((0)) FOR [bUsed]
GO
/****** Object:  Default [DF_VoucherTest_dInsertion]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[VoucherTest] ADD  CONSTRAINT [DF_VoucherTest_dInsertion]  DEFAULT (getdate()) FOR [dInsertion]
GO
/****** Object:  Default [DF_VoucherTest_bUsed]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[VoucherTest] ADD  CONSTRAINT [DF_VoucherTest_bUsed]  DEFAULT ((0)) FOR [bUsed]
GO
/****** Object:  Default [DF_VoucherTest_sDestFile]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[VoucherTest] ADD  CONSTRAINT [DF_VoucherTest_sDestFile]  DEFAULT ((0)) FOR [sDestFile]
GO
/****** Object:  Default [DF_VoucherTest_bMain]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[VoucherTest] ADD  CONSTRAINT [DF_VoucherTest_bMain]  DEFAULT ((1)) FOR [bMain]
GO
/****** Object:  Default [DF_VoucherTest_bOnNet]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[VoucherTest] ADD  CONSTRAINT [DF_VoucherTest_bOnNet]  DEFAULT ((0)) FOR [bOnNet]
GO
/****** Object:  ForeignKey [FK5EDA7171263CA6D]    Script Date: 09/08/2015 09:23:29 ******/
ALTER TABLE [dbo].[SupportContact]  WITH CHECK ADD  CONSTRAINT [FK5EDA7171263CA6D] FOREIGN KEY([partner_id])
REFERENCES [dbo].[JT_Partner] ([id])
GO
ALTER TABLE [dbo].[SupportContact] CHECK CONSTRAINT [FK5EDA7171263CA6D]
GO
