USE [Assignment_C5]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/16/2021 7:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonhangChitiets]    Script Date: 6/16/2021 7:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonhangChitiets](
	[ChitietID] [int] IDENTITY(1,1) NOT NULL,
	[DonhangID] [int] NOT NULL,
	[MonAnID] [int] NOT NULL,
	[Soluong] [int] NOT NULL,
	[Thanhtien] [float] NOT NULL,
	[Ghichu] [nvarchar](250) NULL,
 CONSTRAINT [PK_DonhangChitiets] PRIMARY KEY CLUSTERED 
(
	[ChitietID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donhangs]    Script Date: 6/16/2021 7:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhangs](
	[DonhangID] [int] IDENTITY(1,1) NOT NULL,
	[KhachhangID] [int] NOT NULL,
	[Ngaydat] [datetime2](7) NOT NULL,
	[Tongtien] [float] NOT NULL,
	[TrangthaiDonhang] [int] NOT NULL,
	[Ghichu] [nvarchar](250) NULL,
 CONSTRAINT [PK_Donhangs] PRIMARY KEY CLUSTERED 
(
	[DonhangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khachhangs]    Script Date: 6/16/2021 7:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khachhangs](
	[KhachhangID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](150) NOT NULL,
	[Ngaysinh] [datetime2](7) NULL,
	[PhoneNumber] [varchar](15) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[ConfirmPassword] [varchar](50) NOT NULL,
	[Mota] [nvarchar](250) NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Khachhangs] PRIMARY KEY CLUSTERED 
(
	[KhachhangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonAns]    Script Date: 6/16/2021 7:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonAns](
	[MonAnID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Gia] [float] NOT NULL,
	[Phanloai] [int] NOT NULL,
	[Hinh] [nvarchar](100) NULL,
	[Mota] [nvarchar](250) NULL,
	[Trangthai] [bit] NOT NULL,
 CONSTRAINT [PK_MonAns] PRIMARY KEY CLUSTERED 
(
	[MonAnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidungs]    Script Date: 6/16/2021 7:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidungs](
	[NguoidungID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[DOB] [datetime2](7) NULL,
	[Admin] [bit] NOT NULL,
	[Locked] [bit] NOT NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nguoidungs] PRIMARY KEY CLUSTERED 
(
	[NguoidungID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210604131925_TaoDatabase', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210604145618_TaoDatabase2', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210606074421_TaoDatabase3', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210612144159_TaoDatabase4', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210614084902_TaoDatabase5', N'3.1.10')
GO
SET IDENTITY_INSERT [dbo].[DonhangChitiets] ON 

INSERT [dbo].[DonhangChitiets] ([ChitietID], [DonhangID], [MonAnID], [Soluong], [Thanhtien], [Ghichu]) VALUES (1, 1, 34, 1, 41000, N'')
INSERT [dbo].[DonhangChitiets] ([ChitietID], [DonhangID], [MonAnID], [Soluong], [Thanhtien], [Ghichu]) VALUES (2, 1, 33, 1, 29000, N'')
INSERT [dbo].[DonhangChitiets] ([ChitietID], [DonhangID], [MonAnID], [Soluong], [Thanhtien], [Ghichu]) VALUES (3, 1, 32, 1, 57000, N'')
INSERT [dbo].[DonhangChitiets] ([ChitietID], [DonhangID], [MonAnID], [Soluong], [Thanhtien], [Ghichu]) VALUES (4, 3, 29, 3, 123000, N'')
INSERT [dbo].[DonhangChitiets] ([ChitietID], [DonhangID], [MonAnID], [Soluong], [Thanhtien], [Ghichu]) VALUES (5, 3, 22, 1, 85000, N'')
INSERT [dbo].[DonhangChitiets] ([ChitietID], [DonhangID], [MonAnID], [Soluong], [Thanhtien], [Ghichu]) VALUES (6, 4, 31, 1, 42000, N'')
INSERT [dbo].[DonhangChitiets] ([ChitietID], [DonhangID], [MonAnID], [Soluong], [Thanhtien], [Ghichu]) VALUES (7, 4, 28, 1, 68000, N'')
SET IDENTITY_INSERT [dbo].[DonhangChitiets] OFF
GO
SET IDENTITY_INSERT [dbo].[Donhangs] ON 

INSERT [dbo].[Donhangs] ([DonhangID], [KhachhangID], [Ngaydat], [Tongtien], [TrangthaiDonhang], [Ghichu]) VALUES (1, 1, CAST(N'2021-06-15T16:57:21.3002911' AS DateTime2), 127000, 1, N'')
INSERT [dbo].[Donhangs] ([DonhangID], [KhachhangID], [Ngaydat], [Tongtien], [TrangthaiDonhang], [Ghichu]) VALUES (2, 2, CAST(N'2021-06-15T20:16:06.0534621' AS DateTime2), 0, 1, N'')
INSERT [dbo].[Donhangs] ([DonhangID], [KhachhangID], [Ngaydat], [Tongtien], [TrangthaiDonhang], [Ghichu]) VALUES (3, 4, CAST(N'2021-06-15T20:23:53.6797031' AS DateTime2), 208000, 1, N'')
INSERT [dbo].[Donhangs] ([DonhangID], [KhachhangID], [Ngaydat], [Tongtien], [TrangthaiDonhang], [Ghichu]) VALUES (4, 4, CAST(N'2021-06-15T20:24:06.1462289' AS DateTime2), 110000, 1, N'')
SET IDENTITY_INSERT [dbo].[Donhangs] OFF
GO
SET IDENTITY_INSERT [dbo].[Khachhangs] ON 

INSERT [dbo].[Khachhangs] ([KhachhangID], [FullName], [Ngaysinh], [PhoneNumber], [Password], [ConfirmPassword], [Mota], [Address], [Email]) VALUES (1, N'dung', CAST(N'2021-06-14T14:59:00.0000000' AS DateTime2), N'0396313488', N'C4CA4238A0B923820DCC509A6F75849B', N'C4CA4238A0B923820DCC509A6F75849B', N'deptrai', N'fsafh2', N'dung@gmail.com')
INSERT [dbo].[Khachhangs] ([KhachhangID], [FullName], [Ngaysinh], [PhoneNumber], [Password], [ConfirmPassword], [Mota], [Address], [Email]) VALUES (2, N'Lâm Huy', CAST(N'2021-06-15T17:02:00.0000000' AS DateTime2), N'0344229229', N'C4CA4238A0B923820DCC509A6F75849B', N'C4CA4238A0B923820DCC509A6F75849B', N'huyhuy', N'hcm', N'huylam@gmail.com')
INSERT [dbo].[Khachhangs] ([KhachhangID], [FullName], [Ngaysinh], [PhoneNumber], [Password], [ConfirmPassword], [Mota], [Address], [Email]) VALUES (3, N'Phương Uyên', CAST(N'0001-01-01T01:01:00.0000000' AS DateTime2), N'0393034633', N'C4CA4238A0B923820DCC509A6F75849B', N'C4CA4238A0B923820DCC509A6F75849B', N'phuonguyen', N'hcm', N'uyenpham@gmail.com')
INSERT [dbo].[Khachhangs] ([KhachhangID], [FullName], [Ngaysinh], [PhoneNumber], [Password], [ConfirmPassword], [Mota], [Address], [Email]) VALUES (4, N'Viết Văn', CAST(N'2002-02-02T14:02:00.0000000' AS DateTime2), N'0345678912', N'C4CA4238A0B923820DCC509A6F75849B', N'C4CA4238A0B923820DCC509A6F75849B', NULL, N'hcm', N'vietvan@gmail.com')
INSERT [dbo].[Khachhangs] ([KhachhangID], [FullName], [Ngaysinh], [PhoneNumber], [Password], [ConfirmPassword], [Mota], [Address], [Email]) VALUES (5, N'Viết Văn', CAST(N'2002-02-02T14:02:00.0000000' AS DateTime2), N'0345678912', N'C4CA4238A0B923820DCC509A6F75849B', N'C4CA4238A0B923820DCC509A6F75849B', NULL, N'hcm', N'vietvan@gmail.com')
INSERT [dbo].[Khachhangs] ([KhachhangID], [FullName], [Ngaysinh], [PhoneNumber], [Password], [ConfirmPassword], [Mota], [Address], [Email]) VALUES (6, N'Thanh Sơn', CAST(N'2005-05-05T05:55:00.0000000' AS DateTime2), N'0357923781', N'C4CA4238A0B923820DCC509A6F75849B', N'C4CA4238A0B923820DCC509A6F75849B', NULL, N'hcm', N'thanson@gmail.com')
INSERT [dbo].[Khachhangs] ([KhachhangID], [FullName], [Ngaysinh], [PhoneNumber], [Password], [ConfirmPassword], [Mota], [Address], [Email]) VALUES (7, N'Quang Đức', CAST(N'2001-04-07T03:43:00.0000000' AS DateTime2), N'0246873182', N'C4CA4238A0B923820DCC509A6F75849B', N'C4CA4238A0B923820DCC509A6F75849B', NULL, N'hcm', N'quangduc@gmail.com')
INSERT [dbo].[Khachhangs] ([KhachhangID], [FullName], [Ngaysinh], [PhoneNumber], [Password], [ConfirmPassword], [Mota], [Address], [Email]) VALUES (8, N'Quang Đức', CAST(N'2001-04-07T03:43:00.0000000' AS DateTime2), N'0246873182', N'C4CA4238A0B923820DCC509A6F75849B', N'C4CA4238A0B923820DCC509A6F75849B', NULL, N'hcm', N'quangduc@gmail.com')
INSERT [dbo].[Khachhangs] ([KhachhangID], [FullName], [Ngaysinh], [PhoneNumber], [Password], [ConfirmPassword], [Mota], [Address], [Email]) VALUES (9, N'Chinh Chu', CAST(N'2021-06-16T19:25:00.0000000' AS DateTime2), N'0323232323', N'C4CA4238A0B923820DCC509A6F75849B', N'C4CA4238A0B923820DCC509A6F75849B', N'chinh chu', N'hcm', N'chinhchu@gmail.com')
SET IDENTITY_INSERT [dbo].[Khachhangs] OFF
GO
SET IDENTITY_INSERT [dbo].[MonAns] ON 

INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (22, N'COMBO KFC FOODBALL HD1', 85000, 1, N'kfc football 1.jpg', N'1 Miếng Gà Truyền Thống / 1 Miếng Gà Giòn Cay / 1 Miếng Gà Giòn Không Cay - 1 Burger Tôm / 1 Mì Ý Xốt Cà Xúc Xích Gà Viên / 1 Gà Popcorn (vừa) - 1 Bắp Cải Trộn (Vừa) - 1 Phiếu Cào Tham Gia Dự Đoán 1 Pepsi Lon', 1)
INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (23, N'COMBO KFC FOODBALL HD2', 145000, 1, N'kfc football 2.jpg', N'3 Miếng Gà Truyền Thống / 3 Miếng Gà Giòn Cay / 3 Miếng Gà Giòn Không Cay - 1 Mì Ý Xốt Cà Xúc Xích Gà Viên / 1 Gà Popcorn (vừa) / 1 Burger Tôm - 2 Phiếu Cào Tham Gia Dự Đoán - 2 Pepsi Lon', 1)
INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (24, N'COMBO HÈ 1', 89000, 1, N'combo he 1.jpg', N'3 Miếng Gà Truyền Thống / 3 Miếng Gà Giòn Cay / 3 Miếng Gà Giòn Không Cay - 1 Pepsi Lon', 1)
INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (25, N'COMBO NHÓM A', 129000, 1, N'combo 1.jpg', N'2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền thống - 1 Burger Tôm - 2 Pepsi Lon', 1)
INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (26, N'Cơm Gà Truyền Thống', 41000, 2, N'cơm gà.jpg', N'Cơm Gà Truyền Thống (1 Phần)', 1)
INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (28, N'Gà Rán', 68000, 2, N'ga ran 1.jpg', N'2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền thống', 1)
INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (29, N'Cơm Phi Lê Gà Giòn', 41000, 2, N'com phi le.jpg', N'Cơm Phi Lê Gà Giòn (1 Phần)', 1)
INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (31, N'Burger Tôm', 42000, 2, N'burger.jpg', N'Burger Tôm (1 Phần)', 1)
INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (32, N'Popcorn', 57000, 2, N'popcorn.jpg', NULL, 1)
INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (33, N'Khoai Tây Viên Nhân Gravy', 29000, 2, N'khoai tay nhan.jpg', NULL, 1)
INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (34, N'Cá Thanh', 41000, 2, N'thanh ca.jpg', NULL, 1)
INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (35, N'Khoai Tây Chiên', 37000, 2, N'khoai tay chien.jpg', NULL, 1)
INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (36, N'Aquafina', 15000, 3, N'aquafina.jpg', NULL, 1)
INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (37, N'Pepsi Lon', 17000, 3, N'pepsi.jpg', NULL, 1)
INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (38, N'Hộp Milo', 19000, 3, N'milo.jpg', NULL, 1)
INSERT [dbo].[MonAns] ([MonAnID], [Name], [Gia], [Phanloai], [Hinh], [Mota], [Trangthai]) VALUES (39, N'Trà Đào', 24000, 3, N'tra dao.jpg', NULL, 1)
SET IDENTITY_INSERT [dbo].[MonAns] OFF
GO
SET IDENTITY_INSERT [dbo].[Nguoidungs] ON 

INSERT [dbo].[Nguoidungs] ([NguoidungID], [UserName], [FullName], [Email], [Title], [DOB], [Admin], [Locked], [Password]) VALUES (1, N'huylam', N'Lâm Gia Huy', N'giahuyy1006@gmail.com', N'Quản Lý', CAST(N'2001-06-10T11:11:00.0000000' AS DateTime2), 1, 1, N'B8C27DD4D55DD6925E555FAD62949F41')
INSERT [dbo].[Nguoidungs] ([NguoidungID], [UserName], [FullName], [Email], [Title], [DOB], [Admin], [Locked], [Password]) VALUES (3, N'phuongdung', N'Lâm Phương Dung', N'phuongdung@gmail.com', N'Quản Lý', CAST(N'2000-01-01T01:01:00.0000000' AS DateTime2), 1, 1, N'C4CA4238A0B923820DCC509A6F75849B')
SET IDENTITY_INSERT [dbo].[Nguoidungs] OFF
GO
ALTER TABLE [dbo].[Khachhangs] ADD  DEFAULT (N'') FOR [Address]
GO
ALTER TABLE [dbo].[Khachhangs] ADD  DEFAULT (N'') FOR [Email]
GO
ALTER TABLE [dbo].[DonhangChitiets]  WITH CHECK ADD  CONSTRAINT [FK_DonhangChitiets_Donhangs_DonhangID] FOREIGN KEY([DonhangID])
REFERENCES [dbo].[Donhangs] ([DonhangID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonhangChitiets] CHECK CONSTRAINT [FK_DonhangChitiets_Donhangs_DonhangID]
GO
ALTER TABLE [dbo].[DonhangChitiets]  WITH CHECK ADD  CONSTRAINT [FK_DonhangChitiets_MonAns_MonAnID] FOREIGN KEY([MonAnID])
REFERENCES [dbo].[MonAns] ([MonAnID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonhangChitiets] CHECK CONSTRAINT [FK_DonhangChitiets_MonAns_MonAnID]
GO
ALTER TABLE [dbo].[Donhangs]  WITH CHECK ADD  CONSTRAINT [FK_Donhangs_Khachhangs_KhachhangID] FOREIGN KEY([KhachhangID])
REFERENCES [dbo].[Khachhangs] ([KhachhangID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Donhangs] CHECK CONSTRAINT [FK_Donhangs_Khachhangs_KhachhangID]
GO
