USE [DoanLTW]
GO
/****** Object:  Table [dbo].[DeTai]    Script Date: 6/18/2020 8:07:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeTai](
	[MaDT] [nvarchar](50) NOT NULL,
	[TenDT] [nvarchar](50) NOT NULL,
	[MoTaDT] [nvarchar](50) NOT NULL,
	[NgayBatDau] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[TienDoDT] [float] NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[NhanXet] [nvarchar](50) NULL,
	[FileDeTai] [nvarchar](max) NULL,
 CONSTRAINT [PK_DeTai] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 6/18/2020 8:07:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGV] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LanhDao]    Script Date: 6/18/2020 8:07:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LanhDao](
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LanhDao] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 6/18/2020 8:07:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Khoa] [nvarchar](50) NOT NULL,
	[LopHoc] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[GioiTinh] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[MaDT] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DeTai] ([MaDT], [TenDT], [MoTaDT], [NgayBatDau], [NgayKetThuc], [TienDoDT], [MaGV], [NhanXet], [FileDeTai]) VALUES (N'dt1', N'Xây dựng chương trình quản lý đề tài sinh viên', N'Xây dựng chương trình', CAST(N'2020-06-17T00:00:00.000' AS DateTime), CAST(N'2020-07-05T00:00:00.000' AS DateTime), 100, N'gv1', N'Hoàn Thành Tốt', N'www.nghia')
INSERT [dbo].[DeTai] ([MaDT], [TenDT], [MoTaDT], [NgayBatDau], [NgayKetThuc], [TienDoDT], [MaGV], [NhanXet], [FileDeTai]) VALUES (N'dt2', N'Game caro', N'Xây dựng chương trình', CAST(N'2020-05-05T00:00:00.000' AS DateTime), CAST(N'2020-05-07T00:00:00.000' AS DateTime), 50, N'gv2', N'Hoàn thành', NULL)
INSERT [dbo].[DeTai] ([MaDT], [TenDT], [MoTaDT], [NgayBatDau], [NgayKetThuc], [TienDoDT], [MaGV], [NhanXet], [FileDeTai]) VALUES (N'dt3', N'Game cờ cá ngựa', N'Xây dựng chương trình', CAST(N'2020-06-05T00:00:00.000' AS DateTime), CAST(N'2020-07-05T00:00:00.000' AS DateTime), 50, N'gv1', N'Hoàn Thành Tốt', N'')
INSERT [dbo].[DeTai] ([MaDT], [TenDT], [MoTaDT], [NgayBatDau], [NgayKetThuc], [TienDoDT], [MaGV], [NhanXet], [FileDeTai]) VALUES (N'dt4', N'Game cờ vua', N'Xây dựng chương trình', CAST(N'2020-05-06T00:00:00.000' AS DateTime), CAST(N'2020-05-07T00:00:00.000' AS DateTime), 25, N'gv3', N'Hoàn Thành Tốt', NULL)
INSERT [dbo].[DeTai] ([MaDT], [TenDT], [MoTaDT], [NgayBatDau], [NgayKetThuc], [TienDoDT], [MaGV], [NhanXet], [FileDeTai]) VALUES (N'dt5', N'Game ô ăn quan', N'Xây dựng chương trình', CAST(N'2020-06-05T00:00:00.000' AS DateTime), CAST(N'2020-07-05T00:00:00.000' AS DateTime), 50, N'gv4', N'Hoàn Thành Tốt', NULL)
INSERT [dbo].[DeTai] ([MaDT], [TenDT], [MoTaDT], [NgayBatDau], [NgayKetThuc], [TienDoDT], [MaGV], [NhanXet], [FileDeTai]) VALUES (N'dt6', N'Game xếp hình', N'Xây dựng chương trình', CAST(N'2020-05-06T00:00:00.000' AS DateTime), CAST(N'2020-05-07T00:00:00.000' AS DateTime), 100, N'gv5', N'hoàn thành tốt', NULL)
INSERT [dbo].[DeTai] ([MaDT], [TenDT], [MoTaDT], [NgayBatDau], [NgayKetThuc], [TienDoDT], [MaGV], [NhanXet], [FileDeTai]) VALUES (N'dt7', N'8 hậu', N'tìm vị trí cho 8 hậu', CAST(N'2020-05-27T00:00:00.000' AS DateTime), CAST(N'2020-06-25T00:00:00.000' AS DateTime), 100, N'gv10', N'giao diện', NULL)
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [GioiTinh], [SDT], [Email], [MatKhau]) VALUES (N'gv1', N'Huỳnh Xuân Phụng', N'nam', N'0123456789', N'phunghx@hcmute.edu.vn', N'1')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [GioiTinh], [SDT], [Email], [MatKhau]) VALUES (N'gv10', N'Nguyễn Giáo K', N'nam', N'0123456789', N'ang@hcmute.edu.vn', N'1')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [GioiTinh], [SDT], [Email], [MatKhau]) VALUES (N'gv2', N'Nguyễn Giáo A', N'nữ', N'0123456789', N'ang@hcmute.edu.vn', N'1')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [GioiTinh], [SDT], [Email], [MatKhau]) VALUES (N'gv3', N'Nguyễn Giáo B', N'nam', N'0123456789', N'bng@hcmute.edu.vn', N'1')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [GioiTinh], [SDT], [Email], [MatKhau]) VALUES (N'gv4', N'Nguyễn Giáo C', N'nữ', N'0123456789', N'cng@hcmute.edu.vn', N'1')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [GioiTinh], [SDT], [Email], [MatKhau]) VALUES (N'gv5', N'Nguyễn Giáo D', N'nam', N'0123456789', N'dng@hcmute.edu.vn', N'1')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [GioiTinh], [SDT], [Email], [MatKhau]) VALUES (N'gv6', N'Nguyễn Giáo E', N'nữ', N'0123456789', N'eng@hcmute.edu.vn', N'1')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [GioiTinh], [SDT], [Email], [MatKhau]) VALUES (N'gv7', N'Nguyễn Giáo  F', N'nam', N'0123456789', N'fng@hcmute.edu.vn', N'1')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [GioiTinh], [SDT], [Email], [MatKhau]) VALUES (N'gv8', N'Nguyễn Giáo G', N'nữ', N'0123456789', N'gng@hcmute.edu.vn', N'1')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [GioiTinh], [SDT], [Email], [MatKhau]) VALUES (N'gv9', N'Nguyễn Giáo H', N'nữ', N'0123456789', N'hng@hcmute.edu.vn', N'1')
GO
INSERT [dbo].[LanhDao] ([TaiKhoan], [MatKhau]) VALUES (N'admin', N'admin')
GO
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Khoa], [LopHoc], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [MaDT], [MatKhau]) VALUES (N'sv1', N'Võ Ngọc Nghĩa', N'Đào tạo chất lượng cao', N'18110CL1A', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'Nam', N'098765432', N'18110164@student.hcmute.edu.vn', N'Thủ Đức', N'dt1', N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Khoa], [LopHoc], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [MaDT], [MatKhau]) VALUES (N'sv10', N'Nguyễn Văn E', N'Đào tạo chất lượng cao', N'18110CL1A', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'nam', N'098765432', N'18110117@student.hcmute.edu.vn', N'Thủ Đức', NULL, N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Khoa], [LopHoc], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [MaDT], [MatKhau]) VALUES (N'sv11', N'Nguyễn Văn F', N'Đào tạo chất lượng cao', N'18110CL1A', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'nam', N'098765432', N'18110118@student.hcmute.edu.vn', N'Thủ Đức', N'dt6', N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Khoa], [LopHoc], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [MaDT], [MatKhau]) VALUES (N'sv12', N'Nguyễn Văn G', N'Đào tạo chất lượng cao', N'18110CL1A', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'nữ', N'098765432', N'18110119@student.hcmute.edu.vn', N'Thủ Đức', NULL, N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Khoa], [LopHoc], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [MaDT], [MatKhau]) VALUES (N'sv13', N'Nguyễn Văn H', N'Đào tạo chất lượng cao', N'18110CL1A', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'nam', N'098765432', N'18110120@student.hcmute.edu.vn', N'Thủ Đức', NULL, N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Khoa], [LopHoc], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [MaDT], [MatKhau]) VALUES (N'sv14', N'Nguyễn Văn L', N'Đào tạo chất lượng cao', N'18110CL1A', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'nam', N'098765432', N'18110121@student.hcmute.edu.vn', N'Thủ Đức', NULL, N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Khoa], [LopHoc], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [MaDT], [MatKhau]) VALUES (N'sv15', N'Nguyễn Văn Z', N'Đào tạo chất lượng cao', N'18110CL1A', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'nữ', N'098765432', N'18110122@student.hcmute.edu.vn', N'Thủ Đức', NULL, N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Khoa], [LopHoc], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [MaDT], [MatKhau]) VALUES (N'sv2', N'Nguyễn Phan Nhật Tú', N'Đào tạo chất lượng cao', N'18110CL2B', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'nam', N'098765432', N'18110232@student.hcmute.edu.vn', N'Thủ Đức', N'dt1', N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Khoa], [LopHoc], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [MaDT], [MatKhau]) VALUES (N'sv3', N'Đặng Châu Bảo Văn', N'Đào tạo chất lượng cao', N'18110CL1A', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'nam', N'098765432', N'18110164@student.hcmute.edu.vn', N'Thủ Đức', N'dt1', N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Khoa], [LopHoc], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [MaDT], [MatKhau]) VALUES (N'sv4', N'Nguyễn Văn A', N'Đào tạo chất lượng cao', N'18110CL1A', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'nữ', N'098765432', N'18110111@student.hcmute.edu.vn', N'Thủ Đức', N'dt2', N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Khoa], [LopHoc], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [MaDT], [MatKhau]) VALUES (N'sv5', N'Nguyễn Văn B', N'Đào tạo chất lượng cao', N'18110CL1A', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'nam', N'098765432', N'18110112@student.hcmute.edu.vn', N'Thủ Đức', N'dt2', N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Khoa], [LopHoc], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [MaDT], [MatKhau]) VALUES (N'sv6', N'Nguyễn Văn C', N'Đào tạo chất lượng cao', N'18110CL1A', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'nam', N'098765432', N'18110113@student.hcmute.edu.vn', N'Thủ Đức', NULL, N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Khoa], [LopHoc], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [MaDT], [MatKhau]) VALUES (N'sv7', N'Nguyễn Văn D', N'Đào tạo chất lượng cao', N'18110CL1A', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'nam', N'098765432', N'18110114@student.hcmute.edu.vn', N'Thủ Đức', NULL, N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Khoa], [LopHoc], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [MaDT], [MatKhau]) VALUES (N'sv8', N'Nguyễn Văn C', N'Đào tạo chất lượng cao', N'18110CL1A', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'nữ', N'098765432', N'18110115@student.hcmute.edu.vn', N'Thủ Đức', N'dt4', N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Khoa], [LopHoc], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [MaDT], [MatKhau]) VALUES (N'sv9', N'Nguyễn Văn D', N'Đào tạo chất lượng cao', N'18110CL1A', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'nam', N'098765432', N'18110116@student.hcmute.edu.vn', N'Thủ Đức', N'dt5', N'1')
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [FK_DeTai_GiaoVien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [FK_DeTai_GiaoVien]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_DeTai] FOREIGN KEY([MaDT])
REFERENCES [dbo].[DeTai] ([MaDT])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_DeTai]
GO
