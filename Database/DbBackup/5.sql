USE [master]
GO
/****** Object:  Database [MDK_DB]    Script Date: 02/17/2016 17:55:13 ******/
CREATE DATABASE [MDK_DB] ON  PRIMARY 
( NAME = N'MDK_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL.4\MSSQL\DATA\MDK_DB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MDK_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL.4\MSSQL\DATA\MDK_DB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MDK_DB] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MDK_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MDK_DB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [MDK_DB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [MDK_DB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [MDK_DB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [MDK_DB] SET ARITHABORT OFF
GO
ALTER DATABASE [MDK_DB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [MDK_DB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [MDK_DB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [MDK_DB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [MDK_DB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [MDK_DB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [MDK_DB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [MDK_DB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [MDK_DB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [MDK_DB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [MDK_DB] SET  DISABLE_BROKER
GO
ALTER DATABASE [MDK_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [MDK_DB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [MDK_DB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [MDK_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [MDK_DB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [MDK_DB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [MDK_DB] SET  READ_WRITE
GO
ALTER DATABASE [MDK_DB] SET RECOVERY FULL
GO
ALTER DATABASE [MDK_DB] SET  MULTI_USER
GO
ALTER DATABASE [MDK_DB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [MDK_DB] SET DB_CHAINING OFF
GO
USE [MDK_DB]
GO
/****** Object:  User [iwebuser]    Script Date: 02/17/2016 17:55:13 ******/
CREATE USER [iwebuser] FOR LOGIN [iwebuser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[UserMangement]    Script Date: 02/17/2016 17:55:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMangement](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](20) NULL,
	[LoginName] [nvarchar](200) NULL,
	[Password] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserMangement] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserMangement] ON
INSERT [dbo].[UserMangement] ([Uid], [Role], [LoginName], [Password], [IsActive]) VALUES (1, N'Admin', N'amitdebadwar', N'amitdebadwar', 1)
INSERT [dbo].[UserMangement] ([Uid], [Role], [LoginName], [Password], [IsActive]) VALUES (2, N'Admin', N'mohan', N'mohan', 1)
INSERT [dbo].[UserMangement] ([Uid], [Role], [LoginName], [Password], [IsActive]) VALUES (3, N'Accountant', N'anand', N'anand', 0)
SET IDENTITY_INSERT [dbo].[UserMangement] OFF
/****** Object:  Table [dbo].[RoleMangemant]    Script Date: 02/17/2016 17:55:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMangemant](
	[Rid] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_RoleMangemant] PRIMARY KEY CLUSTERED 
(
	[Rid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParsnalInfo]    Script Date: 02/17/2016 17:55:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParsnalInfo](
	[Pid] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddileName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[ContactNo] [nvarchar](200) NULL,
	[EmailID] [nvarchar](500) NULL,
	[DateOfBirth] [nvarchar](70) NULL,
 CONSTRAINT [PK_Parsnal_Info] PRIMARY KEY CLUSTERED 
(
	[Pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ParsnalInfo] ON
INSERT [dbo].[ParsnalInfo] ([Pid], [FirstName], [MiddileName], [LastName], [Address], [ContactNo], [EmailID], [DateOfBirth]) VALUES (1, N'Amit', N'Chandrakant', N'Debadwar', N'A4, Sahdev Avenues, Someshwarwadi, Pashan, Pune. 411033', N'9096174175', N'amit.debadwar@gmail.com', N'11-12-1985')
INSERT [dbo].[ParsnalInfo] ([Pid], [FirstName], [MiddileName], [LastName], [Address], [ContactNo], [EmailID], [DateOfBirth]) VALUES (2, N'Sandeep', N'Udhavrao', N'Bharne', N'Sinhgadroad, Pune', N'9878675687', N'sandeep.bhrne@yahoo.com', N'03-03-1990')
INSERT [dbo].[ParsnalInfo] ([Pid], [FirstName], [MiddileName], [LastName], [Address], [ContactNo], [EmailID], [DateOfBirth]) VALUES (3, N'Anand', N'Udhavrao', N'Bharne', N'Ambegaon Budruk, Pune.', N'9872353874', N'anand@hotmail.com', N'18-05-1996')
INSERT [dbo].[ParsnalInfo] ([Pid], [FirstName], [MiddileName], [LastName], [Address], [ContactNo], [EmailID], [DateOfBirth]) VALUES (4, N'Mohan ', N'', N'Kulkarni', N'Dhayri gaon, Pune', N'9878675645', N'mohan@gmail.com', N'17-11-1985')
INSERT [dbo].[ParsnalInfo] ([Pid], [FirstName], [MiddileName], [LastName], [Address], [ContactNo], [EmailID], [DateOfBirth]) VALUES (5, N'Rajesh', N'Sameer ', N'Mishra', N'Dange chowk, Pune', N'9897656454', N'samer@gmail.com', N'02-02-1997')
INSERT [dbo].[ParsnalInfo] ([Pid], [FirstName], [MiddileName], [LastName], [Address], [ContactNo], [EmailID], [DateOfBirth]) VALUES (6, N'Shraddha', N'Chandrakant', N'Debadwar', N'A4, Sahdev Avenues, Someshwarwadi, Pashan, Pune. 411033', N'8987687465', N'sdebadwar@gmail.com', N'23-01-1990')
INSERT [dbo].[ParsnalInfo] ([Pid], [FirstName], [MiddileName], [LastName], [Address], [ContactNo], [EmailID], [DateOfBirth]) VALUES (7, N'Amar', N'Pravin', N'Rajurkar', N'Lotiya complex, Near Ambamata temple, vazirabad, Nanded.', N'9896546378', N'amrajurkar@gmail.com', N'12-07-1997')
SET IDENTITY_INSERT [dbo].[ParsnalInfo] OFF
/****** Object:  Table [dbo].[ITDetails]    Script Date: 02/17/2016 17:55:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ITDetails](
	[Pid] [int] NULL,
	[IncomeTax] [nvarchar](50) NULL,
	[PAN_NO] [nvarchar](50) NULL,
	[TAN_NO] [nvarchar](50) NULL,
	[SalesTax] [nvarchar](50) NULL,
	[VAT_NO] [nvarchar](50) NULL,
	[CST_NO] [nvarchar](50) NULL,
	[PTRC_NO] [nvarchar](50) NULL,
	[PTEC_NO] [nvarchar](50) NULL,
	[ServiceTaxNo] [nvarchar](50) NULL,
	[ExciseNo] [nvarchar](50) NULL,
	[PFESI_NO] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankInfo]    Script Date: 02/17/2016 17:55:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankInfo](
	[Pid] [int] NULL,
	[BankName] [nvarchar](200) NULL,
	[Branch] [nvarchar](200) NULL,
	[AccountNo] [nvarchar](50) NULL,
	[IFSC_CODE] [nvarchar](50) NULL,
	[MICR_CODE] [nvarchar](50) NULL,
	[BANK_ADDRESS] [nvarchar](500) NULL,
	[BANK_CONTACT_NO] [nvarchar](100) NULL
) ON [PRIMARY]
GO
