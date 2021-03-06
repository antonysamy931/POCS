USE [master]
GO
/****** Object:  Database [Nomadycs]    Script Date: 04-12-2014 15:21:56 ******/
CREATE DATABASE [Nomadycs]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Nomadycs', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Nomadycs.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Nomadycs_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Nomadycs_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Nomadycs] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Nomadycs].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Nomadycs] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Nomadycs] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Nomadycs] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Nomadycs] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Nomadycs] SET ARITHABORT OFF 
GO
ALTER DATABASE [Nomadycs] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Nomadycs] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Nomadycs] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Nomadycs] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Nomadycs] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Nomadycs] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Nomadycs] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Nomadycs] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Nomadycs] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Nomadycs] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Nomadycs] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Nomadycs] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Nomadycs] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Nomadycs] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Nomadycs] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Nomadycs] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Nomadycs] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Nomadycs] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Nomadycs] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Nomadycs] SET  MULTI_USER 
GO
ALTER DATABASE [Nomadycs] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Nomadycs] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Nomadycs] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Nomadycs] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Nomadycs]
GO
/****** Object:  Table [dbo].[Document]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentContent]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentML]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentTypeML]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FieldServiceCompany]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FieldServiceCompanyLanguage]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FieldServiceCompanyStockist]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[File]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FileContent]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Folio]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FolioDocument]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FolioML]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fuel]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FuelML]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Graphic]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Job]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobType]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Language]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Location]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LocationML]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManufacturerGraphic]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManufacturerGroup]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManufacturerGroupManufacturer]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManufacturerLanguage]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManufacturerProductType]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Market]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MarketML]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Model]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModelBrandSpecific]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModelFolio]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModelGraphic]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModelML]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModelPartsList]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModelStockistSpecific]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Part]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartFieldServiceCompanySpecific]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartFolio]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartGraphic]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartManufacturerSpecific]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsList]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsListML]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsListPartsListSection]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsListSection]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsListSectionGraphic]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsListSectionML]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsListSectionRow]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsListSectionRowML]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartStockistSpecific]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartSuperSession]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductRange]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductSubType]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductSubTypeML]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductTypeML]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Resource]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ResourcePermission]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleResourcePermission]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stockist]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockistLanguage]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Task]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TradeCounter]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TradeCounterLanguage]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TradeCounterManufacturerGroup]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoleFieldServiceCompany]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoleManufacturer]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoleManufacturerGroup]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoleStockist]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoleTradeCounter]    Script Date: 04-12-2014 15:21:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Fuel] ON 

INSERT [dbo].[Fuel] ([ID], [Name], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [RecordStatus], [LangCode]) VALUES (2, N'NATURAL GAS', 1, CAST(0x07000000000050390B AS DateTime2), 1, CAST(0x07000000000050390B AS DateTime2), N'A', N'en-GB')
INSERT [dbo].[Fuel] ([ID], [Name], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [RecordStatus], [LangCode]) VALUES (3, N'ELECTRICITY', 1, CAST(0x07000000000050390B AS DateTime2), 1, CAST(0x07000000000050390B AS DateTime2), N'A', N'en-GB')
INSERT [dbo].[Fuel] ([ID], [Name], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [RecordStatus], [LangCode]) VALUES (4, N'LPG', 1, CAST(0x07000000000050390B AS DateTime2), 1, CAST(0x07000000000050390B AS DateTime2), N'A', N'en-GB')
INSERT [dbo].[Fuel] ([ID], [Name], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [RecordStatus], [LangCode]) VALUES (5, N'OIL', 1, CAST(0x07000000000050390B AS DateTime2), 1, CAST(0x07000000000050390B AS DateTime2), N'A', N'en-GB')
INSERT [dbo].[Fuel] ([ID], [Name], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [RecordStatus], [LangCode]) VALUES (6, N'COAL', 1, CAST(0x07000000000050390B AS DateTime2), 1, CAST(0x07000000000050390B AS DateTime2), N'A', N'en-GB')
SET IDENTITY_INSERT [dbo].[Fuel] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UN_Manufacturer_Code]    Script Date: 04-12-2014 15:21:56 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UN_Manufacturer_Code] ON [dbo].[Manufacturer]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF_Document_IsPublic]  DEFAULT ((1)) FOR [IsPublic]
GO
ALTER TABLE [dbo].[DocumentML] ADD  CONSTRAINT [DF_DocumentML_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
ALTER TABLE [dbo].[DocumentType] ADD  CONSTRAINT [DF_DocumentType_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
ALTER TABLE [dbo].[DocumentTypeML] ADD  CONSTRAINT [DF_DocumentTypeML_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
ALTER TABLE [dbo].[FieldServiceCompany] ADD  CONSTRAINT [DF_FieldServiceCompany_AccessType]  DEFAULT ('F') FOR [AccessType]
GO
ALTER TABLE [dbo].[FieldServiceCompany] ADD  CONSTRAINT [DF_FieldServiceCompany_IsActive]  DEFAULT ('A') FOR [Status]
GO
ALTER TABLE [dbo].[FieldServiceCompanyLanguage] ADD  CONSTRAINT [DF_FieldServiceCompanyLanguage_IsPrimaryLanguage]  DEFAULT ((0)) FOR [IsPrimaryLanguage]
GO
ALTER TABLE [dbo].[Folio] ADD  CONSTRAINT [DF_Folio_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
ALTER TABLE [dbo].[Fuel] ADD  CONSTRAINT [DF_Fuel_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
ALTER TABLE [dbo].[LocationML] ADD  CONSTRAINT [DF_LocationML_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
ALTER TABLE [dbo].[Manufacturer] ADD  CONSTRAINT [DF_Manufacturer_IsBrand]  DEFAULT ((0)) FOR [IsBrand]
GO
ALTER TABLE [dbo].[Manufacturer] ADD  CONSTRAINT [DF_Manufacturer_IsProofRequired]  DEFAULT ((0)) FOR [IsProofRequired]
GO
ALTER TABLE [dbo].[Manufacturer] ADD  CONSTRAINT [DF_Manufacturer_Status]  DEFAULT ('A') FOR [Status]
GO
ALTER TABLE [dbo].[ManufacturerLanguage] ADD  CONSTRAINT [DF_ManufacturerLanguage_IsPrimaryLanguage]  DEFAULT ((0)) FOR [IsPrimaryLanguage]
GO
ALTER TABLE [dbo].[Market] ADD  CONSTRAINT [DF_Market_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
ALTER TABLE [dbo].[Model] ADD  CONSTRAINT [DF_Model_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
ALTER TABLE [dbo].[Part] ADD  CONSTRAINT [DF_Part_Status]  DEFAULT ('U') FOR [Status]
GO
ALTER TABLE [dbo].[PartManufacturerSpecific] ADD  CONSTRAINT [DF_PartManufacturerSpecific_Status]  DEFAULT ('U') FOR [Status]
GO
ALTER TABLE [dbo].[PartsList] ADD  CONSTRAINT [DF_PartsList_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
ALTER TABLE [dbo].[PartsListSectionRow] ADD  CONSTRAINT [DF_PartsListSectionRow_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[PartStockistSpecific] ADD  CONSTRAINT [DF_PartStockistSpecific_Status]  DEFAULT ('U') FOR [Status]
GO
ALTER TABLE [dbo].[ProductSubType] ADD  CONSTRAINT [DF_ProductSubType_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
ALTER TABLE [dbo].[ProductType] ADD  CONSTRAINT [DF_ProductType_LangCode]  DEFAULT ('en-GB') FOR [LangCode]
GO
ALTER TABLE [dbo].[Stockist] ADD  CONSTRAINT [DF_Stockist_Status]  DEFAULT ('A') FOR [Status]
GO
ALTER TABLE [dbo].[Stockist] ADD  CONSTRAINT [DF_Stockist_CurrencyCode]  DEFAULT ('GBP') FOR [CurrencyCode]
GO
ALTER TABLE [dbo].[StockistLanguage] ADD  CONSTRAINT [DF_StockistLanguage_IsPrimaryLanguage]  DEFAULT ((0)) FOR [IsPrimaryLanguage]
GO
ALTER TABLE [dbo].[TradeCounter] ADD  CONSTRAINT [DF_TradeCounter_Status]  DEFAULT ('A') FOR [Status]
GO
ALTER TABLE [dbo].[TradeCounterLanguage] ADD  CONSTRAINT [DF_TradeCounterLanguage_IsPrimaryLanguage]  DEFAULT ((0)) FOR [IsPrimaryLanguage]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_DocumentType] FOREIGN KEY([DocumentContentID])
REFERENCES [dbo].[DocumentContent] ([ID])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_DocumentType]
GO
ALTER TABLE [dbo].[DocumentML]  WITH CHECK ADD  CONSTRAINT [FK_DocumentML_DocumentContent] FOREIGN KEY([DocumentContentID])
REFERENCES [dbo].[DocumentContent] ([ID])
GO
ALTER TABLE [dbo].[DocumentML] CHECK CONSTRAINT [FK_DocumentML_DocumentContent]
GO
ALTER TABLE [dbo].[DocumentTypeML]  WITH CHECK ADD  CONSTRAINT [FK_DocumentTypeML_DocumentType] FOREIGN KEY([DocumentTypeID])
REFERENCES [dbo].[DocumentType] ([ID])
GO
ALTER TABLE [dbo].[DocumentTypeML] CHECK CONSTRAINT [FK_DocumentTypeML_DocumentType]
GO
ALTER TABLE [dbo].[FieldServiceCompanyLanguage]  WITH CHECK ADD  CONSTRAINT [FK_FieldServiceCompanyLanguage_FieldServiceCompany] FOREIGN KEY([FieldServiceCompanyID])
REFERENCES [dbo].[FieldServiceCompany] ([ID])
GO
ALTER TABLE [dbo].[FieldServiceCompanyLanguage] CHECK CONSTRAINT [FK_FieldServiceCompanyLanguage_FieldServiceCompany]
GO
ALTER TABLE [dbo].[FieldServiceCompanyLanguage]  WITH CHECK ADD  CONSTRAINT [FK_FieldServiceCompanyLanguage_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Language] ([ID])
GO
ALTER TABLE [dbo].[FieldServiceCompanyLanguage] CHECK CONSTRAINT [FK_FieldServiceCompanyLanguage_Language]
GO
ALTER TABLE [dbo].[FieldServiceCompanyStockist]  WITH CHECK ADD  CONSTRAINT [FK_FieldServiceCompanyStockist_FieldServiceCompany] FOREIGN KEY([FieldServiceCompanyID])
REFERENCES [dbo].[FieldServiceCompany] ([ID])
GO
ALTER TABLE [dbo].[FieldServiceCompanyStockist] CHECK CONSTRAINT [FK_FieldServiceCompanyStockist_FieldServiceCompany]
GO
ALTER TABLE [dbo].[FieldServiceCompanyStockist]  WITH CHECK ADD  CONSTRAINT [FK_FieldServiceCompanyStockist_Stockist] FOREIGN KEY([StockistID])
REFERENCES [dbo].[Stockist] ([ID])
GO
ALTER TABLE [dbo].[FieldServiceCompanyStockist] CHECK CONSTRAINT [FK_FieldServiceCompanyStockist_Stockist]
GO
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_FileContent] FOREIGN KEY([FileContentID])
REFERENCES [dbo].[FileContent] ([ID])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_FileContent]
GO
ALTER TABLE [dbo].[FolioDocument]  WITH CHECK ADD  CONSTRAINT [FK_FolioDocument_Document] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[Document] ([ID])
GO
ALTER TABLE [dbo].[FolioDocument] CHECK CONSTRAINT [FK_FolioDocument_Document]
GO
ALTER TABLE [dbo].[FolioDocument]  WITH CHECK ADD  CONSTRAINT [FK_FolioDocument_Folio] FOREIGN KEY([FolioID])
REFERENCES [dbo].[Folio] ([ID])
GO
ALTER TABLE [dbo].[FolioDocument] CHECK CONSTRAINT [FK_FolioDocument_Folio]
GO
ALTER TABLE [dbo].[FolioML]  WITH CHECK ADD  CONSTRAINT [FK_FolioML_Folio] FOREIGN KEY([FolioID])
REFERENCES [dbo].[Folio] ([ID])
GO
ALTER TABLE [dbo].[FolioML] CHECK CONSTRAINT [FK_FolioML_Folio]
GO
ALTER TABLE [dbo].[FuelML]  WITH CHECK ADD  CONSTRAINT [FK_FuelML_Fuel] FOREIGN KEY([FuelID])
REFERENCES [dbo].[Fuel] ([ID])
GO
ALTER TABLE [dbo].[FuelML] CHECK CONSTRAINT [FK_FuelML_Fuel]
GO
ALTER TABLE [dbo].[Graphic]  WITH CHECK ADD  CONSTRAINT [FK_Graphic_File] FOREIGN KEY([FileID])
REFERENCES [dbo].[File] ([ID])
GO
ALTER TABLE [dbo].[Graphic] CHECK CONSTRAINT [FK_Graphic_File]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_JobType] FOREIGN KEY([JobTypeID])
REFERENCES [dbo].[JobType] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_JobType]
GO
ALTER TABLE [dbo].[LocationML]  WITH CHECK ADD  CONSTRAINT [FK_LocationML_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([ID])
GO
ALTER TABLE [dbo].[LocationML] CHECK CONSTRAINT [FK_LocationML_Location]
GO
ALTER TABLE [dbo].[ManufacturerGraphic]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerGraphic_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[ManufacturerGraphic] CHECK CONSTRAINT [FK_ManufacturerGraphic_Manufacturer]
GO
ALTER TABLE [dbo].[ManufacturerGroupManufacturer]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerGroupManufacturer_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[ManufacturerGroupManufacturer] CHECK CONSTRAINT [FK_ManufacturerGroupManufacturer_Manufacturer]
GO
ALTER TABLE [dbo].[ManufacturerGroupManufacturer]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerGroupManufacturer_ManufacturerGroup] FOREIGN KEY([ManufacturerGroupID])
REFERENCES [dbo].[ManufacturerGroup] ([ID])
GO
ALTER TABLE [dbo].[ManufacturerGroupManufacturer] CHECK CONSTRAINT [FK_ManufacturerGroupManufacturer_ManufacturerGroup]
GO
ALTER TABLE [dbo].[ManufacturerLanguage]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerLanguage_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Language] ([ID])
GO
ALTER TABLE [dbo].[ManufacturerLanguage] CHECK CONSTRAINT [FK_ManufacturerLanguage_Language]
GO
ALTER TABLE [dbo].[ManufacturerLanguage]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerLanguage_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[ManufacturerLanguage] CHECK CONSTRAINT [FK_ManufacturerLanguage_Manufacturer]
GO
ALTER TABLE [dbo].[ManufacturerProductType]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerProductType_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[ManufacturerProductType] CHECK CONSTRAINT [FK_ManufacturerProductType_Manufacturer]
GO
ALTER TABLE [dbo].[ManufacturerProductType]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerProductType_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[ManufacturerProductType] CHECK CONSTRAINT [FK_ManufacturerProductType_ProductType]
GO
ALTER TABLE [dbo].[MarketML]  WITH CHECK ADD  CONSTRAINT [FK_MarketML_Market] FOREIGN KEY([MarketID])
REFERENCES [dbo].[Market] ([ID])
GO
ALTER TABLE [dbo].[MarketML] CHECK CONSTRAINT [FK_MarketML_Market]
GO
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_ProductSubType] FOREIGN KEY([ProductSubTypeID])
REFERENCES [dbo].[ProductSubType] ([ID])
GO
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_ProductSubType]
GO
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_ProductType]
GO
ALTER TABLE [dbo].[ModelBrandSpecific]  WITH CHECK ADD  CONSTRAINT [FK_ModelBrand_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[ModelBrandSpecific] CHECK CONSTRAINT [FK_ModelBrand_Manufacturer]
GO
ALTER TABLE [dbo].[ModelBrandSpecific]  WITH CHECK ADD  CONSTRAINT [FK_ModelBrand_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[ModelBrandSpecific] CHECK CONSTRAINT [FK_ModelBrand_Model]
GO
ALTER TABLE [dbo].[ModelFolio]  WITH CHECK ADD  CONSTRAINT [FK_ModelFolio_Folio] FOREIGN KEY([FolioID])
REFERENCES [dbo].[Folio] ([ID])
GO
ALTER TABLE [dbo].[ModelFolio] CHECK CONSTRAINT [FK_ModelFolio_Folio]
GO
ALTER TABLE [dbo].[ModelFolio]  WITH CHECK ADD  CONSTRAINT [FK_ModelFolio_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[ModelFolio] CHECK CONSTRAINT [FK_ModelFolio_Model]
GO
ALTER TABLE [dbo].[ModelGraphic]  WITH CHECK ADD  CONSTRAINT [FK_ModelGraphic_Graphic] FOREIGN KEY([GraphicID])
REFERENCES [dbo].[Graphic] ([ID])
GO
ALTER TABLE [dbo].[ModelGraphic] CHECK CONSTRAINT [FK_ModelGraphic_Graphic]
GO
ALTER TABLE [dbo].[ModelGraphic]  WITH CHECK ADD  CONSTRAINT [FK_ModelGraphic_Model] FOREIGN KEY([ID])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[ModelGraphic] CHECK CONSTRAINT [FK_ModelGraphic_Model]
GO
ALTER TABLE [dbo].[ModelML]  WITH CHECK ADD  CONSTRAINT [FK_ModelML_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[ModelML] CHECK CONSTRAINT [FK_ModelML_Model]
GO
ALTER TABLE [dbo].[ModelPartsList]  WITH CHECK ADD  CONSTRAINT [FK_ModelPartsList_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[ModelPartsList] CHECK CONSTRAINT [FK_ModelPartsList_Model]
GO
ALTER TABLE [dbo].[ModelPartsList]  WITH CHECK ADD  CONSTRAINT [FK_ModelPartsList_PartsList] FOREIGN KEY([PartsListID])
REFERENCES [dbo].[PartsList] ([ID])
GO
ALTER TABLE [dbo].[ModelPartsList] CHECK CONSTRAINT [FK_ModelPartsList_PartsList]
GO
ALTER TABLE [dbo].[ModelStockistSpecific]  WITH CHECK ADD  CONSTRAINT [FK_ModelStockistSpecific_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[ModelStockistSpecific] CHECK CONSTRAINT [FK_ModelStockistSpecific_Model]
GO
ALTER TABLE [dbo].[ModelStockistSpecific]  WITH CHECK ADD  CONSTRAINT [FK_ModelStockistSpecific_Stockist] FOREIGN KEY([StockistID])
REFERENCES [dbo].[Stockist] ([ID])
GO
ALTER TABLE [dbo].[ModelStockistSpecific] CHECK CONSTRAINT [FK_ModelStockistSpecific_Stockist]
GO
ALTER TABLE [dbo].[PartFolio]  WITH CHECK ADD  CONSTRAINT [FK_PartFolio_Folio] FOREIGN KEY([FolioID])
REFERENCES [dbo].[Folio] ([ID])
GO
ALTER TABLE [dbo].[PartFolio] CHECK CONSTRAINT [FK_PartFolio_Folio]
GO
ALTER TABLE [dbo].[PartFolio]  WITH CHECK ADD  CONSTRAINT [FK_PartFolio_Part] FOREIGN KEY([ID])
REFERENCES [dbo].[Part] ([ID])
GO
ALTER TABLE [dbo].[PartFolio] CHECK CONSTRAINT [FK_PartFolio_Part]
GO
ALTER TABLE [dbo].[PartGraphic]  WITH CHECK ADD  CONSTRAINT [FK_PartGraphic_Graphic] FOREIGN KEY([GraphicID])
REFERENCES [dbo].[Graphic] ([ID])
GO
ALTER TABLE [dbo].[PartGraphic] CHECK CONSTRAINT [FK_PartGraphic_Graphic]
GO
ALTER TABLE [dbo].[PartGraphic]  WITH CHECK ADD  CONSTRAINT [FK_PartGraphic_Part] FOREIGN KEY([PartID])
REFERENCES [dbo].[Part] ([ID])
GO
ALTER TABLE [dbo].[PartGraphic] CHECK CONSTRAINT [FK_PartGraphic_Part]
GO
ALTER TABLE [dbo].[PartManufacturerSpecific]  WITH CHECK ADD  CONSTRAINT [FK_PartManufacturerSpecific_Folio] FOREIGN KEY([FolioID])
REFERENCES [dbo].[Folio] ([ID])
GO
ALTER TABLE [dbo].[PartManufacturerSpecific] CHECK CONSTRAINT [FK_PartManufacturerSpecific_Folio]
GO
ALTER TABLE [dbo].[PartsListML]  WITH CHECK ADD  CONSTRAINT [FK_PartsListML_PartsList] FOREIGN KEY([PartsListID])
REFERENCES [dbo].[PartsList] ([ID])
GO
ALTER TABLE [dbo].[PartsListML] CHECK CONSTRAINT [FK_PartsListML_PartsList]
GO
ALTER TABLE [dbo].[PartsListPartsListSection]  WITH CHECK ADD  CONSTRAINT [FK_PartsListPartsListSection_PartsList] FOREIGN KEY([PartsListID])
REFERENCES [dbo].[PartsList] ([ID])
GO
ALTER TABLE [dbo].[PartsListPartsListSection] CHECK CONSTRAINT [FK_PartsListPartsListSection_PartsList]
GO
ALTER TABLE [dbo].[PartsListSectionGraphic]  WITH CHECK ADD  CONSTRAINT [FK_PartsListSectionGraphic_Graphic] FOREIGN KEY([GraphicID])
REFERENCES [dbo].[Graphic] ([ID])
GO
ALTER TABLE [dbo].[PartsListSectionGraphic] CHECK CONSTRAINT [FK_PartsListSectionGraphic_Graphic]
GO
ALTER TABLE [dbo].[PartsListSectionGraphic]  WITH CHECK ADD  CONSTRAINT [FK_PartsListSectionGraphic_PartsListSection] FOREIGN KEY([PartsListSectionID])
REFERENCES [dbo].[PartsListSection] ([ID])
GO
ALTER TABLE [dbo].[PartsListSectionGraphic] CHECK CONSTRAINT [FK_PartsListSectionGraphic_PartsListSection]
GO
ALTER TABLE [dbo].[PartsListSectionML]  WITH CHECK ADD  CONSTRAINT [FK_PartsListSectionML_PartsListSection] FOREIGN KEY([PartsListSectionID])
REFERENCES [dbo].[PartsListSection] ([ID])
GO
ALTER TABLE [dbo].[PartsListSectionML] CHECK CONSTRAINT [FK_PartsListSectionML_PartsListSection]
GO
ALTER TABLE [dbo].[PartsListSectionRow]  WITH CHECK ADD  CONSTRAINT [FK_PartsListSectionRow_PartsListSection] FOREIGN KEY([PartsListSectionID])
REFERENCES [dbo].[PartsListSection] ([ID])
GO
ALTER TABLE [dbo].[PartsListSectionRow] CHECK CONSTRAINT [FK_PartsListSectionRow_PartsListSection]
GO
ALTER TABLE [dbo].[PartsListSectionRowML]  WITH CHECK ADD  CONSTRAINT [FK_PartsListSectionRowML_PartsListSectionRow] FOREIGN KEY([PartsListSectionRowID])
REFERENCES [dbo].[PartsListSectionRow] ([ID])
GO
ALTER TABLE [dbo].[PartsListSectionRowML] CHECK CONSTRAINT [FK_PartsListSectionRowML_PartsListSectionRow]
GO
ALTER TABLE [dbo].[ProductRange]  WITH CHECK ADD  CONSTRAINT [FK_ProductRange_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[ProductRange] CHECK CONSTRAINT [FK_ProductRange_Manufacturer]
GO
ALTER TABLE [dbo].[ProductSubType]  WITH CHECK ADD  CONSTRAINT [FK_ProductSubType_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[ProductSubType] CHECK CONSTRAINT [FK_ProductSubType_ProductType]
GO
ALTER TABLE [dbo].[ProductSubTypeML]  WITH CHECK ADD  CONSTRAINT [FK_ProductSubTypeML_ProductSubType] FOREIGN KEY([ProductSubTypeID])
REFERENCES [dbo].[ProductSubType] ([ID])
GO
ALTER TABLE [dbo].[ProductSubTypeML] CHECK CONSTRAINT [FK_ProductSubTypeML_ProductSubType]
GO
ALTER TABLE [dbo].[ProductTypeML]  WITH CHECK ADD  CONSTRAINT [FK_ProductTypeML_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[ProductTypeML] CHECK CONSTRAINT [FK_ProductTypeML_ProductType]
GO
ALTER TABLE [dbo].[ResourcePermission]  WITH CHECK ADD  CONSTRAINT [FK_ResourcePermission_Permission] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permission] ([ID])
GO
ALTER TABLE [dbo].[ResourcePermission] CHECK CONSTRAINT [FK_ResourcePermission_Permission]
GO
ALTER TABLE [dbo].[ResourcePermission]  WITH CHECK ADD  CONSTRAINT [FK_ResourcePermission_Resource] FOREIGN KEY([ResourceID])
REFERENCES [dbo].[Resource] ([ID])
GO
ALTER TABLE [dbo].[ResourcePermission] CHECK CONSTRAINT [FK_ResourcePermission_Resource]
GO
ALTER TABLE [dbo].[RoleResourcePermission]  WITH CHECK ADD  CONSTRAINT [FK_RoleResourcePermission_ResourcePermission] FOREIGN KEY([ResourcePermissionID])
REFERENCES [dbo].[ResourcePermission] ([ID])
GO
ALTER TABLE [dbo].[RoleResourcePermission] CHECK CONSTRAINT [FK_RoleResourcePermission_ResourcePermission]
GO
ALTER TABLE [dbo].[RoleResourcePermission]  WITH CHECK ADD  CONSTRAINT [FK_RoleResourcePermission_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[RoleResourcePermission] CHECK CONSTRAINT [FK_RoleResourcePermission_Role]
GO
ALTER TABLE [dbo].[StockistLanguage]  WITH CHECK ADD  CONSTRAINT [FK_StockistLanguage_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Language] ([ID])
GO
ALTER TABLE [dbo].[StockistLanguage] CHECK CONSTRAINT [FK_StockistLanguage_Language]
GO
ALTER TABLE [dbo].[StockistLanguage]  WITH CHECK ADD  CONSTRAINT [FK_StockistLanguage_Stockist] FOREIGN KEY([StockistID])
REFERENCES [dbo].[Stockist] ([ID])
GO
ALTER TABLE [dbo].[StockistLanguage] CHECK CONSTRAINT [FK_StockistLanguage_Stockist]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Job] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([ID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Job]
GO
ALTER TABLE [dbo].[TradeCounterLanguage]  WITH CHECK ADD  CONSTRAINT [FK_TradeCounterLanguage_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Language] ([ID])
GO
ALTER TABLE [dbo].[TradeCounterLanguage] CHECK CONSTRAINT [FK_TradeCounterLanguage_Language]
GO
ALTER TABLE [dbo].[TradeCounterLanguage]  WITH CHECK ADD  CONSTRAINT [FK_TradeCounterLanguage_TradeCounter] FOREIGN KEY([TradeCounterID])
REFERENCES [dbo].[TradeCounter] ([ID])
GO
ALTER TABLE [dbo].[TradeCounterLanguage] CHECK CONSTRAINT [FK_TradeCounterLanguage_TradeCounter]
GO
ALTER TABLE [dbo].[TradeCounterManufacturerGroup]  WITH CHECK ADD  CONSTRAINT [FK_TradeCounterManufacturerGroup_ManufacturerGroup] FOREIGN KEY([ManufacturerGroupID])
REFERENCES [dbo].[ManufacturerGroup] ([ID])
GO
ALTER TABLE [dbo].[TradeCounterManufacturerGroup] CHECK CONSTRAINT [FK_TradeCounterManufacturerGroup_ManufacturerGroup]
GO
ALTER TABLE [dbo].[TradeCounterManufacturerGroup]  WITH CHECK ADD  CONSTRAINT [FK_TradeCounterManufacturerGroup_TradeCounter] FOREIGN KEY([TradeCounterID])
REFERENCES [dbo].[TradeCounter] ([ID])
GO
ALTER TABLE [dbo].[TradeCounterManufacturerGroup] CHECK CONSTRAINT [FK_TradeCounterManufacturerGroup_TradeCounter]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
ALTER TABLE [dbo].[UserRoleFieldServiceCompany]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleFieldServiceCompany_FieldServiceCompany] FOREIGN KEY([FieldServiceCompanyID])
REFERENCES [dbo].[FieldServiceCompany] ([ID])
GO
ALTER TABLE [dbo].[UserRoleFieldServiceCompany] CHECK CONSTRAINT [FK_UserRoleFieldServiceCompany_FieldServiceCompany]
GO
ALTER TABLE [dbo].[UserRoleFieldServiceCompany]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleFieldServiceCompany_UserRole] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRole] ([ID])
GO
ALTER TABLE [dbo].[UserRoleFieldServiceCompany] CHECK CONSTRAINT [FK_UserRoleFieldServiceCompany_UserRole]
GO
ALTER TABLE [dbo].[UserRoleManufacturer]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleManufacturer_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[UserRoleManufacturer] CHECK CONSTRAINT [FK_UserRoleManufacturer_Manufacturer]
GO
ALTER TABLE [dbo].[UserRoleManufacturer]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleManufacturer_UserRole] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRole] ([ID])
GO
ALTER TABLE [dbo].[UserRoleManufacturer] CHECK CONSTRAINT [FK_UserRoleManufacturer_UserRole]
GO
ALTER TABLE [dbo].[UserRoleManufacturerGroup]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleManufacturerGroup_ManufacturerGroup] FOREIGN KEY([ManufacturerGroupID])
REFERENCES [dbo].[ManufacturerGroup] ([ID])
GO
ALTER TABLE [dbo].[UserRoleManufacturerGroup] CHECK CONSTRAINT [FK_UserRoleManufacturerGroup_ManufacturerGroup]
GO
ALTER TABLE [dbo].[UserRoleManufacturerGroup]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleManufacturerGroup_UserRole] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRole] ([ID])
GO
ALTER TABLE [dbo].[UserRoleManufacturerGroup] CHECK CONSTRAINT [FK_UserRoleManufacturerGroup_UserRole]
GO
ALTER TABLE [dbo].[UserRoleStockist]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleStockist_Stockist] FOREIGN KEY([StockistID])
REFERENCES [dbo].[Stockist] ([ID])
GO
ALTER TABLE [dbo].[UserRoleStockist] CHECK CONSTRAINT [FK_UserRoleStockist_Stockist]
GO
ALTER TABLE [dbo].[UserRoleStockist]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleStockist_UserRole] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRole] ([ID])
GO
ALTER TABLE [dbo].[UserRoleStockist] CHECK CONSTRAINT [FK_UserRoleStockist_UserRole]
GO
ALTER TABLE [dbo].[UserRoleTradeCounter]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleTradeCounter_TradeCounter] FOREIGN KEY([TradeCounterID])
REFERENCES [dbo].[TradeCounter] ([ID])
GO
ALTER TABLE [dbo].[UserRoleTradeCounter] CHECK CONSTRAINT [FK_UserRoleTradeCounter_TradeCounter]
GO
ALTER TABLE [dbo].[UserRoleTradeCounter]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleTradeCounter_UserRole] FOREIGN KEY([ID])
REFERENCES [dbo].[UserRole] ([ID])
GO
ALTER TABLE [dbo].[UserRoleTradeCounter] CHECK CONSTRAINT [FK_UserRoleTradeCounter_UserRole]
GO
USE [master]
GO
ALTER DATABASE [Nomadycs] SET  READ_WRITE 
GO
