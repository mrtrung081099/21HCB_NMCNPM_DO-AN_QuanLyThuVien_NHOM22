USE [QuanLyThuVien]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/15/2022 11:50:13 AM ******/
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
/****** Object:  Table [dbo].[ChiTietPhieuMuons]    Script Date: 5/15/2022 11:50:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuMuons](
	[ChiTietPhieuMuonId] [uniqueidentifier] NOT NULL,
	[TinhTrang] [nvarchar](max) NULL,
	[PhieuMuonId] [uniqueidentifier] NOT NULL,
	[SachId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuMuons] PRIMARY KEY CLUSTERED 
(
	[ChiTietPhieuMuonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuTras]    Script Date: 5/15/2022 11:50:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuTras](
	[ChiTietPhieuTraId] [uniqueidentifier] NOT NULL,
	[PhieuTraId] [uniqueidentifier] NOT NULL,
	[SachId] [uniqueidentifier] NOT NULL,
	[NgayMuon] [datetime2](7) NOT NULL,
	[SoNgayMuon] [int] NOT NULL,
	[TienPhat] [real] NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuTras] PRIMARY KEY CLUSTERED 
(
	[ChiTietPhieuTraId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietThanhLySachs]    Script Date: 5/15/2022 11:50:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietThanhLySachs](
	[ChiTietThanhLySachId] [uniqueidentifier] NOT NULL,
	[SachId] [uniqueidentifier] NOT NULL,
	[ThanhLySachId] [uniqueidentifier] NOT NULL,
	[LyDoThanhLy] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChiTietThanhLySachs] PRIMARY KEY CLUSTERED 
(
	[ChiTietThanhLySachId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocGias]    Script Date: 5/15/2022 11:50:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGias](
	[DocGiaId] [uniqueidentifier] NOT NULL,
	[HoTen] [nvarchar](60) NOT NULL,
	[Loai] [nvarchar](max) NULL,
	[NgaySinh] [datetime2](7) NOT NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NgayLap] [datetime2](7) NOT NULL,
	[TongNo] [real] NOT NULL,
	[NhanVienId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_DocGias] PRIMARY KEY CLUSTERED 
(
	[DocGiaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanViens]    Script Date: 5/15/2022 11:50:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanViens](
	[NhanVienId] [uniqueidentifier] NOT NULL,
	[HoTen] [nvarchar](60) NOT NULL,
	[DiaChi] [nvarchar](max) NULL,
	[NgaySinh] [datetime2](7) NOT NULL,
	[SDT] [nvarchar](max) NULL,
	[BangCap] [nvarchar](max) NULL,
	[BoPhan] [nvarchar](max) NULL,
	[ChucVu] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhanViens] PRIMARY KEY CLUSTERED 
(
	[NhanVienId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMatSachs]    Script Date: 5/15/2022 11:50:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMatSachs](
	[PhieuMatSachId] [uniqueidentifier] NOT NULL,
	[SachId] [uniqueidentifier] NOT NULL,
	[DocGiaId] [uniqueidentifier] NOT NULL,
	[NhanVienId] [uniqueidentifier] NOT NULL,
	[NgayGhiNhan] [datetime2](7) NOT NULL,
	[TienPhat] [real] NOT NULL,
 CONSTRAINT [PK_PhieuMatSachs] PRIMARY KEY CLUSTERED 
(
	[PhieuMatSachId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuons]    Script Date: 5/15/2022 11:50:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuons](
	[PhieuMuonId] [uniqueidentifier] NOT NULL,
	[DocGiaId] [uniqueidentifier] NOT NULL,
	[NgayMuon] [datetime2](7) NOT NULL,
	[NgayHetHan] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_PhieuMuons] PRIMARY KEY CLUSTERED 
(
	[PhieuMuonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuPhats]    Script Date: 5/15/2022 11:50:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuPhats](
	[PhieuPhatId] [uniqueidentifier] NOT NULL,
	[DocGiaId] [uniqueidentifier] NOT NULL,
	[NhanVienId] [uniqueidentifier] NOT NULL,
	[TienNo] [real] NOT NULL,
	[TienThu] [real] NOT NULL,
	[TienNoConlai] [real] NOT NULL,
	[NgayThu] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_PhieuPhats] PRIMARY KEY CLUSTERED 
(
	[PhieuPhatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuTras]    Script Date: 5/15/2022 11:50:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuTras](
	[PhieuTraId] [uniqueidentifier] NOT NULL,
	[DocGiaId] [uniqueidentifier] NOT NULL,
	[NgayTra] [datetime2](7) NOT NULL,
	[TienPhat] [real] NOT NULL,
	[TienNo] [real] NOT NULL,
	[TongNo] [real] NOT NULL,
 CONSTRAINT [PK_PhieuTras] PRIMARY KEY CLUSTERED 
(
	[PhieuTraId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sachs]    Script Date: 5/15/2022 11:50:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sachs](
	[SachId] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](60) NOT NULL,
	[Loai] [nvarchar](max) NULL,
	[TacGia] [nvarchar](max) NULL,
	[NamSx] [nvarchar](max) NULL,
	[NhaSx] [nvarchar](max) NULL,
	[TinhTrang] [nvarchar](max) NULL,
	[Gia] [real] NOT NULL,
	[NgayTiepNhan] [datetime2](7) NOT NULL,
	[NhanVienId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Sachs] PRIMARY KEY CLUSTERED 
(
	[SachId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhLySachs]    Script Date: 5/15/2022 11:50:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhLySachs](
	[ThanhLySachId] [uniqueidentifier] NOT NULL,
	[NhanVienId] [uniqueidentifier] NOT NULL,
	[NgayThanhLy] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ThanhLySachs] PRIMARY KEY CLUSTERED 
(
	[ThanhLySachId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/15/2022 11:50:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [uniqueidentifier] NOT NULL,
	[Email] [nvarchar](60) NOT NULL,
	[PasswordHash] [nvarchar](max) NOT NULL,
	[PasswordSalt] [nvarchar](max) NOT NULL,
	[RefreshToken] [nvarchar](max) NULL,
	[RefreshTokenExpiryTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220510160104_1', N'5.0.14')
GO
INSERT [dbo].[ChiTietPhieuMuons] ([ChiTietPhieuMuonId], [TinhTrang], [PhieuMuonId], [SachId]) VALUES (N'f97a979d-755d-439f-2533-08da36283e6c', N'Đã Trả', N'fedf4b3a-10c2-483b-a7ab-08da36283e68', N'd368ec22-05e0-4153-4d79-08da33cc7594')
INSERT [dbo].[ChiTietPhieuMuons] ([ChiTietPhieuMuonId], [TinhTrang], [PhieuMuonId], [SachId]) VALUES (N'acbb37f1-ed86-4baa-2534-08da36283e6c', N'Đã Trả', N'3e0dd48c-526f-44d3-a7ac-08da36283e68', N'b8c490bb-91ed-4899-4d78-08da33cc7594')
INSERT [dbo].[ChiTietPhieuMuons] ([ChiTietPhieuMuonId], [TinhTrang], [PhieuMuonId], [SachId]) VALUES (N'6c425e4f-71b1-438b-374e-08da362c8c1f', N'Đã Trả', N'5de2032d-48cc-4496-ff51-08da362c8c1c', N'fb356e65-cdfe-476f-f7a2-08da1def183b')
GO
INSERT [dbo].[ChiTietPhieuTras] ([ChiTietPhieuTraId], [PhieuTraId], [SachId], [NgayMuon], [SoNgayMuon], [TienPhat]) VALUES (N'e93ac79b-362d-4c41-e873-08da362c449e', N'7cd20e1b-b02b-4cce-65e4-08da362c447f', N'b8c490bb-91ed-4899-4d78-08da33cc7594', CAST(N'2022-05-03T04:15:44.7730000' AS DateTime2), 12, 8000)
INSERT [dbo].[ChiTietPhieuTras] ([ChiTietPhieuTraId], [PhieuTraId], [SachId], [NgayMuon], [SoNgayMuon], [TienPhat]) VALUES (N'6f0d6e46-ad4e-4838-e874-08da362c449e', N'7cd20e1b-b02b-4cce-65e4-08da362c447f', N'd368ec22-05e0-4153-4d79-08da33cc7594', CAST(N'2022-05-01T04:05:57.3420000' AS DateTime2), 14, 10000)
GO
INSERT [dbo].[ChiTietThanhLySachs] ([ChiTietThanhLySachId], [SachId], [ThanhLySachId], [LyDoThanhLy]) VALUES (N'ff5f5f87-6403-4dc5-a399-08da362ccafa', N'fb356e65-cdfe-476f-f7a2-08da1def183b', N'c92ef8bd-1bd5-4d41-a442-08da362ccaf7', N'Người Dùng Làm Mất')
GO
INSERT [dbo].[DocGias] ([DocGiaId], [HoTen], [Loai], [NgaySinh], [DiaChi], [Email], [NgayLap], [TongNo], [NhanVienId]) VALUES (N'2dde38f3-4658-4aeb-70e0-08da1dfd1245', N'Khoa', N'X', CAST(N'2022-04-14T02:56:34.0330000' AS DateTime2), N'Q1', N'docgia@gmail.com', CAST(N'2022-04-14T02:56:34.0330000' AS DateTime2), 0, N'49b7f86a-e4bc-484d-cb00-08da329f93bd')
INSERT [dbo].[DocGias] ([DocGiaId], [HoTen], [Loai], [NgaySinh], [DiaChi], [Email], [NgayLap], [TongNo], [NhanVienId]) VALUES (N'13d161e5-77be-4df5-5c4a-08da22d8081e', N'Giang Anh Kiệt', N'Y', CAST(N'2022-04-20T14:13:51.0990000' AS DateTime2), N'Q1 - TPHCM', N'kiet@gmail.com', CAST(N'2022-04-20T14:14:04.0330000' AS DateTime2), 0, N'49b7f86a-e4bc-484d-cb00-08da329f93bd')
INSERT [dbo].[DocGias] ([DocGiaId], [HoTen], [Loai], [NgaySinh], [DiaChi], [Email], [NgayLap], [TongNo], [NhanVienId]) VALUES (N'c9d836eb-ca3b-4b7c-c578-08da33077b88', N'Nhật Minh', N'Y', CAST(N'1999-12-31T17:00:00.0000000' AS DateTime2), N'Q1-TPHCM', N'minh2gmail.com', CAST(N'2021-11-09T17:00:00.0000000' AS DateTime2), 0, N'49b7f86a-e4bc-484d-cb00-08da329f93bd')
INSERT [dbo].[DocGias] ([DocGiaId], [HoTen], [Loai], [NgaySinh], [DiaChi], [Email], [NgayLap], [TongNo], [NhanVienId]) VALUES (N'b643d7c7-5946-485c-faa4-08da33d15ad3', N'Lâm Gia Phan', N'X', CAST(N'1997-04-02T00:00:00.0000000' AS DateTime2), N'Đồng Nai', N'lam97@gmail.com.vn', CAST(N'2022-05-12T04:39:03.5690000' AS DateTime2), 0, N'49b7f86a-e4bc-484d-cb00-08da329f93bd')
INSERT [dbo].[DocGias] ([DocGiaId], [HoTen], [Loai], [NgaySinh], [DiaChi], [Email], [NgayLap], [TongNo], [NhanVienId]) VALUES (N'a6aef9bc-75e4-474d-fc8e-08da3627983e', N'Ngô Kinh', N'X', CAST(N'2000-10-20T00:00:00.0000000' AS DateTime2), N'TPHCM', N'ngokinh@gmail.com', CAST(N'2022-05-15T04:01:20.5930000' AS DateTime2), 0, N'49b7f86a-e4bc-484d-cb00-08da329f93bd')
GO
INSERT [dbo].[NhanViens] ([NhanVienId], [HoTen], [DiaChi], [NgaySinh], [SDT], [BangCap], [BoPhan], [ChucVu]) VALUES (N'70468069-ad60-46a3-c755-08da1def10c6', N'Phạm Quang Trung', N'Q7', CAST(N'1999-08-10T00:00:00.0000000' AS DateTime2), N'097777777', N'Đại Học', N'Ban Giám Đốc', N'Phó Giám Đốc')
INSERT [dbo].[NhanViens] ([NhanVienId], [HoTen], [DiaChi], [NgaySinh], [SDT], [BangCap], [BoPhan], [ChucVu]) VALUES (N'43714dc4-e4f7-46b6-3722-08da1dfce5fe', N'Bùi Văn Sơn', N'Q12', CAST(N'1998-01-07T00:00:00.0000000' AS DateTime2), N'0123124124', N'Đại Học', N'Thủ Kho', N'Nhân Viên')
INSERT [dbo].[NhanViens] ([NhanVienId], [HoTen], [DiaChi], [NgaySinh], [SDT], [BangCap], [BoPhan], [ChucVu]) VALUES (N'49b7f86a-e4bc-484d-cb00-08da329f93bd', N'Dương Nhật Khoa', N'Q7', CAST(N'2000-01-01T16:09:45.6790000' AS DateTime2), N'0977098890', N'Đại Học', N'Thủ Thư', N'Nhân Viên')
INSERT [dbo].[NhanViens] ([NhanVienId], [HoTen], [DiaChi], [NgaySinh], [SDT], [BangCap], [BoPhan], [ChucVu]) VALUES (N'0a522b60-d880-47f4-6d50-08da33d36d31', N'Nguyễn Thanh Dương ', N'TPHCM', CAST(N'1999-10-15T00:00:00.0000000' AS DateTime2), N'0987667890', N'Đại Học', N'Thủ Quỹ', N'Nhân Viên')
INSERT [dbo].[NhanViens] ([NhanVienId], [HoTen], [DiaChi], [NgaySinh], [SDT], [BangCap], [BoPhan], [ChucVu]) VALUES (N'36fea1a3-749a-4680-8621-08da36273761', N'Nguyễn Thị Thảo', N'Q.Tân Phú - TPHCM', CAST(N'1997-07-10T03:58:22.2470000' AS DateTime2), N'0123123543', N'Tiến Sĩ', N'Ban Giám Đốc', N'Giám Đốc')
GO
INSERT [dbo].[PhieuMatSachs] ([PhieuMatSachId], [SachId], [DocGiaId], [NhanVienId], [NgayGhiNhan], [TienPhat]) VALUES (N'1de505d9-dbea-4652-b857-08da362c98d0', N'fb356e65-cdfe-476f-f7a2-08da1def183b', N'13d161e5-77be-4df5-5c4a-08da22d8081e', N'49b7f86a-e4bc-484d-cb00-08da329f93bd', CAST(N'2022-05-15T04:37:10.9890000' AS DateTime2), 12000)
GO
INSERT [dbo].[PhieuMuons] ([PhieuMuonId], [DocGiaId], [NgayMuon], [NgayHetHan]) VALUES (N'fedf4b3a-10c2-483b-a7ab-08da36283e68', N'b643d7c7-5946-485c-faa4-08da33d15ad3', CAST(N'2022-05-01T04:05:57.3420000' AS DateTime2), CAST(N'2022-05-05T04:05:57.3420000' AS DateTime2))
INSERT [dbo].[PhieuMuons] ([PhieuMuonId], [DocGiaId], [NgayMuon], [NgayHetHan]) VALUES (N'3e0dd48c-526f-44d3-a7ac-08da36283e68', N'b643d7c7-5946-485c-faa4-08da33d15ad3', CAST(N'2022-05-03T04:15:44.7730000' AS DateTime2), CAST(N'2022-05-07T04:15:44.7730000' AS DateTime2))
INSERT [dbo].[PhieuMuons] ([PhieuMuonId], [DocGiaId], [NgayMuon], [NgayHetHan]) VALUES (N'5de2032d-48cc-4496-ff51-08da362c8c1c', N'13d161e5-77be-4df5-5c4a-08da22d8081e', CAST(N'2022-05-14T04:36:51.9100000' AS DateTime2), CAST(N'2022-05-18T04:36:51.9100000' AS DateTime2))
GO
INSERT [dbo].[PhieuPhats] ([PhieuPhatId], [DocGiaId], [NhanVienId], [TienNo], [TienThu], [TienNoConlai], [NgayThu]) VALUES (N'8a523180-7ab8-467d-654b-08da362c7d0f', N'b643d7c7-5946-485c-faa4-08da33d15ad3', N'0a522b60-d880-47f4-6d50-08da33d36d31', 18000, 18000, 0, CAST(N'2022-05-15T11:36:33.0946274' AS DateTime2))
INSERT [dbo].[PhieuPhats] ([PhieuPhatId], [DocGiaId], [NhanVienId], [TienNo], [TienThu], [TienNoConlai], [NgayThu]) VALUES (N'6831a061-bf14-45cb-654c-08da362c7d0f', N'13d161e5-77be-4df5-5c4a-08da22d8081e', N'0a522b60-d880-47f4-6d50-08da33d36d31', 12000, 12000, 0, CAST(N'2022-05-15T11:37:48.8894947' AS DateTime2))
GO
INSERT [dbo].[PhieuTras] ([PhieuTraId], [DocGiaId], [NgayTra], [TienPhat], [TienNo], [TongNo]) VALUES (N'7cd20e1b-b02b-4cce-65e4-08da362c447f', N'b643d7c7-5946-485c-faa4-08da33d15ad3', CAST(N'2022-05-15T04:34:53.3350000' AS DateTime2), 18000, 0, 18000)
GO
INSERT [dbo].[Sachs] ([SachId], [Ten], [Loai], [TacGia], [NamSx], [NhaSx], [TinhTrang], [Gia], [NgayTiepNhan], [NhanVienId]) VALUES (N'fb356e65-cdfe-476f-f7a2-08da1def183b', N'CSDL', N'A', N'Hồ Thanh Phong', N'2003', N'NXB Trẻ', N'Đã Thanh Lý', 12000, CAST(N'1999-08-10T00:00:00.0000000' AS DateTime2), N'70468069-ad60-46a3-c755-08da1def10c6')
INSERT [dbo].[Sachs] ([SachId], [Ten], [Loai], [TacGia], [NamSx], [NhaSx], [TinhTrang], [Gia], [NgayTiepNhan], [NhanVienId]) VALUES (N'f2302c8c-e855-42ec-bf49-08da1dfcf6da', N'CNPM', N'A', N'Đinh Bá Hưng', N'2010', N'NXB Kim Đồng', N'Chưa Mượn', 25000, CAST(N'2022-04-14T16:55:53.6748478' AS DateTime2), N'43714dc4-e4f7-46b6-3722-08da1dfce5fe')
INSERT [dbo].[Sachs] ([SachId], [Ten], [Loai], [TacGia], [NamSx], [NhaSx], [TinhTrang], [Gia], [NgayTiepNhan], [NhanVienId]) VALUES (N'e631d083-f3b9-4e83-3680-08da1f7cfd51', N'Trí truệ nhân tạo', N'C', N'Nguyễn Văn Bưởi', N'2012', N'NXB TPHCM', N'Chưa Mượn', 10000, CAST(N'2022-04-16T14:44:51.2257973' AS DateTime2), N'70468069-ad60-46a3-c755-08da1def10c6')
INSERT [dbo].[Sachs] ([SachId], [Ten], [Loai], [TacGia], [NamSx], [NhaSx], [TinhTrang], [Gia], [NgayTiepNhan], [NhanVienId]) VALUES (N'3f5a94b6-5ac3-4f66-3d09-08da1fb4d404', N'Mạng máy tính', N'C', N'Tiết Gia Vàng', N'2008', N'NXB DHQG', N'Chưa Mượn', 10000, CAST(N'2022-04-16T21:24:33.7900379' AS DateTime2), N'70468069-ad60-46a3-c755-08da1def10c6')
INSERT [dbo].[Sachs] ([SachId], [Ten], [Loai], [TacGia], [NamSx], [NhaSx], [TinhTrang], [Gia], [NgayTiepNhan], [NhanVienId]) VALUES (N'233c0fba-446f-44e1-62b2-08da23b3e939', N'Luật tâm thức', N'A', N'Ngô Sa Thạch', N'2021', N'NXB Dân Trí', N'Chưa Mượn', 200000, CAST(N'2022-04-21T23:28:04.5007352' AS DateTime2), N'70468069-ad60-46a3-c755-08da1def10c6')
INSERT [dbo].[Sachs] ([SachId], [Ten], [Loai], [TacGia], [NamSx], [NhaSx], [TinhTrang], [Gia], [NgayTiepNhan], [NhanVienId]) VALUES (N'38f6b94e-4da2-4ead-b79e-08da23bb33d1', N'Kĩ Thuật Lập Trình', N'A', N'Trần Minh Triết', N'2003', N'NXB KH&KT', N'Chưa Mượn', 30000, CAST(N'2022-04-22T00:20:16.1493692' AS DateTime2), N'70468069-ad60-46a3-c755-08da1def10c6')
INSERT [dbo].[Sachs] ([SachId], [Ten], [Loai], [TacGia], [NamSx], [NhaSx], [TinhTrang], [Gia], [NgayTiepNhan], [NhanVienId]) VALUES (N'b8c490bb-91ed-4899-4d78-08da33cc7594', N'Doraemon', N'B', N'Fujiko F. Fujio', N'2019-05-12T04:03:35.797Z', N'NXB Kim Đồng', N'Chưa Mượn', 31000, CAST(N'2022-05-12T04:04:00.8130000' AS DateTime2), N'43714dc4-e4f7-46b6-3722-08da1dfce5fe')
INSERT [dbo].[Sachs] ([SachId], [Ten], [Loai], [TacGia], [NamSx], [NhaSx], [TinhTrang], [Gia], [NgayTiepNhan], [NhanVienId]) VALUES (N'd368ec22-05e0-4153-4d79-08da33cc7594', N'Naruto', N'C', N'Kishimoto Masashi', N'2020-05-12T04:04:42.234Z', N'NXB Kim Đồng', N'Chưa Mượn', 24000, CAST(N'2022-05-12T04:04:58.1100000' AS DateTime2), N'43714dc4-e4f7-46b6-3722-08da1dfce5fe')
INSERT [dbo].[Sachs] ([SachId], [Ten], [Loai], [TacGia], [NamSx], [NhaSx], [TinhTrang], [Gia], [NgayTiepNhan], [NhanVienId]) VALUES (N'ea908b21-b029-4053-4d7a-08da33cc7594', N'Kimetsu no Yaiba', N'A', N'Gotōge Koyoharu', N'2019-05-12T04:05:30.031Z', N'NXB Kim Đồng', N'Chưa Mượn', 11000, CAST(N'2022-05-10T04:05:46.6200000' AS DateTime2), N'43714dc4-e4f7-46b6-3722-08da1dfce5fe')
INSERT [dbo].[Sachs] ([SachId], [Ten], [Loai], [TacGia], [NamSx], [NhaSx], [TinhTrang], [Gia], [NgayTiepNhan], [NhanVienId]) VALUES (N'eae8b1c3-3707-4771-53f4-08da3627e207', N'NMCNPM', N'A', N'Hồ Thanh Phong', N'2020-05-15T04:03:07.029Z', N'NXB DHQG', N'Chưa Mượn', 56000, CAST(N'2022-05-15T04:03:22.7030000' AS DateTime2), N'43714dc4-e4f7-46b6-3722-08da1dfce5fe')
GO
INSERT [dbo].[ThanhLySachs] ([ThanhLySachId], [NhanVienId], [NgayThanhLy]) VALUES (N'c92ef8bd-1bd5-4d41-a442-08da362ccaf7', N'43714dc4-e4f7-46b6-3722-08da1dfce5fe', CAST(N'2022-05-15T04:38:34.6050000' AS DateTime2))
GO
INSERT [dbo].[Users] ([UserId], [Email], [PasswordHash], [PasswordSalt], [RefreshToken], [RefreshTokenExpiryTime]) VALUES (N'63eddb8e-2ccb-494c-3e5d-08da329f1937', N'admin@gmail.com', N'2Zr85IKAfnDt2UmT+ybFCES8UHzSg8rb2vNviV0zMnE=', N'wsOWS/FZBzln1cckIWRQSg==', N'3i4i8scWdV0v6BcifZ/UA6V4R/u9YlGGiQHkFQDcDPU=', CAST(N'2022-05-17T23:08:14.1371072' AS DateTime2))
GO
ALTER TABLE [dbo].[ChiTietPhieuMuons]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuMuons_PhieuMuons_PhieuMuonId] FOREIGN KEY([PhieuMuonId])
REFERENCES [dbo].[PhieuMuons] ([PhieuMuonId])
GO
ALTER TABLE [dbo].[ChiTietPhieuMuons] CHECK CONSTRAINT [FK_ChiTietPhieuMuons_PhieuMuons_PhieuMuonId]
GO
ALTER TABLE [dbo].[ChiTietPhieuMuons]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuMuons_Sachs_SachId] FOREIGN KEY([SachId])
REFERENCES [dbo].[Sachs] ([SachId])
GO
ALTER TABLE [dbo].[ChiTietPhieuMuons] CHECK CONSTRAINT [FK_ChiTietPhieuMuons_Sachs_SachId]
GO
ALTER TABLE [dbo].[ChiTietPhieuTras]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuTras_PhieuTras_PhieuTraId] FOREIGN KEY([PhieuTraId])
REFERENCES [dbo].[PhieuTras] ([PhieuTraId])
GO
ALTER TABLE [dbo].[ChiTietPhieuTras] CHECK CONSTRAINT [FK_ChiTietPhieuTras_PhieuTras_PhieuTraId]
GO
ALTER TABLE [dbo].[ChiTietPhieuTras]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuTras_Sachs_SachId] FOREIGN KEY([SachId])
REFERENCES [dbo].[Sachs] ([SachId])
GO
ALTER TABLE [dbo].[ChiTietPhieuTras] CHECK CONSTRAINT [FK_ChiTietPhieuTras_Sachs_SachId]
GO
ALTER TABLE [dbo].[ChiTietThanhLySachs]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietThanhLySachs_Sachs_SachId] FOREIGN KEY([SachId])
REFERENCES [dbo].[Sachs] ([SachId])
GO
ALTER TABLE [dbo].[ChiTietThanhLySachs] CHECK CONSTRAINT [FK_ChiTietThanhLySachs_Sachs_SachId]
GO
ALTER TABLE [dbo].[ChiTietThanhLySachs]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietThanhLySachs_ThanhLySachs_ThanhLySachId] FOREIGN KEY([ThanhLySachId])
REFERENCES [dbo].[ThanhLySachs] ([ThanhLySachId])
GO
ALTER TABLE [dbo].[ChiTietThanhLySachs] CHECK CONSTRAINT [FK_ChiTietThanhLySachs_ThanhLySachs_ThanhLySachId]
GO
ALTER TABLE [dbo].[DocGias]  WITH CHECK ADD  CONSTRAINT [FK_DocGias_NhanViens_NhanVienId] FOREIGN KEY([NhanVienId])
REFERENCES [dbo].[NhanViens] ([NhanVienId])
GO
ALTER TABLE [dbo].[DocGias] CHECK CONSTRAINT [FK_DocGias_NhanViens_NhanVienId]
GO
ALTER TABLE [dbo].[PhieuMatSachs]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMatSachs_DocGias_DocGiaId] FOREIGN KEY([DocGiaId])
REFERENCES [dbo].[DocGias] ([DocGiaId])
GO
ALTER TABLE [dbo].[PhieuMatSachs] CHECK CONSTRAINT [FK_PhieuMatSachs_DocGias_DocGiaId]
GO
ALTER TABLE [dbo].[PhieuMatSachs]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMatSachs_NhanViens_NhanVienId] FOREIGN KEY([NhanVienId])
REFERENCES [dbo].[NhanViens] ([NhanVienId])
GO
ALTER TABLE [dbo].[PhieuMatSachs] CHECK CONSTRAINT [FK_PhieuMatSachs_NhanViens_NhanVienId]
GO
ALTER TABLE [dbo].[PhieuMatSachs]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMatSachs_Sachs_SachId] FOREIGN KEY([SachId])
REFERENCES [dbo].[Sachs] ([SachId])
GO
ALTER TABLE [dbo].[PhieuMatSachs] CHECK CONSTRAINT [FK_PhieuMatSachs_Sachs_SachId]
GO
ALTER TABLE [dbo].[PhieuMuons]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuons_DocGias_DocGiaId] FOREIGN KEY([DocGiaId])
REFERENCES [dbo].[DocGias] ([DocGiaId])
GO
ALTER TABLE [dbo].[PhieuMuons] CHECK CONSTRAINT [FK_PhieuMuons_DocGias_DocGiaId]
GO
ALTER TABLE [dbo].[PhieuPhats]  WITH CHECK ADD  CONSTRAINT [FK_PhieuPhats_DocGias_DocGiaId] FOREIGN KEY([DocGiaId])
REFERENCES [dbo].[DocGias] ([DocGiaId])
GO
ALTER TABLE [dbo].[PhieuPhats] CHECK CONSTRAINT [FK_PhieuPhats_DocGias_DocGiaId]
GO
ALTER TABLE [dbo].[PhieuPhats]  WITH CHECK ADD  CONSTRAINT [FK_PhieuPhats_NhanViens_NhanVienId] FOREIGN KEY([NhanVienId])
REFERENCES [dbo].[NhanViens] ([NhanVienId])
GO
ALTER TABLE [dbo].[PhieuPhats] CHECK CONSTRAINT [FK_PhieuPhats_NhanViens_NhanVienId]
GO
ALTER TABLE [dbo].[PhieuTras]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTras_DocGias_DocGiaId] FOREIGN KEY([DocGiaId])
REFERENCES [dbo].[DocGias] ([DocGiaId])
GO
ALTER TABLE [dbo].[PhieuTras] CHECK CONSTRAINT [FK_PhieuTras_DocGias_DocGiaId]
GO
ALTER TABLE [dbo].[Sachs]  WITH CHECK ADD  CONSTRAINT [FK_Sachs_NhanViens_NhanVienId] FOREIGN KEY([NhanVienId])
REFERENCES [dbo].[NhanViens] ([NhanVienId])
GO
ALTER TABLE [dbo].[Sachs] CHECK CONSTRAINT [FK_Sachs_NhanViens_NhanVienId]
GO
ALTER TABLE [dbo].[ThanhLySachs]  WITH CHECK ADD  CONSTRAINT [FK_ThanhLySachs_NhanViens_NhanVienId] FOREIGN KEY([NhanVienId])
REFERENCES [dbo].[NhanViens] ([NhanVienId])
GO
ALTER TABLE [dbo].[ThanhLySachs] CHECK CONSTRAINT [FK_ThanhLySachs_NhanViens_NhanVienId]
GO
