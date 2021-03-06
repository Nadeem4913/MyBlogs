USE [BlogDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 01/05/2021 11:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](255) NULL,
	[SLUG] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Post]    Script Date: 01/05/2021 11:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Post](
	[POST_ID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [varchar](2000) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[CATEGORY_ID] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[POST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [NAME], [SLUG]) VALUES (1, N'DotNet Core', N'DotNetCore')
INSERT [dbo].[Category] ([ID], [NAME], [SLUG]) VALUES (2, N'Angular JS', N'AngularJS')
INSERT [dbo].[Category] ([ID], [NAME], [SLUG]) VALUES (3, N'ASP.NET With c#', N'aspnetcore')
INSERT [dbo].[Category] ([ID], [NAME], [SLUG]) VALUES (4, N'SQL SERVER', N'sqlserver')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([POST_ID], [TITLE], [DESCRIPTION], [CATEGORY_ID], [CREATED_DATE]) VALUES (1, N'Test Blog 1 Title 1', N'Test Description Blog news Test Description Blog news Test Description Blog news ', 2, CAST(N'2021-05-01 10:02:00.520' AS DateTime))
INSERT [dbo].[Post] ([POST_ID], [TITLE], [DESCRIPTION], [CATEGORY_ID], [CREATED_DATE]) VALUES (2, N'Test Blog 2 Title 2', N'Test Description Blog news Test Description Blog news Test Description Blog news ', 1, CAST(N'2021-05-01 10:02:00.520' AS DateTime))
INSERT [dbo].[Post] ([POST_ID], [TITLE], [DESCRIPTION], [CATEGORY_ID], [CREATED_DATE]) VALUES (3, N'Test Blog 3 Title 3', N'Test Description Blog news Test Description Blog news Test Description Blog news ', 1, CAST(N'2021-05-01 10:02:00.520' AS DateTime))
INSERT [dbo].[Post] ([POST_ID], [TITLE], [DESCRIPTION], [CATEGORY_ID], [CREATED_DATE]) VALUES (4, N'Test Blog 4 Title 4', N'Test Description Blog news Test Description Blog news Test Description Blog news ', 1, CAST(N'2021-05-01 10:02:00.520' AS DateTime))
SET IDENTITY_INSERT [dbo].[Post] OFF
ALTER TABLE [dbo].[Post]  WITH CHECK ADD FOREIGN KEY([CATEGORY_ID])
REFERENCES [dbo].[Category] ([ID])
GO
