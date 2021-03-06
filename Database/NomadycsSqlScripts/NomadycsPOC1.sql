
GO
/****** Object:  Table [dbo].[Location]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Location](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Language]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Language](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
	[Description] [nvarchar](128) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobType]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_JobType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[Code] [char](3) NOT NULL,
	[IsBrand] [bit] NOT NULL,
	[IsProofRequired] [bit] NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[Status] [char](1) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentContent]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentContent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContentType] [varchar](64) NOT NULL,
	[FileID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_DocumentContent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FieldServiceCompany]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FieldServiceCompany](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](256) NOT NULL,
	[MaxUsers] [int] NULL,
	[AccessType] [char](1) NOT NULL,
	[Status] [char](10) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_FieldServiceCompany] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Folio]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Folio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Code] [varchar](64) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_Folio] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FileContent]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FileContent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FileContent] [nvarchar](max) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_FileContent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fuel]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fuel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_Fuel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManufacturerGroup]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ManufacturerGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[Code] [varchar](3) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_ManufacturerGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Market]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Market](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_Market] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_DocumentType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartFieldServiceCompanySpecific]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartFieldServiceCompanySpecific](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartCode] [varchar](64) NOT NULL,
	[FieldServiceCompanyCode] [char](3) NOT NULL,
	[CatalogNo] [varchar](64) NULL,
	[IsOverWeight] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_PartFieldServiceCompanySpecific] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Part]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Part](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Code] [varchar](64) NOT NULL,
	[Height] [int] NULL,
	[Width] [int] NULL,
	[Depth] [int] NULL,
	[Weight] [int] NULL,
	[CatalogNo] [varchar](64) NULL,
	[Status] [char](1) NOT NULL,
	[IsOverWeight] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_Part] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsList]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartsList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Code] [varchar](64) NOT NULL,
	[IssueDate] [datetime2](7) NULL,
	[IssueNo] [int] NULL,
	[ManRefNo] [varchar](64) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_PartsList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TradeCounter]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TradeCounter](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[Status] [char](1) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_TradeCounter] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](64) NULL,
	[LastName] [nvarchar](64) NULL,
	[Username] [varchar](32) NOT NULL,
	[Password] [varchar](130) NOT NULL,
	[Email] [varchar](64) NULL,
	[UserStatus] [char](1) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stockist]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stockist](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[Code] [char](1) NOT NULL,
	[Status] [char](1) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_Stockist] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Resource]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Resource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_Resource] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](32) NOT NULL,
	[Description] [varchar](64) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permission](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[Description] [varchar](256) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartSuperSession]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartSuperSession](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OldManufacturerPartNo] [varchar](64) NOT NULL,
	[NewManufacturerPartNo] [varchar](64) NOT NULL,
	[ManufacturerGroupCode] [char](3) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_PartSuperSession] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartStockistSpecific]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartStockistSpecific](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartCode] [varchar](64) NOT NULL,
	[StockistCode] [char](3) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Price] [decimal](10, 2) NULL,
	[Image] [int] NULL,
	[CatalogNo] [varchar](64) NULL,
	[Status] [char](1) NOT NULL,
	[SupplierCode] [varchar](64) NULL,
	[IsOverWeight] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_PartStockistSpecific] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsListSection]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartsListSection](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartsListCode] [varchar](64) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Map] [varchar](max) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NULL,
 CONSTRAINT [PK_PartsListSection] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsListPartsListSection]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartsListPartsListSection](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartsListID] [int] NOT NULL,
	[PartsListSectionID] [int] NOT NULL,
	[Sequence] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_PartsListPartsListSection] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsListML]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartsListML](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartsListID] [int] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_PartsListML] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsListSectionRow]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartsListSectionRow](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartsListSectionID] [int] NOT NULL,
	[PartManufacturerSpecificCode] [varchar](64) NULL,
	[ItemKey] [varchar](16) NOT NULL,
	[Quantity] [int] NULL,
	[Remarks] [nvarchar](256) NULL,
	[Sequence] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_PartsListSectionRow] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsListSectionML]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartsListSectionML](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartsListSectionID] [int] NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_PartsListSectionML] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductSubType]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductSubType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeID] [int] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_ProductSubType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductRange]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductRange](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerID] [int] NOT NULL,
	[Name] [varchar](128) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_ProductRange] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ResourcePermission]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ResourcePermission](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ResourceID] [int] NOT NULL,
	[PermissionID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_ResourcePermission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockistLanguage]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockistLanguage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StockistID] [int] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[IsPrimaryLanguage] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_StockistLanguage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartFolio]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartFolio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartID] [int] NOT NULL,
	[FolioID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_PartFolio] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductTypeML]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductTypeML](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeID] [int] NOT NULL,
	[Name] [nvarchar](128) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_ProductTypeML] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TradeCounterManufacturerGroup]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TradeCounterManufacturerGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TradeCounterID] [int] NOT NULL,
	[ManufacturerGroupID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_TradeCounterManufacturerGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TradeCounterLanguage]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TradeCounterLanguage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TradeCounterID] [int] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[IsPrimaryLanguage] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_TradeCounterLanguage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartManufacturerSpecific]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartManufacturerSpecific](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Code] [varchar](64) NULL,
	[PartCode] [varchar](64) NOT NULL,
	[ManufacturerCode] [char](3) NOT NULL,
	[ManufacturerPartNo] [varchar](64) NOT NULL,
	[Price] [decimal](10, 2) NULL,
	[Image] [int] NULL,
	[Status] [char](1) NOT NULL,
	[FolioID] [int] NULL,
	[IsOverWeight] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_PartManufacturerSpecific] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MarketML]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MarketML](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MarketID] [int] NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_MarketML] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FuelML]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FuelML](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FuelID] [int] NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_FuelML] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentML]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentML](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[DocumentContentID] [int] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_DocumentML] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManufacturerProductType]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ManufacturerProductType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerID] [int] NOT NULL,
	[ProductTypeID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_ManufacturerProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManufacturerLanguage]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ManufacturerLanguage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerID] [int] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[IsPrimaryLanguage] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_ManufacturerLanguage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManufacturerGroupManufacturer]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ManufacturerGroupManufacturer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerGroupID] [int] NOT NULL,
	[ManufacturerID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_ManufacturerGroupManufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManufacturerGraphic]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ManufacturerGraphic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerID] [int] NOT NULL,
	[GraphicID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_ManufacturerGraphic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FolioML]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FolioML](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FolioID] [int] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_FolioML] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[File]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[File](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Checksum] [varchar](130) NOT NULL,
	[FileSize] [int] NULL,
	[MIMEType] [varchar](64) NOT NULL,
	[FileContentID] [int] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_File] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FieldServiceCompanyStockist]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FieldServiceCompanyStockist](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FieldServiceCompanyID] [int] NOT NULL,
	[StockistID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_FieldServiceCompanyStockist] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FieldServiceCompanyLanguage]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FieldServiceCompanyLanguage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FieldServiceCompanyID] [int] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[IsPrimaryLanguage] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_FieldServiceCompanyLanguage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentTypeML]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentTypeML](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DocumentTypeID] [int] NOT NULL,
	[Name] [nvarchar](128) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_DocumentTypeML] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Document]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Document](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Code] [varchar](64) NOT NULL,
	[DocumentTypeID] [int] NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[DocumentContentID] [int] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LocationML]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LocationML](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LocationID] [int] NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_LocationML] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Job]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Job](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[Code] [varchar](64) NOT NULL,
	[JobTypeID] [int] NOT NULL,
	[Priority] [char](1) NOT NULL,
	[JobStatus] [char](1) NOT NULL,
	[Description] [varchar](1024) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Graphic]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Graphic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Height] [int] NOT NULL,
	[Width] [int] NOT NULL,
	[ColorDepth] [int] NULL,
	[FrameCount] [int] NULL,
	[ContentType] [varchar](64) NOT NULL,
	[FileID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_Graphic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FolioDocument]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FolioDocument](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FolioID] [int] NOT NULL,
	[DocumentID] [int] NOT NULL,
	[Sequence] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_FolioDocument] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Model]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Model](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](128) NOT NULL,
	[ProductTypeID] [int] NOT NULL,
	[ProductSubTypeID] [int] NULL,
	[Code] [varchar](64) NOT NULL,
	[ModelNo] [varchar](64) NULL,
	[StartProduction] [datetime2](7) NULL,
	[EndProduction] [datetime2](7) NULL,
	[IndustrySpecific] [nvarchar](2048) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoleTradeCounter]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRoleTradeCounter](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleID] [int] NOT NULL,
	[TradeCounterID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_UserRoleTradeCounter] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoleStockist]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRoleStockist](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleID] [int] NOT NULL,
	[StockistID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_UserRoleStockist] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoleManufacturerGroup]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRoleManufacturerGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleID] [int] NOT NULL,
	[ManufacturerGroupID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_UserRoleManufacturerGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoleManufacturer]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRoleManufacturer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleID] [int] NOT NULL,
	[ManufacturerID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_UserRoleManufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoleFieldServiceCompany]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRoleFieldServiceCompany](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleID] [int] NOT NULL,
	[FieldServiceCompanyID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_UserRoleFieldServiceCompany] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Task]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Task](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JobID] [int] NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[Code] [varchar](64) NOT NULL,
	[TaskStatus] [char](1) NOT NULL,
	[Description] [varchar](1024) NULL,
	[Priority] [char](1) NOT NULL,
	[AssignedTo] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleResourcePermission]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleResourcePermission](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[ResourcePermissionID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_RoleResourcePermission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductSubTypeML]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductSubTypeML](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductSubTypeID] [int] NOT NULL,
	[Name] [nvarchar](128) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_ProductSubTypeML] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsListSectionRowML]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartsListSectionRowML](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartsListSectionRowID] [int] NOT NULL,
	[Remarks] [nvarchar](256) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_PartsListSectionRowML] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsListSectionGraphic]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartsListSectionGraphic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartsListSectionID] [int] NOT NULL,
	[GraphicID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_PartsListSectionGraphic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartGraphic]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartGraphic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartID] [int] NOT NULL,
	[GraphicID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_PartGraphic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModelStockistSpecific]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModelStockistSpecific](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[StockistID] [int] NOT NULL,
	[ModelNo] [varchar](64) NULL,
	[PartNo] [varchar](64) NULL,
	[Price] [decimal](10, 2) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_ModelStockist] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModelPartsList]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModelPartsList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[PartsListID] [int] NOT NULL,
	[Sequence] [int] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_ModelPartsList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModelML]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModelML](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[IndustrySpecific] [nvarchar](2048) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
	[LangCode] [char](5) NOT NULL,
 CONSTRAINT [PK_ModelML] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModelGraphic]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModelGraphic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[GraphicID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_ModelGraphic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModelFolio]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModelFolio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[FolioID] [int] NOT NULL,
	[Sequence] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_ModelFolio] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModelBrandSpecific]    Script Date: 12/10/2014 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModelBrandSpecific](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[ManufacturerID] [int] NOT NULL,
	[Name] [varchar](128) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[RecordStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_ModelBrand] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_Document_IsPublic]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF_Document_IsPublic]  DEFAULT ((1)) FOR [IsPublic]
GO
/****** Object:  Default [DF_DocumentML_LangCode]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[DocumentML] ADD  CONSTRAINT [DF_DocumentML_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
/****** Object:  Default [DF_DocumentType_LangCode]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[DocumentType] ADD  CONSTRAINT [DF_DocumentType_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
/****** Object:  Default [DF_DocumentTypeML_LangCode]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[DocumentTypeML] ADD  CONSTRAINT [DF_DocumentTypeML_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
/****** Object:  Default [DF_FieldServiceCompany_AccessType]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[FieldServiceCompany] ADD  CONSTRAINT [DF_FieldServiceCompany_AccessType]  DEFAULT ('F') FOR [AccessType]
GO
/****** Object:  Default [DF_FieldServiceCompany_IsActive]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[FieldServiceCompany] ADD  CONSTRAINT [DF_FieldServiceCompany_IsActive]  DEFAULT ('A') FOR [Status]
GO
/****** Object:  Default [DF_FieldServiceCompanyLanguage_IsPrimaryLanguage]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[FieldServiceCompanyLanguage] ADD  CONSTRAINT [DF_FieldServiceCompanyLanguage_IsPrimaryLanguage]  DEFAULT ((0)) FOR [IsPrimaryLanguage]
GO
/****** Object:  Default [DF_Folio_LangCode]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Folio] ADD  CONSTRAINT [DF_Folio_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
/****** Object:  Default [DF_Fuel_LangCode]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Fuel] ADD  CONSTRAINT [DF_Fuel_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
/****** Object:  Default [DF_Location_LangCode]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
/****** Object:  Default [DF_LocationML_LangCode]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[LocationML] ADD  CONSTRAINT [DF_LocationML_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
/****** Object:  Default [DF_Manufacturer_IsBrand]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Manufacturer] ADD  CONSTRAINT [DF_Manufacturer_IsBrand]  DEFAULT ((0)) FOR [IsBrand]
GO
/****** Object:  Default [DF_Manufacturer_IsProofRequired]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Manufacturer] ADD  CONSTRAINT [DF_Manufacturer_IsProofRequired]  DEFAULT ((0)) FOR [IsProofRequired]
GO
/****** Object:  Default [DF_Manufacturer_Status]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Manufacturer] ADD  CONSTRAINT [DF_Manufacturer_Status]  DEFAULT ('A') FOR [Status]
GO
/****** Object:  Default [DF_ManufacturerLanguage_IsPrimaryLanguage]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ManufacturerLanguage] ADD  CONSTRAINT [DF_ManufacturerLanguage_IsPrimaryLanguage]  DEFAULT ((0)) FOR [IsPrimaryLanguage]
GO
/****** Object:  Default [DF_Market_LangCode]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Market] ADD  CONSTRAINT [DF_Market_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
/****** Object:  Default [DF_Model_LangCode]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Model] ADD  CONSTRAINT [DF_Model_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
/****** Object:  Default [DF_Part_Status]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Part] ADD  CONSTRAINT [DF_Part_Status]  DEFAULT ('U') FOR [Status]
GO
/****** Object:  Default [DF_PartManufacturerSpecific_Status]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartManufacturerSpecific] ADD  CONSTRAINT [DF_PartManufacturerSpecific_Status]  DEFAULT ('U') FOR [Status]
GO
/****** Object:  Default [DF_PartsList_LangCode]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartsList] ADD  CONSTRAINT [DF_PartsList_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
/****** Object:  Default [DF_PartsListSectionRow_Quantity]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartsListSectionRow] ADD  CONSTRAINT [DF_PartsListSectionRow_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
/****** Object:  Default [DF_PartStockistSpecific_Status]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartStockistSpecific] ADD  CONSTRAINT [DF_PartStockistSpecific_Status]  DEFAULT ('U') FOR [Status]
GO
/****** Object:  Default [DF_ProductSubType_LangCode]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ProductSubType] ADD  CONSTRAINT [DF_ProductSubType_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
/****** Object:  Default [DF_ProductType_LangCode]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ProductType] ADD  CONSTRAINT [DF_ProductType_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
/****** Object:  Default [DF_Stockist_Status]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Stockist] ADD  CONSTRAINT [DF_Stockist_Status]  DEFAULT ('A') FOR [Status]
GO
/****** Object:  Default [DF_Stockist_CurrencyCode]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Stockist] ADD  CONSTRAINT [DF_Stockist_CurrencyCode]  DEFAULT ('GBP') FOR [CurrencyCode]
GO
/****** Object:  Default [DF_StockistLanguage_IsPrimaryLanguage]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[StockistLanguage] ADD  CONSTRAINT [DF_StockistLanguage_IsPrimaryLanguage]  DEFAULT ((0)) FOR [IsPrimaryLanguage]
GO
/****** Object:  Default [DF_TradeCounter_Status]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[TradeCounter] ADD  CONSTRAINT [DF_TradeCounter_Status]  DEFAULT ('A') FOR [Status]
GO
/****** Object:  Default [DF_TradeCounterLanguage_IsPrimaryLanguage]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[TradeCounterLanguage] ADD  CONSTRAINT [DF_TradeCounterLanguage_IsPrimaryLanguage]  DEFAULT ((0)) FOR [IsPrimaryLanguage]
GO
/****** Object:  ForeignKey [FK_Document_DocumentType]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_DocumentType] FOREIGN KEY([DocumentContentID])
REFERENCES [dbo].[DocumentContent] ([ID])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_DocumentType]
GO
/****** Object:  ForeignKey [FK_DocumentML_DocumentContent]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[DocumentML]  WITH CHECK ADD  CONSTRAINT [FK_DocumentML_DocumentContent] FOREIGN KEY([DocumentContentID])
REFERENCES [dbo].[DocumentContent] ([ID])
GO
ALTER TABLE [dbo].[DocumentML] CHECK CONSTRAINT [FK_DocumentML_DocumentContent]
GO
/****** Object:  ForeignKey [FK_DocumentTypeML_DocumentType]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[DocumentTypeML]  WITH CHECK ADD  CONSTRAINT [FK_DocumentTypeML_DocumentType] FOREIGN KEY([DocumentTypeID])
REFERENCES [dbo].[DocumentType] ([ID])
GO
ALTER TABLE [dbo].[DocumentTypeML] CHECK CONSTRAINT [FK_DocumentTypeML_DocumentType]
GO
/****** Object:  ForeignKey [FK_FieldServiceCompanyLanguage_FieldServiceCompany]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[FieldServiceCompanyLanguage]  WITH CHECK ADD  CONSTRAINT [FK_FieldServiceCompanyLanguage_FieldServiceCompany] FOREIGN KEY([FieldServiceCompanyID])
REFERENCES [dbo].[FieldServiceCompany] ([ID])
GO
ALTER TABLE [dbo].[FieldServiceCompanyLanguage] CHECK CONSTRAINT [FK_FieldServiceCompanyLanguage_FieldServiceCompany]
GO
/****** Object:  ForeignKey [FK_FieldServiceCompanyLanguage_Language]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[FieldServiceCompanyLanguage]  WITH CHECK ADD  CONSTRAINT [FK_FieldServiceCompanyLanguage_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Language] ([ID])
GO
ALTER TABLE [dbo].[FieldServiceCompanyLanguage] CHECK CONSTRAINT [FK_FieldServiceCompanyLanguage_Language]
GO
/****** Object:  ForeignKey [FK_FieldServiceCompanyStockist_FieldServiceCompany]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[FieldServiceCompanyStockist]  WITH CHECK ADD  CONSTRAINT [FK_FieldServiceCompanyStockist_FieldServiceCompany] FOREIGN KEY([FieldServiceCompanyID])
REFERENCES [dbo].[FieldServiceCompany] ([ID])
GO
ALTER TABLE [dbo].[FieldServiceCompanyStockist] CHECK CONSTRAINT [FK_FieldServiceCompanyStockist_FieldServiceCompany]
GO
/****** Object:  ForeignKey [FK_FieldServiceCompanyStockist_Stockist]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[FieldServiceCompanyStockist]  WITH CHECK ADD  CONSTRAINT [FK_FieldServiceCompanyStockist_Stockist] FOREIGN KEY([StockistID])
REFERENCES [dbo].[Stockist] ([ID])
GO
ALTER TABLE [dbo].[FieldServiceCompanyStockist] CHECK CONSTRAINT [FK_FieldServiceCompanyStockist_Stockist]
GO
/****** Object:  ForeignKey [FK_File_FileContent]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_FileContent] FOREIGN KEY([FileContentID])
REFERENCES [dbo].[FileContent] ([ID])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_FileContent]
GO
/****** Object:  ForeignKey [FK_FolioDocument_Document]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[FolioDocument]  WITH CHECK ADD  CONSTRAINT [FK_FolioDocument_Document] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[Document] ([ID])
GO
ALTER TABLE [dbo].[FolioDocument] CHECK CONSTRAINT [FK_FolioDocument_Document]
GO
/****** Object:  ForeignKey [FK_FolioDocument_Folio]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[FolioDocument]  WITH CHECK ADD  CONSTRAINT [FK_FolioDocument_Folio] FOREIGN KEY([FolioID])
REFERENCES [dbo].[Folio] ([ID])
GO
ALTER TABLE [dbo].[FolioDocument] CHECK CONSTRAINT [FK_FolioDocument_Folio]
GO
/****** Object:  ForeignKey [FK_FolioML_Folio]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[FolioML]  WITH CHECK ADD  CONSTRAINT [FK_FolioML_Folio] FOREIGN KEY([FolioID])
REFERENCES [dbo].[Folio] ([ID])
GO
ALTER TABLE [dbo].[FolioML] CHECK CONSTRAINT [FK_FolioML_Folio]
GO
/****** Object:  ForeignKey [FK_FuelML_Fuel]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[FuelML]  WITH CHECK ADD  CONSTRAINT [FK_FuelML_Fuel] FOREIGN KEY([FuelID])
REFERENCES [dbo].[Fuel] ([ID])
GO
ALTER TABLE [dbo].[FuelML] CHECK CONSTRAINT [FK_FuelML_Fuel]
GO
/****** Object:  ForeignKey [FK_Graphic_File]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Graphic]  WITH CHECK ADD  CONSTRAINT [FK_Graphic_File] FOREIGN KEY([FileID])
REFERENCES [dbo].[File] ([ID])
GO
ALTER TABLE [dbo].[Graphic] CHECK CONSTRAINT [FK_Graphic_File]
GO
/****** Object:  ForeignKey [FK_Job_JobType]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_JobType] FOREIGN KEY([JobTypeID])
REFERENCES [dbo].[JobType] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_JobType]
GO
/****** Object:  ForeignKey [FK_LocationML_Location]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[LocationML]  WITH CHECK ADD  CONSTRAINT [FK_LocationML_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([ID])
GO
ALTER TABLE [dbo].[LocationML] CHECK CONSTRAINT [FK_LocationML_Location]
GO
/****** Object:  ForeignKey [FK_ManufacturerGraphic_Manufacturer]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ManufacturerGraphic]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerGraphic_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[ManufacturerGraphic] CHECK CONSTRAINT [FK_ManufacturerGraphic_Manufacturer]
GO
/****** Object:  ForeignKey [FK_ManufacturerGroupManufacturer_Manufacturer]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ManufacturerGroupManufacturer]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerGroupManufacturer_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[ManufacturerGroupManufacturer] CHECK CONSTRAINT [FK_ManufacturerGroupManufacturer_Manufacturer]
GO
/****** Object:  ForeignKey [FK_ManufacturerGroupManufacturer_ManufacturerGroup]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ManufacturerGroupManufacturer]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerGroupManufacturer_ManufacturerGroup] FOREIGN KEY([ManufacturerGroupID])
REFERENCES [dbo].[ManufacturerGroup] ([ID])
GO
ALTER TABLE [dbo].[ManufacturerGroupManufacturer] CHECK CONSTRAINT [FK_ManufacturerGroupManufacturer_ManufacturerGroup]
GO
/****** Object:  ForeignKey [FK_ManufacturerLanguage_Language]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ManufacturerLanguage]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerLanguage_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Language] ([ID])
GO
ALTER TABLE [dbo].[ManufacturerLanguage] CHECK CONSTRAINT [FK_ManufacturerLanguage_Language]
GO
/****** Object:  ForeignKey [FK_ManufacturerLanguage_Manufacturer]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ManufacturerLanguage]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerLanguage_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[ManufacturerLanguage] CHECK CONSTRAINT [FK_ManufacturerLanguage_Manufacturer]
GO
/****** Object:  ForeignKey [FK_ManufacturerProductType_Manufacturer]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ManufacturerProductType]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerProductType_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[ManufacturerProductType] CHECK CONSTRAINT [FK_ManufacturerProductType_Manufacturer]
GO
/****** Object:  ForeignKey [FK_ManufacturerProductType_ProductType]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ManufacturerProductType]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerProductType_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[ManufacturerProductType] CHECK CONSTRAINT [FK_ManufacturerProductType_ProductType]
GO
/****** Object:  ForeignKey [FK_MarketML_Market]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[MarketML]  WITH CHECK ADD  CONSTRAINT [FK_MarketML_Market] FOREIGN KEY([MarketID])
REFERENCES [dbo].[Market] ([ID])
GO
ALTER TABLE [dbo].[MarketML] CHECK CONSTRAINT [FK_MarketML_Market]
GO
/****** Object:  ForeignKey [FK_Model_ProductSubType]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_ProductSubType] FOREIGN KEY([ProductSubTypeID])
REFERENCES [dbo].[ProductSubType] ([ID])
GO
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_ProductSubType]
GO
/****** Object:  ForeignKey [FK_Model_ProductType]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_ProductType]
GO
/****** Object:  ForeignKey [FK_ModelBrand_Manufacturer]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ModelBrandSpecific]  WITH CHECK ADD  CONSTRAINT [FK_ModelBrand_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[ModelBrandSpecific] CHECK CONSTRAINT [FK_ModelBrand_Manufacturer]
GO
/****** Object:  ForeignKey [FK_ModelBrand_Model]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ModelBrandSpecific]  WITH CHECK ADD  CONSTRAINT [FK_ModelBrand_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[ModelBrandSpecific] CHECK CONSTRAINT [FK_ModelBrand_Model]
GO
/****** Object:  ForeignKey [FK_ModelFolio_Folio]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ModelFolio]  WITH CHECK ADD  CONSTRAINT [FK_ModelFolio_Folio] FOREIGN KEY([FolioID])
REFERENCES [dbo].[Folio] ([ID])
GO
ALTER TABLE [dbo].[ModelFolio] CHECK CONSTRAINT [FK_ModelFolio_Folio]
GO
/****** Object:  ForeignKey [FK_ModelFolio_Model]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ModelFolio]  WITH CHECK ADD  CONSTRAINT [FK_ModelFolio_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[ModelFolio] CHECK CONSTRAINT [FK_ModelFolio_Model]
GO
/****** Object:  ForeignKey [FK_ModelGraphic_Graphic]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ModelGraphic]  WITH CHECK ADD  CONSTRAINT [FK_ModelGraphic_Graphic] FOREIGN KEY([GraphicID])
REFERENCES [dbo].[Graphic] ([ID])
GO
ALTER TABLE [dbo].[ModelGraphic] CHECK CONSTRAINT [FK_ModelGraphic_Graphic]
GO
/****** Object:  ForeignKey [FK_ModelGraphic_Model]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ModelGraphic]  WITH CHECK ADD  CONSTRAINT [FK_ModelGraphic_Model] FOREIGN KEY([ID])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[ModelGraphic] CHECK CONSTRAINT [FK_ModelGraphic_Model]
GO
/****** Object:  ForeignKey [FK_ModelML_Model]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ModelML]  WITH CHECK ADD  CONSTRAINT [FK_ModelML_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[ModelML] CHECK CONSTRAINT [FK_ModelML_Model]
GO
/****** Object:  ForeignKey [FK_ModelPartsList_Model]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ModelPartsList]  WITH CHECK ADD  CONSTRAINT [FK_ModelPartsList_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[ModelPartsList] CHECK CONSTRAINT [FK_ModelPartsList_Model]
GO
/****** Object:  ForeignKey [FK_ModelPartsList_PartsList]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ModelPartsList]  WITH CHECK ADD  CONSTRAINT [FK_ModelPartsList_PartsList] FOREIGN KEY([PartsListID])
REFERENCES [dbo].[PartsList] ([ID])
GO
ALTER TABLE [dbo].[ModelPartsList] CHECK CONSTRAINT [FK_ModelPartsList_PartsList]
GO
/****** Object:  ForeignKey [FK_ModelStockistSpecific_Model]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ModelStockistSpecific]  WITH CHECK ADD  CONSTRAINT [FK_ModelStockistSpecific_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[ModelStockistSpecific] CHECK CONSTRAINT [FK_ModelStockistSpecific_Model]
GO
/****** Object:  ForeignKey [FK_ModelStockistSpecific_Stockist]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ModelStockistSpecific]  WITH CHECK ADD  CONSTRAINT [FK_ModelStockistSpecific_Stockist] FOREIGN KEY([StockistID])
REFERENCES [dbo].[Stockist] ([ID])
GO
ALTER TABLE [dbo].[ModelStockistSpecific] CHECK CONSTRAINT [FK_ModelStockistSpecific_Stockist]
GO
/****** Object:  ForeignKey [FK_PartFolio_Folio]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartFolio]  WITH CHECK ADD  CONSTRAINT [FK_PartFolio_Folio] FOREIGN KEY([FolioID])
REFERENCES [dbo].[Folio] ([ID])
GO
ALTER TABLE [dbo].[PartFolio] CHECK CONSTRAINT [FK_PartFolio_Folio]
GO
/****** Object:  ForeignKey [FK_PartFolio_Part]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartFolio]  WITH CHECK ADD  CONSTRAINT [FK_PartFolio_Part] FOREIGN KEY([ID])
REFERENCES [dbo].[Part] ([ID])
GO
ALTER TABLE [dbo].[PartFolio] CHECK CONSTRAINT [FK_PartFolio_Part]
GO
/****** Object:  ForeignKey [FK_PartGraphic_Graphic]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartGraphic]  WITH CHECK ADD  CONSTRAINT [FK_PartGraphic_Graphic] FOREIGN KEY([GraphicID])
REFERENCES [dbo].[Graphic] ([ID])
GO
ALTER TABLE [dbo].[PartGraphic] CHECK CONSTRAINT [FK_PartGraphic_Graphic]
GO
/****** Object:  ForeignKey [FK_PartGraphic_Part]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartGraphic]  WITH CHECK ADD  CONSTRAINT [FK_PartGraphic_Part] FOREIGN KEY([PartID])
REFERENCES [dbo].[Part] ([ID])
GO
ALTER TABLE [dbo].[PartGraphic] CHECK CONSTRAINT [FK_PartGraphic_Part]
GO
/****** Object:  ForeignKey [FK_PartManufacturerSpecific_Folio]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartManufacturerSpecific]  WITH CHECK ADD  CONSTRAINT [FK_PartManufacturerSpecific_Folio] FOREIGN KEY([FolioID])
REFERENCES [dbo].[Folio] ([ID])
GO
ALTER TABLE [dbo].[PartManufacturerSpecific] CHECK CONSTRAINT [FK_PartManufacturerSpecific_Folio]
GO
/****** Object:  ForeignKey [FK_PartsListML_PartsList]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartsListML]  WITH CHECK ADD  CONSTRAINT [FK_PartsListML_PartsList] FOREIGN KEY([PartsListID])
REFERENCES [dbo].[PartsList] ([ID])
GO
ALTER TABLE [dbo].[PartsListML] CHECK CONSTRAINT [FK_PartsListML_PartsList]
GO
/****** Object:  ForeignKey [FK_PartsListPartsListSection_PartsList]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartsListPartsListSection]  WITH CHECK ADD  CONSTRAINT [FK_PartsListPartsListSection_PartsList] FOREIGN KEY([PartsListID])
REFERENCES [dbo].[PartsList] ([ID])
GO
ALTER TABLE [dbo].[PartsListPartsListSection] CHECK CONSTRAINT [FK_PartsListPartsListSection_PartsList]
GO
/****** Object:  ForeignKey [FK_PartsListSectionGraphic_Graphic]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartsListSectionGraphic]  WITH CHECK ADD  CONSTRAINT [FK_PartsListSectionGraphic_Graphic] FOREIGN KEY([GraphicID])
REFERENCES [dbo].[Graphic] ([ID])
GO
ALTER TABLE [dbo].[PartsListSectionGraphic] CHECK CONSTRAINT [FK_PartsListSectionGraphic_Graphic]
GO
/****** Object:  ForeignKey [FK_PartsListSectionGraphic_PartsListSection]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartsListSectionGraphic]  WITH CHECK ADD  CONSTRAINT [FK_PartsListSectionGraphic_PartsListSection] FOREIGN KEY([PartsListSectionID])
REFERENCES [dbo].[PartsListSection] ([ID])
GO
ALTER TABLE [dbo].[PartsListSectionGraphic] CHECK CONSTRAINT [FK_PartsListSectionGraphic_PartsListSection]
GO
/****** Object:  ForeignKey [FK_PartsListSectionML_PartsListSection]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartsListSectionML]  WITH CHECK ADD  CONSTRAINT [FK_PartsListSectionML_PartsListSection] FOREIGN KEY([PartsListSectionID])
REFERENCES [dbo].[PartsListSection] ([ID])
GO
ALTER TABLE [dbo].[PartsListSectionML] CHECK CONSTRAINT [FK_PartsListSectionML_PartsListSection]
GO
/****** Object:  ForeignKey [FK_PartsListSectionRow_PartsListSection]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartsListSectionRow]  WITH CHECK ADD  CONSTRAINT [FK_PartsListSectionRow_PartsListSection] FOREIGN KEY([PartsListSectionID])
REFERENCES [dbo].[PartsListSection] ([ID])
GO
ALTER TABLE [dbo].[PartsListSectionRow] CHECK CONSTRAINT [FK_PartsListSectionRow_PartsListSection]
GO
/****** Object:  ForeignKey [FK_PartsListSectionRowML_PartsListSectionRow]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[PartsListSectionRowML]  WITH CHECK ADD  CONSTRAINT [FK_PartsListSectionRowML_PartsListSectionRow] FOREIGN KEY([PartsListSectionRowID])
REFERENCES [dbo].[PartsListSectionRow] ([ID])
GO
ALTER TABLE [dbo].[PartsListSectionRowML] CHECK CONSTRAINT [FK_PartsListSectionRowML_PartsListSectionRow]
GO
/****** Object:  ForeignKey [FK_ProductRange_Manufacturer]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ProductRange]  WITH CHECK ADD  CONSTRAINT [FK_ProductRange_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[ProductRange] CHECK CONSTRAINT [FK_ProductRange_Manufacturer]
GO
/****** Object:  ForeignKey [FK_ProductSubType_ProductType]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ProductSubType]  WITH CHECK ADD  CONSTRAINT [FK_ProductSubType_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[ProductSubType] CHECK CONSTRAINT [FK_ProductSubType_ProductType]
GO
/****** Object:  ForeignKey [FK_ProductSubTypeML_ProductSubType]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ProductSubTypeML]  WITH CHECK ADD  CONSTRAINT [FK_ProductSubTypeML_ProductSubType] FOREIGN KEY([ProductSubTypeID])
REFERENCES [dbo].[ProductSubType] ([ID])
GO
ALTER TABLE [dbo].[ProductSubTypeML] CHECK CONSTRAINT [FK_ProductSubTypeML_ProductSubType]
GO
/****** Object:  ForeignKey [FK_ProductTypeML_ProductType]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ProductTypeML]  WITH CHECK ADD  CONSTRAINT [FK_ProductTypeML_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[ProductTypeML] CHECK CONSTRAINT [FK_ProductTypeML_ProductType]
GO
/****** Object:  ForeignKey [FK_ResourcePermission_Permission]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ResourcePermission]  WITH CHECK ADD  CONSTRAINT [FK_ResourcePermission_Permission] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permission] ([ID])
GO
ALTER TABLE [dbo].[ResourcePermission] CHECK CONSTRAINT [FK_ResourcePermission_Permission]
GO
/****** Object:  ForeignKey [FK_ResourcePermission_Resource]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[ResourcePermission]  WITH CHECK ADD  CONSTRAINT [FK_ResourcePermission_Resource] FOREIGN KEY([ResourceID])
REFERENCES [dbo].[Resource] ([ID])
GO
ALTER TABLE [dbo].[ResourcePermission] CHECK CONSTRAINT [FK_ResourcePermission_Resource]
GO
/****** Object:  ForeignKey [FK_RoleResourcePermission_ResourcePermission]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[RoleResourcePermission]  WITH CHECK ADD  CONSTRAINT [FK_RoleResourcePermission_ResourcePermission] FOREIGN KEY([ResourcePermissionID])
REFERENCES [dbo].[ResourcePermission] ([ID])
GO
ALTER TABLE [dbo].[RoleResourcePermission] CHECK CONSTRAINT [FK_RoleResourcePermission_ResourcePermission]
GO
/****** Object:  ForeignKey [FK_RoleResourcePermission_Role]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[RoleResourcePermission]  WITH CHECK ADD  CONSTRAINT [FK_RoleResourcePermission_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[RoleResourcePermission] CHECK CONSTRAINT [FK_RoleResourcePermission_Role]
GO
/****** Object:  ForeignKey [FK_StockistLanguage_Language]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[StockistLanguage]  WITH CHECK ADD  CONSTRAINT [FK_StockistLanguage_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Language] ([ID])
GO
ALTER TABLE [dbo].[StockistLanguage] CHECK CONSTRAINT [FK_StockistLanguage_Language]
GO
/****** Object:  ForeignKey [FK_StockistLanguage_Stockist]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[StockistLanguage]  WITH CHECK ADD  CONSTRAINT [FK_StockistLanguage_Stockist] FOREIGN KEY([StockistID])
REFERENCES [dbo].[Stockist] ([ID])
GO
ALTER TABLE [dbo].[StockistLanguage] CHECK CONSTRAINT [FK_StockistLanguage_Stockist]
GO
/****** Object:  ForeignKey [FK_Task_Job]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Job] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([ID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Job]
GO
/****** Object:  ForeignKey [FK_TradeCounterLanguage_Language]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[TradeCounterLanguage]  WITH CHECK ADD  CONSTRAINT [FK_TradeCounterLanguage_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Language] ([ID])
GO
ALTER TABLE [dbo].[TradeCounterLanguage] CHECK CONSTRAINT [FK_TradeCounterLanguage_Language]
GO
/****** Object:  ForeignKey [FK_TradeCounterLanguage_TradeCounter]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[TradeCounterLanguage]  WITH CHECK ADD  CONSTRAINT [FK_TradeCounterLanguage_TradeCounter] FOREIGN KEY([TradeCounterID])
REFERENCES [dbo].[TradeCounter] ([ID])
GO
ALTER TABLE [dbo].[TradeCounterLanguage] CHECK CONSTRAINT [FK_TradeCounterLanguage_TradeCounter]
GO
/****** Object:  ForeignKey [FK_TradeCounterManufacturerGroup_ManufacturerGroup]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[TradeCounterManufacturerGroup]  WITH CHECK ADD  CONSTRAINT [FK_TradeCounterManufacturerGroup_ManufacturerGroup] FOREIGN KEY([ManufacturerGroupID])
REFERENCES [dbo].[ManufacturerGroup] ([ID])
GO
ALTER TABLE [dbo].[TradeCounterManufacturerGroup] CHECK CONSTRAINT [FK_TradeCounterManufacturerGroup_ManufacturerGroup]
GO
/****** Object:  ForeignKey [FK_TradeCounterManufacturerGroup_TradeCounter]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[TradeCounterManufacturerGroup]  WITH CHECK ADD  CONSTRAINT [FK_TradeCounterManufacturerGroup_TradeCounter] FOREIGN KEY([TradeCounterID])
REFERENCES [dbo].[TradeCounter] ([ID])
GO
ALTER TABLE [dbo].[TradeCounterManufacturerGroup] CHECK CONSTRAINT [FK_TradeCounterManufacturerGroup_TradeCounter]
GO
/****** Object:  ForeignKey [FK_UserRole_Role]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
/****** Object:  ForeignKey [FK_UserRole_User]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
/****** Object:  ForeignKey [FK_UserRoleFieldServiceCompany_FieldServiceCompany]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[UserRoleFieldServiceCompany]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleFieldServiceCompany_FieldServiceCompany] FOREIGN KEY([FieldServiceCompanyID])
REFERENCES [dbo].[FieldServiceCompany] ([ID])
GO
ALTER TABLE [dbo].[UserRoleFieldServiceCompany] CHECK CONSTRAINT [FK_UserRoleFieldServiceCompany_FieldServiceCompany]
GO
/****** Object:  ForeignKey [FK_UserRoleFieldServiceCompany_UserRole]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[UserRoleFieldServiceCompany]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleFieldServiceCompany_UserRole] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRole] ([ID])
GO
ALTER TABLE [dbo].[UserRoleFieldServiceCompany] CHECK CONSTRAINT [FK_UserRoleFieldServiceCompany_UserRole]
GO
/****** Object:  ForeignKey [FK_UserRoleManufacturer_Manufacturer]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[UserRoleManufacturer]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleManufacturer_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[UserRoleManufacturer] CHECK CONSTRAINT [FK_UserRoleManufacturer_Manufacturer]
GO
/****** Object:  ForeignKey [FK_UserRoleManufacturer_UserRole]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[UserRoleManufacturer]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleManufacturer_UserRole] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRole] ([ID])
GO
ALTER TABLE [dbo].[UserRoleManufacturer] CHECK CONSTRAINT [FK_UserRoleManufacturer_UserRole]
GO
/****** Object:  ForeignKey [FK_UserRoleManufacturerGroup_ManufacturerGroup]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[UserRoleManufacturerGroup]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleManufacturerGroup_ManufacturerGroup] FOREIGN KEY([ManufacturerGroupID])
REFERENCES [dbo].[ManufacturerGroup] ([ID])
GO
ALTER TABLE [dbo].[UserRoleManufacturerGroup] CHECK CONSTRAINT [FK_UserRoleManufacturerGroup_ManufacturerGroup]
GO
/****** Object:  ForeignKey [FK_UserRoleManufacturerGroup_UserRole]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[UserRoleManufacturerGroup]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleManufacturerGroup_UserRole] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRole] ([ID])
GO
ALTER TABLE [dbo].[UserRoleManufacturerGroup] CHECK CONSTRAINT [FK_UserRoleManufacturerGroup_UserRole]
GO
/****** Object:  ForeignKey [FK_UserRoleStockist_Stockist]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[UserRoleStockist]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleStockist_Stockist] FOREIGN KEY([StockistID])
REFERENCES [dbo].[Stockist] ([ID])
GO
ALTER TABLE [dbo].[UserRoleStockist] CHECK CONSTRAINT [FK_UserRoleStockist_Stockist]
GO
/****** Object:  ForeignKey [FK_UserRoleStockist_UserRole]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[UserRoleStockist]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleStockist_UserRole] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRole] ([ID])
GO
ALTER TABLE [dbo].[UserRoleStockist] CHECK CONSTRAINT [FK_UserRoleStockist_UserRole]
GO
/****** Object:  ForeignKey [FK_UserRoleTradeCounter_TradeCounter]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[UserRoleTradeCounter]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleTradeCounter_TradeCounter] FOREIGN KEY([TradeCounterID])
REFERENCES [dbo].[TradeCounter] ([ID])
GO
ALTER TABLE [dbo].[UserRoleTradeCounter] CHECK CONSTRAINT [FK_UserRoleTradeCounter_TradeCounter]
GO
/****** Object:  ForeignKey [FK_UserRoleTradeCounter_UserRole]    Script Date: 12/10/2014 19:21:10 ******/
ALTER TABLE [dbo].[UserRoleTradeCounter]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleTradeCounter_UserRole] FOREIGN KEY([ID])
REFERENCES [dbo].[UserRole] ([ID])
GO
ALTER TABLE [dbo].[UserRoleTradeCounter] CHECK CONSTRAINT [FK_UserRoleTradeCounter_UserRole]
GO
