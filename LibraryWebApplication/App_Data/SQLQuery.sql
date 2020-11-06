/****** Object:  Table [dbo].[Author]    Script Date: 4/4/2020 5:30:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](100) NOT NULL,
	[AuthorBirthDate] [date] NULL,
	[AuthorNationality] [int] NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book]    Script Date: 4/4/2020 5:30:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](250) NOT NULL,
	[BookReleaseDate] [date] NOT NULL,
	[BookPagesNumber] [int] NOT NULL,
	[SubCategory] [nvarchar](100) NULL,
	[BookPrice] [real] NOT NULL,
	[BookCount] [smallint] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[AuthorID] [int] NOT NULL,
	[PublisherID] [int] NOT NULL,
	[PlaceID] [int] NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/4/2020 5:30:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 4/4/2020 5:30:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Place]    Script Date: 4/4/2020 5:30:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Place](
	[PlaceID] [int] IDENTITY(1,1) NOT NULL,
	[PlaceName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Place] PRIMARY KEY CLUSTERED 
(
	[PlaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 4/4/2020 5:30:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[PublisherID] [int] IDENTITY(1,1) NOT NULL,
	[PublisherName] [nvarchar](100) NOT NULL,
	[PublisherCountry] [int] NOT NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[PublisherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'أدب
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'أشغال عامة
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'العلوم الاجتماعية
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'اللغة
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'تاريخ وجغرافيا
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (6, N'تجارة
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (7, N'تكنولوجيا
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (8, N'دين
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (9, N'زراعة
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (10, N'صناعة
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (11, N'علم النفس
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (12, N'علوم الاجتماعية
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (13, N'علوم الحاسب
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (14, N'علوم تربوية
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (15, N'علوم
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (16, N'فلسفة
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (17, N'فنون وترفيه
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (18, N'هندسة
')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (1, N'الأردن')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (2, N'الإمارات')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (3, N'البحرين')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (4, N'الجزائر')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (5, N'السعودية')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (6, N'السودان')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (7, N'الصومال')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (8, N'العراق')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (9, N'الكويت')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (10, N'المغرب')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (11, N'اليمن')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (12, N'تونس')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (13, N'جزر القمر')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (14, N'جيبوتي')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (15, N'سورية')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (16, N'عمان')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (17, N'فلسطين')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (18, N'قطر')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (19, N'لبنان')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (20, N'ليبيا')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (21, N'مصر')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (22, N'موريتانيا')
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Place] ON 

INSERT [dbo].[Place] ([PlaceID], [PlaceName]) VALUES (1, N'أ1')
INSERT [dbo].[Place] ([PlaceID], [PlaceName]) VALUES (2, N'أ2')
INSERT [dbo].[Place] ([PlaceID], [PlaceName]) VALUES (3, N'ب1')
INSERT [dbo].[Place] ([PlaceID], [PlaceName]) VALUES (4, N'ب2')
INSERT [dbo].[Place] ([PlaceID], [PlaceName]) VALUES (5, N'ت1')
INSERT [dbo].[Place] ([PlaceID], [PlaceName]) VALUES (6, N'ت2')
INSERT [dbo].[Place] ([PlaceID], [PlaceName]) VALUES (7, N'ث1')
INSERT [dbo].[Place] ([PlaceID], [PlaceName]) VALUES (8, N'ث2')
INSERT [dbo].[Place] ([PlaceID], [PlaceName]) VALUES (9, N'ج1')
INSERT [dbo].[Place] ([PlaceID], [PlaceName]) VALUES (10, N'ج2')
INSERT [dbo].[Place] ([PlaceID], [PlaceName]) VALUES (11, N'ح1')
INSERT [dbo].[Place] ([PlaceID], [PlaceName]) VALUES (12, N'ح2')
INSERT [dbo].[Place] ([PlaceID], [PlaceName]) VALUES (13, N'خ1')
INSERT [dbo].[Place] ([PlaceID], [PlaceName]) VALUES (14, N'خ2')
SET IDENTITY_INSERT [dbo].[Place] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_Category]    Script Date: 4/4/2020 5:30:21 AM ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [UK_Category] UNIQUE NONCLUSTERED 
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_Country]    Script Date: 4/4/2020 5:30:21 AM ******/
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [UK_Country] UNIQUE NONCLUSTERED 
(
	[CountryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_Place]    Script Date: 4/4/2020 5:30:21 AM ******/
ALTER TABLE [dbo].[Place] ADD  CONSTRAINT [UK_Place] UNIQUE NONCLUSTERED 
(
	[PlaceName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Author]  WITH CHECK ADD  CONSTRAINT [FK_Author_Country] FOREIGN KEY([AuthorNationality])
REFERENCES [dbo].[Country] ([CountryID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Author] CHECK CONSTRAINT [FK_Author_Country]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Author] ([AuthorID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Place] FOREIGN KEY([PlaceID])
REFERENCES [dbo].[Place] ([PlaceID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Place]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publisher] FOREIGN KEY([PublisherID])
REFERENCES [dbo].[Publisher] ([PublisherID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Publisher]
GO
ALTER TABLE [dbo].[Publisher]  WITH CHECK ADD  CONSTRAINT [FK_Publisher_Country] FOREIGN KEY([PublisherCountry])
REFERENCES [dbo].[Country] ([CountryID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Publisher] CHECK CONSTRAINT [FK_Publisher_Country]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [CK_CountBook] CHECK  (([BookCount]>=(0) AND [BookCount]<=(20)))
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [CK_CountBook]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [CK_PagesNumberBook] CHECK  (([BookPagesNumber]>=(25)))
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [CK_PagesNumberBook]
GO