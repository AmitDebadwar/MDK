GO
USE [MDK_DB]
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
INSERT [dbo].[UserMangement] ([Uid], [Role], [LoginName], [Password], [IsActive]) VALUES (2, N'Admin', N'mohan', N'mohan', 1)
INSERT [dbo].[UserMangement] ([Uid], [Role], [LoginName], [Password], [IsActive]) VALUES (3, N'Accountant', N'anand', N'anand', 0)
SET IDENTITY_INSERT [dbo].[UserMangement] OFF
/****** Object:  Table [dbo].[RoleMangemant]    Script Date: 03/13/2016 23:33:31 ******/
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
SET IDENTITY_INSERT [dbo].[RoleMangemant] ON
INSERT [dbo].[RoleMangemant] ([Rid], [RoleName]) VALUES (1, N'SuperAdmin')
INSERT [dbo].[RoleMangemant] ([Rid], [RoleName]) VALUES (2, N'Admin')
INSERT [dbo].[RoleMangemant] ([Rid], [RoleName]) VALUES (3, N'Accountant')
SET IDENTITY_INSERT [dbo].[RoleMangemant] OFF
/****** Object:  Table [dbo].[PersonalInformation]    Script Date: 03/13/2016 23:33:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalInformation](
	[Pid] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Address] [nvarchar](1000) NULL,
	[ContactNo] [nvarchar](20) NULL,
	[AlternateNo] [nvarchar](20) NULL,
	[EmailID] [nvarchar](200) NULL,
	[DateOfBirth] [nvarchar](100) NULL,
	[BusinessName] [nvarchar](100) NULL,
	[BusinessType] [nvarchar](20) NULL,
	[BusinessGUID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Personal_Info] PRIMARY KEY CLUSTERED 
(
	[BusinessGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PersonalInformation] ON
INSERT [dbo].[PersonalInformation] ([Pid], [FirstName], [MiddleName], [LastName], [Address], [ContactNo], [AlternateNo], [EmailID], [DateOfBirth], [BusinessName], [BusinessType], [BusinessGUID]) VALUES (1, N'Amit', N'Chandrakant', N'Debadwar', N'Amit Debadwar, C/o Parag Pathak, near hotel Rajwada Someshwarwadi Pashan, Pune.
455667', N'+919096174175', NULL, N'amit.debadwar@gmail.com', N'1985-12-10T18:30:00.000Z', N'Synechron PVT LTD', N'Partnership', N'XHQF-39609833')
SET IDENTITY_INSERT [dbo].[PersonalInformation] OFF
/****** Object:  Table [dbo].[OtherInfo]    Script Date: 03/13/2016 23:33:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceTaxNumber] [nvarchar](50) NULL,
	[ExciseNumber] [nvarchar](200) NULL,
	[PFESINumber] [nvarchar](50) NULL,
	[BusinessGUID] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OtherInfo] ON
INSERT [dbo].[OtherInfo] ([Id], [ServiceTaxNumber], [ExciseNumber], [PFESINumber], [BusinessGUID]) VALUES (1, N'AMIT0786786', N'AMIT0786786', N'AMIT0786786', N'XHQF-39609833')
SET IDENTITY_INSERT [dbo].[OtherInfo] OFF
/****** Object:  Table [dbo].[ITInfo]    Script Date: 03/13/2016 23:33:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ITInfo](
	[Pid] [int] IDENTITY(1,1) NOT NULL,
	[IncomeTax] [nvarchar](50) NULL,
	[PAN_NO] [nvarchar](50) NULL,
	[TAN_NO] [nvarchar](50) NULL,
	[VAT_NO] [nvarchar](50) NULL,
	[CST_NO] [nvarchar](50) NULL,
	[PTRC_NO] [nvarchar](50) NULL,
	[PTEC_NO] [nvarchar](50) NULL,
	[SalesTax] [nvarchar](50) NULL,
	[BusinessGUID] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ITInfo] ON
INSERT [dbo].[ITInfo] ([Pid], [IncomeTax], [PAN_NO], [TAN_NO], [VAT_NO], [CST_NO], [PTRC_NO], [PTEC_NO], [SalesTax], [BusinessGUID]) VALUES (1, N'', N'ANCPD8556N', N'TAN786786', N'VAT786786', N'CST786786', N'PTRC-786786', N'PTECNO786786', N'', N'XHQF-39609833')
SET IDENTITY_INSERT [dbo].[ITInfo] OFF
/****** Object:  Table [dbo].[BankInfo]    Script Date: 03/13/2016 23:33:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BankName] [nvarchar](200) NULL,
	[Branch] [nvarchar](200) NULL,
	[AccountNo] [nvarchar](50) NULL,
	[IFSC_CODE] [nvarchar](50) NULL,
	[MICR_CODE] [nvarchar](50) NULL,
	[BANK_ADDRESS] [nvarchar](500) NULL,
	[BANK_CONTACT_NO] [nvarchar](100) NULL,
	[BusinessGUID] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BankInfo] ON
INSERT [dbo].[BankInfo] ([Id], [BankName], [Branch], [AccountNo], [IFSC_CODE], [MICR_CODE], [BANK_ADDRESS], [BANK_CONTACT_NO], [BusinessGUID]) VALUES (1, N'ICICI', N'Baner', N'098501512600', N'ICICI980086', N'ICICI786786', NULL, NULL, N'XHQF-39609833')
SET IDENTITY_INSERT [dbo].[BankInfo] OFF
/****** Object:  ForeignKey [FK__OtherInfo__Busin__47DBAE45]    Script Date: 03/13/2016 23:33:31 ******/
ALTER TABLE [dbo].[OtherInfo]  WITH CHECK ADD FOREIGN KEY([BusinessGUID])
REFERENCES [dbo].[PersonalInformation] ([BusinessGUID])
GO
/****** Object:  ForeignKey [FK__OtherInfo__Busin__5165187F]    Script Date: 03/13/2016 23:33:31 ******/
ALTER TABLE [dbo].[OtherInfo]  WITH CHECK ADD FOREIGN KEY([BusinessGUID])
REFERENCES [dbo].[PersonalInformation] ([BusinessGUID])
GO
/****** Object:  ForeignKey [FK__ITInfo__Business__46E78A0C]    Script Date: 03/13/2016 23:33:31 ******/
ALTER TABLE [dbo].[ITInfo]  WITH CHECK ADD FOREIGN KEY([BusinessGUID])
REFERENCES [dbo].[PersonalInformation] ([BusinessGUID])
GO
/****** Object:  ForeignKey [FK__ITInfo__Business__5070F446]    Script Date: 03/13/2016 23:33:31 ******/
ALTER TABLE [dbo].[ITInfo]  WITH CHECK ADD FOREIGN KEY([BusinessGUID])
REFERENCES [dbo].[PersonalInformation] ([BusinessGUID])
GO
/****** Object:  ForeignKey [FK__BankInfo__Busine__44FF419A]    Script Date: 03/13/2016 23:33:31 ******/
ALTER TABLE [dbo].[BankInfo]  WITH CHECK ADD FOREIGN KEY([BusinessGUID])
REFERENCES [dbo].[PersonalInformation] ([BusinessGUID])
GO
/****** Object:  ForeignKey [FK__BankInfo__Busine__45F365D3]    Script Date: 03/13/2016 23:33:31 ******/
ALTER TABLE [dbo].[BankInfo]  WITH CHECK ADD FOREIGN KEY([BusinessGUID])
REFERENCES [dbo].[PersonalInformation] ([BusinessGUID])
GO
/****** Object:  ForeignKey [FK__BankInfo__Busine__4E88ABD4]    Script Date: 03/13/2016 23:33:31 ******/
ALTER TABLE [dbo].[BankInfo]  WITH CHECK ADD FOREIGN KEY([BusinessGUID])
REFERENCES [dbo].[PersonalInformation] ([BusinessGUID])
GO
/****** Object:  ForeignKey [FK__BankInfo__Busine__4F7CD00D]    Script Date: 03/13/2016 23:33:31 ******/
ALTER TABLE [dbo].[BankInfo]  WITH CHECK ADD FOREIGN KEY([BusinessGUID])
REFERENCES [dbo].[PersonalInformation] ([BusinessGUID])
GO
