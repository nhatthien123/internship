USE [master]
GO
/****** Object:  Database [QUANLYDOANHNGHIEP]    Script Date: 28/06/2023 10:07:40 SA ******/
CREATE DATABASE [QUANLYDOANHNGHIEP] ON  PRIMARY 
( NAME = N'QUANLYDOANHNGHIEP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QUANLYDOANHNGHIEP.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUANLYDOANHNGHIEP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QUANLYDOANHNGHIEP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYDOANHNGHIEP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET DB_CHAINING OFF 
GO
USE [QUANLYDOANHNGHIEP]
GO
/****** Object:  Table [dbo].[chiTietDuAn]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiTietDuAn](
	[maDA] [varchar](10) NULL,
	[soLuongNguoi] [int] NOT NULL,
	[ngayBatDau] [varchar](10) NULL,
	[ngayKetThuc] [varchar](10) NULL,
	[ketQua] [varchar](100) NULL,
	[tienDo] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chiTietHopDong]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiTietHopDong](
	[maHD] [varchar](50) NULL,
	[ngayBatDau] [varchar](50) NULL,
	[ngayKetThuc] [varchar](50) NULL,
	[thoiHan] [nvarchar](50) NULL,
	[moTa] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chucNang]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chucNang](
	[maCN] [int] NOT NULL,
	[tenCN] [nvarchar](50) NOT NULL,
	[moTaCN] [ntext] NULL,
	[trangThai] [bit] NOT NULL,
	[quyen] [int] NOT NULL,
	[levelFunc] [int] NOT NULL,
 CONSTRAINT [PK_chucNang] PRIMARY KEY CLUSTERED 
(
	[maCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chucVu]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chucVu](
	[maCV] [varchar](50) NOT NULL,
	[tenCV] [nvarchar](100) NOT NULL,
	[maPB] [nvarchar](50) NULL,
 CONSTRAINT [PK__chucVu__7A3E0CF0CF072F74] PRIMARY KEY CLUSTERED 
(
	[maCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chungChi]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chungChi](
	[tenChungChi] [nvarchar](255) NOT NULL,
	[maDT] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[danhMucDaoTao]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhMucDaoTao](
	[maDT] [varchar](10) NULL,
	[tenDT] [nvarchar](255) NOT NULL,
	[loaiDT] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[danToc]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danToc](
	[tenDT] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tenDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanhNghiep]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhNghiep](
	[maDN] [varchar](50) NOT NULL,
	[tenDN] [nvarchar](100) NOT NULL,
	[diaChi] [nvarchar](255) NOT NULL,
	[sdt] [varchar](10) NOT NULL,
	[email] [varchar](50) NOT NULL,
 CONSTRAINT [PK__DoanhNgh__7A3EF409E514FF40] PRIMARY KEY CLUSTERED 
(
	[maDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[duAn]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[duAn](
	[maDA] [varchar](10) NOT NULL,
	[tenDA] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gioiTinh]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gioiTinh](
	[tenGT] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tenGT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hopDong]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hopDong](
	[maHD] [varchar](50) NOT NULL,
	[tenHD] [nvarchar](255) NOT NULL,
	[maNV] [nvarchar](50) NULL,
 CONSTRAINT [PK__hopDong__7A3E148652ECCDEE] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lyLich]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lyLich](
	[maNV] [nvarchar](50) NULL,
	[maLL] [varchar](50) NOT NULL,
	[hotenBa] [nvarchar](100) NOT NULL,
	[sdtBa] [varchar](10) NOT NULL,
	[ngheNghiepBa] [nvarchar](50) NOT NULL,
	[hotenMe] [nvarchar](100) NOT NULL,
	[sdtMe] [varchar](10) NOT NULL,
	[ngheNghiepMe] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanVien]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanVien](
	[maNV] [nvarchar](50) NOT NULL,
	[tenNV] [nvarchar](100) NOT NULL,
	[cccd] [varchar](20) NOT NULL,
	[tenGT] [nvarchar](10) NOT NULL,
	[tenDT] [nvarchar](20) NOT NULL,
	[ngaySinh] [varchar](10) NOT NULL,
	[diaChi] [nvarchar](255) NOT NULL,
	[sdt] [varchar](10) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[maCV] [varchar](50) NOT NULL,
 CONSTRAINT [PK__nhanVien__7A3EC7D5CE26E0F9] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanVienPhongBan]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanVienPhongBan](
	[maNVPB] [varchar](10) NOT NULL,
	[maPB] [varchar](10) NULL,
	[maNV] [nvarchar](50) NULL,
	[ngayBatDau] [varchar](10) NULL,
	[ngayKetThuc] [varchar](10) NULL,
 CONSTRAINT [PK__nhanVien__8FA9C63627B39743] PRIMARY KEY CLUSTERED 
(
	[maNVPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phanCong]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phanCong](
	[maNV] [nvarchar](50) NULL,
	[maDA] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phanQuyen]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phanQuyen](
	[username] [varchar](50) NULL,
	[quyen] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phongBan]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phongBan](
	[maDN] [varchar](50) NULL,
	[maPB] [varchar](50) NOT NULL,
	[tenPB] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quaTrinhDaoTao]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quaTrinhDaoTao](
	[maDT] [varchar](10) NOT NULL,
	[maNV] [nvarchar](50) NULL,
	[tgianDaoTao] [nvarchar](50) NOT NULL,
	[kquaDaotao] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__quaTrinh__7A3EF4134F329F84] PRIMARY KEY CLUSTERED 
(
	[maDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quyenTruyCap]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quyenTruyCap](
	[quyen] [int] NOT NULL,
	[moTa] [ntext] NULL,
 CONSTRAINT [PK__quyenTru__EE5F0C59A00B51A4] PRIMARY KEY CLUSTERED 
(
	[quyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taiKhoan]    Script Date: 28/06/2023 10:07:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taiKhoan](
	[maNV] [varchar](10) NULL,
	[username] [varchar](50) NOT NULL,
	[passwd] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[chiTietDuAn] ([maDA], [soLuongNguoi], [ngayBatDau], [ngayKetThuc], [ketQua], [tienDo]) VALUES (N'1', 10, N'15/5/2023', N'15/7/2023', N'Incomplete', N'30%')
GO
INSERT [dbo].[chiTietHopDong] ([maHD], [ngayBatDau], [ngayKetThuc], [thoiHan], [moTa]) VALUES (N'1', N'15/05/2023', N'15/07/2023', N'2 Tháng', N'sdasfds áda sà àwads')
GO
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (1, N'Add', N'Thêm', 1, 1, 4)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (2, N'Edit Update ', N'Sửa/Cập Nhật/Hủy', 1, 3, 2)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (3, N'Clear', N'Làm trống', 1, 4, 1)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (4, N'Cancel', N'Hủy', 1, 4, 1)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (5, N'New User', N'Nhân viên mới', 1, 2, 3)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (6, N'New Project', N'Dự án mới', 1, 1, 4)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (7, N'Corporation', N'Chi tiết doanh nghiệp', 1, 1, 4)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (8, N'ViewLists', N'Xem all DS', 1, 3, 2)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (9, N'Division', N'PhânChiaDựÁn', 1, 2, 3)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (10, N'Back', N'Trở lại', 1, 4, 1)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (11, N'Search', N'tìm kiếm', 1, 4, 1)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (12, N'Change Database', N'Thay đổi CSDL', 1, 1, 4)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (13, N'Create Account', N'Tạo tài khoản', 1, 2, 3)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (14, N'Add Access Right', N'Thêm Quyền', 1, 1, 4)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (15, N'Add Contract Infor', N'Thêm TT HĐ', 1, 2, 3)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (16, N'View Staff Resume', N'Xem lý lịch cá nhân ', 1, 4, 1)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (17, N'View Contract Infor', N'Xem TT HĐ', 1, 4, 1)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (18, N'Alter Right', N'Sửa Quyền', 1, 1, 4)
INSERT [dbo].[chucNang] ([maCN], [tenCN], [moTaCN], [trangThai], [quyen], [levelFunc]) VALUES (19, N'View Project Infor', N'Xem thông tin dự án', 1, 4, 1)
GO
INSERT [dbo].[chucVu] ([maCV], [tenCV], [maPB]) VALUES (N'SI-PGD-GD', N'Giám Đốc', N'SI-PGĐ')
INSERT [dbo].[chucVu] ([maCV], [tenCV], [maPB]) VALUES (N'SI-PGD-PhGD', N'Phó Giám Đốc', N'SI-PGĐ')
INSERT [dbo].[chucVu] ([maCV], [tenCV], [maPB]) VALUES (N'SI-PTC-NhV', N'Nhân Viên', N'SI-PTC')
INSERT [dbo].[chucVu] ([maCV], [tenCV], [maPB]) VALUES (N'SI-PTC-PhP', N'Phó Phòng', N'SI-PTC')
INSERT [dbo].[chucVu] ([maCV], [tenCV], [maPB]) VALUES (N'SI-PTC-TrP', N'Trưởng Phòng', N'SI-PTC')
GO
INSERT [dbo].[chungChi] ([tenChungChi], [maDT]) VALUES (N'Chứng Chỉ Tin Học Căn Bản', N'1')
GO
INSERT [dbo].[danhMucDaoTao] ([maDT], [tenDT], [loaiDT]) VALUES (N'1', N'Đào Tạo Cơ Bản', N'Cơ Bản')
GO
INSERT [dbo].[danToc] ([tenDT]) VALUES (N'Hoa')
INSERT [dbo].[danToc] ([tenDT]) VALUES (N'Khomer')
INSERT [dbo].[danToc] ([tenDT]) VALUES (N'Kinh')
GO
INSERT [dbo].[DoanhNghiep] ([maDN], [tenDN], [diaChi], [sdt], [email]) VALUES (N'NPNT', N'NPNT CorPoration', N'hong biet luon', N'0939977176', N'test2@gmail.com')
INSERT [dbo].[DoanhNghiep] ([maDN], [tenDN], [diaChi], [sdt], [email]) VALUES (N'SI', N'Stark Industry', N'hong co biet', N'0914455175', N'test1@gmail.com')
INSERT [dbo].[DoanhNghiep] ([maDN], [tenDN], [diaChi], [sdt], [email]) VALUES (N'THV', N'THV Corporation', N'hong biet not', N'0919073223', N'test3@gmail.com')
GO
INSERT [dbo].[duAn] ([maDA], [tenDA]) VALUES (N'1', N'Xây dựng ứng dụng quản lý doanh nghiệp')
INSERT [dbo].[duAn] ([maDA], [tenDA]) VALUES (N'2', N'Xây dựng trang web thương mại điện tử')
INSERT [dbo].[duAn] ([maDA], [tenDA]) VALUES (N'3', N'Xây dựng ứng dụng quét mã vạch ')
INSERT [dbo].[duAn] ([maDA], [tenDA]) VALUES (N'4', N'Xây dựng ứng dụng tạo ra mã QR code')
GO
INSERT [dbo].[gioiTinh] ([tenGT]) VALUES (N'Nam')
INSERT [dbo].[gioiTinh] ([tenGT]) VALUES (N'Nữ')
GO
INSERT [dbo].[hopDong] ([maHD], [tenHD], [maNV]) VALUES (N'1', N'Hợp đồng làm việc không công', N'1')
INSERT [dbo].[hopDong] ([maHD], [tenHD], [maNV]) VALUES (N'2', N'Hợp đồng làm việc không công', N'2')
INSERT [dbo].[hopDong] ([maHD], [tenHD], [maNV]) VALUES (N'3', N'Hợp đồng làm việc có thời hạn', N'3')
INSERT [dbo].[hopDong] ([maHD], [tenHD], [maNV]) VALUES (N'4', N'Hợp đồng làm việc ', N'4')
GO
INSERT [dbo].[lyLich] ([maNV], [maLL], [hotenBa], [sdtBa], [ngheNghiepBa], [hotenMe], [sdtMe], [ngheNghiepMe]) VALUES (N'1', N'1', N'Vũ', N'0919073223', N'Bộ đội', N'Hằng', N'0939977176', N'Nhân Viên')
INSERT [dbo].[lyLich] ([maNV], [maLL], [hotenBa], [sdtBa], [ngheNghiepBa], [hotenMe], [sdtMe], [ngheNghiepMe]) VALUES (N'2', N'2', N'A', N'0123456789', N'abc', N'X', N'0987654321', N'xyz')
INSERT [dbo].[lyLich] ([maNV], [maLL], [hotenBa], [sdtBa], [ngheNghiepBa], [hotenMe], [sdtMe], [ngheNghiepMe]) VALUES (N'3', N'3', N'Q', N'0147852369', N'qwe', N'A', N'0369852147', N'asd')
GO
INSERT [dbo].[nhanVien] ([maNV], [tenNV], [cccd], [tenGT], [tenDT], [ngaySinh], [diaChi], [sdt], [email], [maCV]) VALUES (N'1', N'Nguyễn Phan Nhật Thiên', N'094201000707', N'Nam', N'Kinh', N'20/06/2001', N'357/14/42 Tran Hung Dao', N'0914455175', N'npnthien9a5@gmail.com', N'SI-PGD-GD')
INSERT [dbo].[nhanVien] ([maNV], [tenNV], [cccd], [tenGT], [tenDT], [ngaySinh], [diaChi], [sdt], [email], [maCV]) VALUES (N'2', N'Trần Hoàng Việt', N'084014989165', N'Nam', N'Kinh', N'24/08/2001', N'KTX A Đại Học Cần Thơ ', N'0929919635', N'thviet84@gmail.com', N'SI-PGD-PhGD')
INSERT [dbo].[nhanVien] ([maNV], [tenNV], [cccd], [tenGT], [tenDT], [ngaySinh], [diaChi], [sdt], [email], [maCV]) VALUES (N'3', N'Nguyễn Thành Nghĩa', N'094201274583', N'Nam', N'Khomer', N'10/10/2001', N'586 Lê Du?n', N'0123498530', N'nghianguyen17@gmail.com', N'SI-PTC-TrP')
INSERT [dbo].[nhanVien] ([maNV], [tenNV], [cccd], [tenGT], [tenDT], [ngaySinh], [diaChi], [sdt], [email], [maCV]) VALUES (N'4', N'Nguyễn Hữu Ân', N'095456456129', N'Nam', N'Kinh', N'10/10/2000', N'B?c Li?u', N'0842014065', N'akian06154@gmail.com', N'SI-PTC-NhV')
GO
INSERT [dbo].[nhanVienPhongBan] ([maNVPB], [maPB], [maNV], [ngayBatDau], [ngayKetThuc]) VALUES (N'NVPB1', N'SI-PGD', N'1', N'15/5/2023', N'17/7/2023')
GO
INSERT [dbo].[phanCong] ([maNV], [maDA]) VALUES (N'1', N'1')
INSERT [dbo].[phanCong] ([maNV], [maDA]) VALUES (N'2', N'2')
INSERT [dbo].[phanCong] ([maNV], [maDA]) VALUES (N'3', N'2')
INSERT [dbo].[phanCong] ([maNV], [maDA]) VALUES (N'4', N'3')
INSERT [dbo].[phanCong] ([maNV], [maDA]) VALUES (N'3', N'1')
INSERT [dbo].[phanCong] ([maNV], [maDA]) VALUES (N'1', N'2')
INSERT [dbo].[phanCong] ([maNV], [maDA]) VALUES (N'1', N'3')
GO
INSERT [dbo].[phanQuyen] ([username], [quyen]) VALUES (N'qwe', 1)
INSERT [dbo].[phanQuyen] ([username], [quyen]) VALUES (N'zxc', 3)
INSERT [dbo].[phanQuyen] ([username], [quyen]) VALUES (N'asd', 2)
INSERT [dbo].[phanQuyen] ([username], [quyen]) VALUES (N'qaz', 4)
GO
INSERT [dbo].[phongBan] ([maDN], [maPB], [tenPB]) VALUES (N'SI', N'SI-PGD', N'Phòng Giám Đốc')
INSERT [dbo].[phongBan] ([maDN], [maPB], [tenPB]) VALUES (N'SI', N'SI-PNS', N'Phòng Nhân Sự')
INSERT [dbo].[phongBan] ([maDN], [maPB], [tenPB]) VALUES (N'SI', N'SI-PTC', N'Phòng Tài Chính')
INSERT [dbo].[phongBan] ([maDN], [maPB], [tenPB]) VALUES (N'NPNT', N'NPNT-PGD', N'Phòng Giám Đốc')
GO
INSERT [dbo].[quaTrinhDaoTao] ([maDT], [maNV], [tgianDaoTao], [kquaDaotao]) VALUES (N'1', N'1', N'2 tháng', N'chưa xong')
GO
INSERT [dbo].[quyenTruyCap] ([quyen], [moTa]) VALUES (1, N'Toàn quyền')
INSERT [dbo].[quyenTruyCap] ([quyen], [moTa]) VALUES (2, N'Trưởng phòng + phó phòng')
INSERT [dbo].[quyenTruyCap] ([quyen], [moTa]) VALUES (3, N'Trưởng nhóm + Phó nhóm')
INSERT [dbo].[quyenTruyCap] ([quyen], [moTa]) VALUES (4, N'Thành viên')
GO
INSERT [dbo].[taiKhoan] ([maNV], [username], [passwd]) VALUES (N'2', N'asd', N'asd')
INSERT [dbo].[taiKhoan] ([maNV], [username], [passwd]) VALUES (N'4', N'qaz', N'qaz')
INSERT [dbo].[taiKhoan] ([maNV], [username], [passwd]) VALUES (N'1', N'qwe', N'qwe')
INSERT [dbo].[taiKhoan] ([maNV], [username], [passwd]) VALUES (N'3', N'zxc', N'zxc')
GO
ALTER TABLE [dbo].[chiTietDuAn]  WITH CHECK ADD FOREIGN KEY([maDA])
REFERENCES [dbo].[duAn] ([maDA])
GO
ALTER TABLE [dbo].[chiTietHopDong]  WITH CHECK ADD  CONSTRAINT [FK__chiTietHop__maHD__6D0D32F4] FOREIGN KEY([maHD])
REFERENCES [dbo].[hopDong] ([maHD])
GO
ALTER TABLE [dbo].[chiTietHopDong] CHECK CONSTRAINT [FK__chiTietHop__maHD__6D0D32F4]
GO
ALTER TABLE [dbo].[chucNang]  WITH CHECK ADD  CONSTRAINT [FK_chucNang_chucNang] FOREIGN KEY([maCN])
REFERENCES [dbo].[chucNang] ([maCN])
GO
ALTER TABLE [dbo].[chucNang] CHECK CONSTRAINT [FK_chucNang_chucNang]
GO
ALTER TABLE [dbo].[chungChi]  WITH CHECK ADD  CONSTRAINT [FK__chungChi__maDT__693CA210] FOREIGN KEY([maDT])
REFERENCES [dbo].[quaTrinhDaoTao] ([maDT])
GO
ALTER TABLE [dbo].[chungChi] CHECK CONSTRAINT [FK__chungChi__maDT__693CA210]
GO
ALTER TABLE [dbo].[danhMucDaoTao]  WITH CHECK ADD  CONSTRAINT [FK__danhMucDao__maDT__6754599E] FOREIGN KEY([maDT])
REFERENCES [dbo].[quaTrinhDaoTao] ([maDT])
GO
ALTER TABLE [dbo].[danhMucDaoTao] CHECK CONSTRAINT [FK__danhMucDao__maDT__6754599E]
GO
ALTER TABLE [dbo].[hopDong]  WITH CHECK ADD  CONSTRAINT [FK__hopDong__maNV__5FB337D6] FOREIGN KEY([maNV])
REFERENCES [dbo].[nhanVien] ([maNV])
GO
ALTER TABLE [dbo].[hopDong] CHECK CONSTRAINT [FK__hopDong__maNV__5FB337D6]
GO
ALTER TABLE [dbo].[lyLich]  WITH CHECK ADD  CONSTRAINT [FK__lyLich__maNV__628FA481] FOREIGN KEY([maNV])
REFERENCES [dbo].[nhanVien] ([maNV])
GO
ALTER TABLE [dbo].[lyLich] CHECK CONSTRAINT [FK__lyLich__maNV__628FA481]
GO
ALTER TABLE [dbo].[nhanVien]  WITH CHECK ADD  CONSTRAINT [FK__nhanVien__maCV__5629CD9C] FOREIGN KEY([maCV])
REFERENCES [dbo].[chucVu] ([maCV])
GO
ALTER TABLE [dbo].[nhanVien] CHECK CONSTRAINT [FK__nhanVien__maCV__5629CD9C]
GO
ALTER TABLE [dbo].[nhanVien]  WITH CHECK ADD  CONSTRAINT [FK__nhanVien__tenDT__5535A963] FOREIGN KEY([tenDT])
REFERENCES [dbo].[danToc] ([tenDT])
GO
ALTER TABLE [dbo].[nhanVien] CHECK CONSTRAINT [FK__nhanVien__tenDT__5535A963]
GO
ALTER TABLE [dbo].[nhanVien]  WITH CHECK ADD  CONSTRAINT [FK__nhanVien__tenGT__5441852A] FOREIGN KEY([tenGT])
REFERENCES [dbo].[gioiTinh] ([tenGT])
GO
ALTER TABLE [dbo].[nhanVien] CHECK CONSTRAINT [FK__nhanVien__tenGT__5441852A]
GO
ALTER TABLE [dbo].[nhanVienPhongBan]  WITH CHECK ADD  CONSTRAINT [FK__nhanVienPh__maNV__5CD6CB2B] FOREIGN KEY([maNV])
REFERENCES [dbo].[nhanVien] ([maNV])
GO
ALTER TABLE [dbo].[nhanVienPhongBan] CHECK CONSTRAINT [FK__nhanVienPh__maNV__5CD6CB2B]
GO
ALTER TABLE [dbo].[phanCong]  WITH CHECK ADD  CONSTRAINT [FK__phanCong__maDA__74AE54BC] FOREIGN KEY([maDA])
REFERENCES [dbo].[duAn] ([maDA])
GO
ALTER TABLE [dbo].[phanCong] CHECK CONSTRAINT [FK__phanCong__maDA__74AE54BC]
GO
ALTER TABLE [dbo].[phanCong]  WITH CHECK ADD  CONSTRAINT [FK__phanCong__maNV__73BA3083] FOREIGN KEY([maNV])
REFERENCES [dbo].[nhanVien] ([maNV])
GO
ALTER TABLE [dbo].[phanCong] CHECK CONSTRAINT [FK__phanCong__maNV__73BA3083]
GO
ALTER TABLE [dbo].[phanQuyen]  WITH CHECK ADD  CONSTRAINT [FK__phanQuyen__quyen__367C1819] FOREIGN KEY([quyen])
REFERENCES [dbo].[quyenTruyCap] ([quyen])
GO
ALTER TABLE [dbo].[phanQuyen] CHECK CONSTRAINT [FK__phanQuyen__quyen__367C1819]
GO
ALTER TABLE [dbo].[phanQuyen]  WITH CHECK ADD  CONSTRAINT [FK__phanQuyen__usern__3587F3E0] FOREIGN KEY([username])
REFERENCES [dbo].[taiKhoan] ([username])
GO
ALTER TABLE [dbo].[phanQuyen] CHECK CONSTRAINT [FK__phanQuyen__usern__3587F3E0]
GO
ALTER TABLE [dbo].[phongBan]  WITH CHECK ADD  CONSTRAINT [FK__phongBan__maDN__4BAC3F29] FOREIGN KEY([maDN])
REFERENCES [dbo].[DoanhNghiep] ([maDN])
GO
ALTER TABLE [dbo].[phongBan] CHECK CONSTRAINT [FK__phongBan__maDN__4BAC3F29]
GO
ALTER TABLE [dbo].[quaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK__quaTrinhDa__maNV__656C112C] FOREIGN KEY([maNV])
REFERENCES [dbo].[nhanVien] ([maNV])
GO
ALTER TABLE [dbo].[quaTrinhDaoTao] CHECK CONSTRAINT [FK__quaTrinhDa__maNV__656C112C]
GO
USE [master]
GO
ALTER DATABASE [QUANLYDOANHNGHIEP] SET  READ_WRITE 
GO
