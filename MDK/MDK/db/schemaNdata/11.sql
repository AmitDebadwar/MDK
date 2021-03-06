GO
USE [MDK_DB]
GO
/* Drop all tables  */

drop table [dbo].UserMangement;
drop table [dbo].RoleMangement;
drop table [dbo].BankInfo;
drop table [dbo].ITInfo;
drop table [dbo].OtherInfo;
drop table [dbo].PersonInfo;
drop table [dbo].ClientInfo;

GO
/****** Object:  Table [dbo].[UserMangement]    Script Date: 03/13/2016 23:33:31 ******/
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
INSERT [dbo].[UserMangement] ([Uid], [Role], [LoginName], [Password], [IsActive]) VALUES (1, N'Admin', N'amit', N'amit', 1)
INSERT [dbo].[UserMangement] ([Uid], [Role], [LoginName], [Password], [IsActive]) VALUES (2, N'Admin', N'shariq', N'shariq', 1)
INSERT [dbo].[UserMangement] ([Uid], [Role], [LoginName], [Password], [IsActive]) VALUES (3, N'Admin', N'mohan', N'mohan', 1)
INSERT [dbo].[UserMangement] ([Uid], [Role], [LoginName], [Password], [IsActive]) VALUES (4, N'Accountant', N'anand', N'anand', 0)
SET IDENTITY_INSERT [dbo].[UserMangement] OFF
/****** Object:  Table [dbo].[RoleMangemant]    Script Date: 03/13/2016 23:33:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMangement](
	[Rid] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_RoleMangement] PRIMARY KEY CLUSTERED 
(
	[Rid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RoleMangement] ON
INSERT [dbo].[RoleMangement] ([Rid], [RoleName]) VALUES (1, N'SuperAdmin')
INSERT [dbo].[RoleMangement] ([Rid], [RoleName]) VALUES (2, N'Admin')
INSERT [dbo].[RoleMangement] ([Rid], [RoleName]) VALUES (3, N'Accountant')
INSERT [dbo].[RoleMangement] ([Rid], [RoleName]) VALUES (4, N'Accountant')
SET IDENTITY_INSERT [dbo].[RoleMangement] OFF
/****** Object:  Table [dbo].[PersonalInformation]    Script Date: 03/13/2016 23:33:31 ******/
SET ANSI_NULLS ON

GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].ClientInfo(
    [id] [int] IDENTITY(1,1) NOT NULL,
	[BPAN] [nvarchar](50) NOT NULL,
	[BusinessType] [nvarchar](50) NOT NULL,
	[BusinessName] [nvarchar](200) NOT NULL,
	[DateOfEstablishment] [nvarchar](50) NOT NULL

	 CONSTRAINT [PK_ClientInfo] PRIMARY KEY CLUSTERED 
(
	[BPAN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON

GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].PersonInfo(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](30) NULL,
	[MiddleName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NULL,
	[ContactNo] [nvarchar](20) NULL,
	[AlternateNo] [nvarchar](20) NULL,
	[EmailID] [nvarchar](100) NULL,
	[DateOfBirth] [nvarchar](50) NULL,
	[Address] [nvarchar](400) NULL,
	[BPAN] [nvarchar](50) NOT NULL

	CONSTRAINT [PK_PersonInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PersonInfo]  WITH CHECK ADD  CONSTRAINT [FK_PersonInfo_ClientInfo] FOREIGN KEY([BPAN])
REFERENCES [dbo].[ClientInfo] ([BPAN])
GO

ALTER TABLE [dbo].[PersonInfo] CHECK CONSTRAINT [FK_PersonInfo_ClientInfo]
GO

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].BankInfo(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BankName] [nvarchar](100) NULL,
	[Branch] [nvarchar](100) NULL,
	[AccountNo] [nvarchar](50) NULL,
	[IfscCode] [nvarchar](50) NULL,
	[MicrCode] [nvarchar](50) NULL,
	[BPAN] [nvarchar](50) NOT NULL

	CONSTRAINT [PK_BankInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[BankInfo]  WITH CHECK ADD  CONSTRAINT [FK_BankInfo_ClientInfo] FOREIGN KEY([BPAN])
REFERENCES [dbo].[ClientInfo] ([BPAN])
GO

ALTER TABLE [dbo].[BankInfo] CHECK CONSTRAINT [FK_BankInfo_ClientInfo]
GO
SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].ITInfo(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PAN] [nvarchar](50) NULL,
	[TAN] [nvarchar](50) NULL,
	[VAT] [nvarchar](50) NULL,
	[CST] [nvarchar](50) NULL,
	[PTEC] [nvarchar](50) NULL,
	[PTRC] [nvarchar](50) NULL,
	[BPAN] [nvarchar](50) NOT NULL

	CONSTRAINT [PK_ITInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ITInfo]  WITH CHECK ADD  CONSTRAINT [FK_ITInfo_ClientInfo] FOREIGN KEY([BPAN])
REFERENCES [dbo].[ClientInfo] ([BPAN])
GO

ALTER TABLE [dbo].[ITInfo] CHECK CONSTRAINT [FK_ITInfo_ClientInfo]
GO
SET ANSI_NULLS ON

GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].OtherInfo(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceTaxNumber] [nvarchar](50) NULL,
	[ExciseNumber] [nvarchar](200) NULL,
	[PFESINumber] [nvarchar](50) NULL,
	[BPAN] [nvarchar](50) NOT NULL

	CONSTRAINT [PK_OtherInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[OtherInfo]  WITH CHECK ADD  CONSTRAINT [FK_OtherInfo_ClientInfo] FOREIGN KEY([BPAN])
REFERENCES [dbo].[ClientInfo] ([BPAN])
GO

ALTER TABLE [dbo].[OtherInfo] CHECK CONSTRAINT [FK_OtherInfo_ClientInfo]
GO

SET ANSI_NULLS ON

GO