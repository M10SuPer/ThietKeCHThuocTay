/*
Created		21/04/19
Modified		21/06/19
Project		
Model			
Company		
Author		
Version		
Database		MS SQL 2005 
*/
create database QLTHUOC1
go
use QLTHUOC1
go
Create table [Thuoc]
(
	[MaThuoc] Char(10) NOT NULL,
	[TenThuoc] Nvarchar(30) NULL,
	[SoLuong] Integer NULL,
	[DonGiaMua] Integer NULL,
	[MaDvt] Char(10) NOT NULL,
	[MaLoaiThuoc] Char(10) NOT NULL,
Primary Key ([MaThuoc])
) 
go

Create table [LoaiThuoc]
(
	[MaLoaiThuoc] Char(10) NOT NULL,
	[TenLoaiThuoc] Nvarchar(30) NULL,
Primary Key ([MaLoaiThuoc])
) 
go

Create table [NhanVien]
(
	[MaNV] Char(10) NOT NULL,
	[HoTenNV] Nvarchar(30) NULL,
	[GioiTinh] Varchar(4) NULL,
	[NgaySinh] Datetime NULL,
	[DiaChi] Nvarchar(30) NULL,
	[SDT] Varchar(10) NULL,
Primary Key ([MaNV])
) 
go

Create table [Kho]
(
	[MaKho] Char(10) NOT NULL,
	[TenKho] Nvarchar(30) NULL,
	[DiaDiem] Nvarchar(30) NULL,
Primary Key ([MaKho])
) 
go

Create table [NhaCungCap]
(
	[MaNCC] Char(10) NOT NULL,
	[TenNCC] Nvarchar(30) NULL,
	[DiaChiNCC] Nvarchar(30) NULL,
	[DienThoaiNCC] Varchar(10) NULL,
Primary Key ([MaNCC])
) 
go

Create table [KhachHang]
(
	[MaKH] Char(10) NOT NULL,
	[HoTenKH] Nvarchar(30) NULL,
	[DIACHI] Varchar(30) NULL,
	[SDT] Varchar(10) NULL,
	[MaLoaiKH] Char(10) NOT NULL,
Primary Key ([MaKH])
) 
go

Create table [LoaiKhachHang]
(
	[MaLoaiKH] Char(10) NOT NULL,
	[TENLOAIKH] Nvarchar(30) NULL,
Primary Key ([MaLoaiKH])
) 
go

Create table [DViTinh]
(
	[MaDvt] Char(10) NOT NULL,
	[TenDvt] Nvarchar(30) NULL,
Primary Key ([MaDvt])
) 
go

Create table [LoThuoc]
(
	[MaLo] Char(10) NOT NULL,
	[TenLo] Nvarchar(30) NULL,
	[NgaySXLo] Datetime NULL,
	[NgayHetHan] Datetime NULL,
	[SoLuong] Integer NULL,
	[ThanhTien] Money NULL,
	[MaThuoc] Char(10) NOT NULL,
Primary Key ([MaLo])
) 
go

Create table [PhieuXuatKho]
(
	[MaPXK] Char(10) NOT NULL,
	[MaNV] Char(10) NOT NULL,
	[NgayXK] Datetime NULL,
	[MaKho] Char(10) NOT NULL,
	[MaHD] Char(10) NOT NULL,
Primary Key ([MaPXK])
) 
go

Create table [CT_PXuatKho]
(
	[MaPXK] Char(10) NOT NULL,
	[MaThuoc] Char(10) NOT NULL,
	[SoLuong] Integer NULL,
Primary Key ([MaPXK],[MaThuoc])
) 
go

Create table [PhieuNhapKho]
(
	[MaPNK] Char(10) NOT NULL,
	[NgayNK] Datetime NULL,
	[MaKho] Char(10) NOT NULL,
	[MaNV] Char(10) NOT NULL,
	[MaHopDong] Char(10) NOT NULL,
	[MaThuoc] Char(10) NOT NULL,
Primary Key ([MaPNK])
) 
go

Create table [CT_PNhapKho]
(
	[MaPNK] Char(10) NOT NULL,
	[MaThuoc] Char(10) NOT NULL,
	[SoLuong] Integer NULL,
Primary Key ([MaPNK],[MaThuoc])
) 
go

Create table [HoaDon]
(
	[MaHD] Char(10) NOT NULL,
	[NgayLapHD] Datetime NULL,
	[ThanhTien] Money NULL,
	[MaKH] Char(10) NOT NULL,
	[MaNV] Char(10) NOT NULL,
Primary Key ([MaHD])
) 
go

Create table [CT_HD]
(
	[MaHD] Char(10) NOT NULL,
	[MaThuoc] Char(10) NOT NULL,
	[SoLuong] Integer NULL,
	[DonGia] Money NULL,
Primary Key ([MaHD],[MaThuoc])
) 
go

Create table [Quyen_DangNhap]
(
	[TenDangNhap] Char(1) NOT NULL,
	[MatKhau] Char(1) NULL,
	[MaNV] Char(10) NOT NULL,
Primary Key ([TenDangNhap])
) 
go

Create table [HopDong]
(
	[MaHopDong] Char(10) NOT NULL,
	[NgayLap] Datetime NULL,
	[NgayNhan] Datetime NULL,
	[NoiNhan] Nvarchar(30) NULL,
	[TongTien] Money NULL,
	[SLGiao] Integer NULL,
	[MaNCC] Char(10) NOT NULL,
	[MaNV] Char(10) NOT NULL,
Primary Key ([MaHopDong])
) 
go

Create table [PhieuNhanHang]
(
	[MaPNhan] Char(10) NOT NULL,
	[NgayGiao] Datetime NULL,
	[TongTien] Money NULL,
	[MaNV] Char(10) NOT NULL,
	[MaHopDong] Char(10) NOT NULL,
Primary Key ([MaPNhan])
) 
go

Create table [CT_HopDong]
(
	[MaHopDong] Char(10) NOT NULL,
	[MaThuoc] Char(10) NOT NULL,
	[SoLuong] Integer NULL,
	[DonGia] Money NULL,
	[ThanhTien] Money NULL,
Primary Key ([MaHopDong],[MaThuoc])
) 
go

Create table [CT_PNhanHang]
(
	[MaPNhan] Char(10) NOT NULL,
	[MaThuoc] Char(10) NOT NULL,
	[SoLuong] Integer NULL,
	[DonGia] Money NULL,
	[TongTien] Money NULL,
Primary Key ([MaPNhan],[MaThuoc])
) 
go

Create table [BaoCao_CuoiNgay]
(
	[MaBCN] Char(10) NOT NULL,
	[MaNV] Char(10) NOT NULL,
	[NgayLap] Datetime NULL,
	[DoanhThu] Money NULL,
	[MaKH] Char(10) NOT NULL,
Primary Key ([MaBCN])
) 
go

Create table [CT_BCNgay]
(
	[MaHD] Char(10) NOT NULL,
	[MaBCN] Char(10) NOT NULL,
	[SoLuong] Integer NULL,
	[DonGia] Money NULL,
Primary Key ([MaHD],[MaBCN])
) 
go


Alter table [LoThuoc] add  foreign key([MaThuoc]) references [Thuoc] ([MaThuoc])  on update no action on delete no action 
go
Alter table [CT_PXuatKho] add  foreign key([MaThuoc]) references [Thuoc] ([MaThuoc])  on update no action on delete no action 
go
Alter table [CT_PNhapKho] add  foreign key([MaThuoc]) references [Thuoc] ([MaThuoc])  on update no action on delete no action 
go
Alter table [CT_HD] add  foreign key([MaThuoc]) references [Thuoc] ([MaThuoc])  on update no action on delete no action 
go
Alter table [CT_HopDong] add  foreign key([MaThuoc]) references [Thuoc] ([MaThuoc])  on update no action on delete no action 
go
Alter table [CT_PNhanHang] add  foreign key([MaThuoc]) references [Thuoc] ([MaThuoc])  on update no action on delete no action 
go
Alter table [Thuoc] add  foreign key([MaLoaiThuoc]) references [LoaiThuoc] ([MaLoaiThuoc])  on update no action on delete no action 
go
Alter table [PhieuXuatKho] add  foreign key([MaNV]) references [NhanVien] ([MaNV])  on update no action on delete no action 
go
Alter table [PhieuNhapKho] add  foreign key([MaNV]) references [NhanVien] ([MaNV])  on update no action on delete no action 
go
Alter table [HoaDon] add  foreign key([MaNV]) references [NhanVien] ([MaNV])  on update no action on delete no action 
go
Alter table [PhieuNhanHang] add  foreign key([MaNV]) references [NhanVien] ([MaNV])  on update no action on delete no action 
go
Alter table [HopDong] add  foreign key([MaNV]) references [NhanVien] ([MaNV])  on update no action on delete no action 
go
Alter table [BaoCao_CuoiNgay] add  foreign key([MaNV]) references [NhanVien] ([MaNV])  on update no action on delete no action 
go
Alter table [Quyen_DangNhap] add  foreign key([MaNV]) references [NhanVien] ([MaNV])  on update no action on delete no action 
go
Alter table [PhieuNhapKho] add  foreign key([MaKho]) references [Kho] ([MaKho])  on update no action on delete no action 
go
Alter table [PhieuXuatKho] add  foreign key([MaKho]) references [Kho] ([MaKho])  on update no action on delete no action 
go
Alter table [HopDong] add  foreign key([MaNCC]) references [NhaCungCap] ([MaNCC])  on update no action on delete no action 
go
Alter table [HoaDon] add  foreign key([MaKH]) references [KhachHang] ([MaKH])  on update no action on delete no action 
go
Alter table [BaoCao_CuoiNgay] add  foreign key([MaKH]) references [KhachHang] ([MaKH])  on update no action on delete no action 
go
Alter table [KhachHang] add  foreign key([MaLoaiKH]) references [LoaiKhachHang] ([MaLoaiKH])  on update no action on delete no action 
go
Alter table [Thuoc] add  foreign key([MaDvt]) references [DViTinh] ([MaDvt])  on update no action on delete no action 
go
Alter table [CT_PXuatKho] add  foreign key([MaPXK]) references [PhieuXuatKho] ([MaPXK])  on update no action on delete no action 
go
Alter table [CT_PNhapKho] add  foreign key([MaPNK]) references [PhieuNhapKho] ([MaPNK])  on update no action on delete no action 
go
Alter table [CT_HD] add  foreign key([MaHD]) references [HoaDon] ([MaHD])  on update no action on delete no action 
go
Alter table [CT_BCNgay] add  foreign key([MaHD]) references [HoaDon] ([MaHD])  on update no action on delete no action 
go
Alter table [PhieuXuatKho] add  foreign key([MaHD]) references [HoaDon] ([MaHD])  on update no action on delete no action 
go
Alter table [CT_HopDong] add  foreign key([MaHopDong]) references [HopDong] ([MaHopDong])  on update no action on delete no action 
go
Alter table [PhieuNhanHang] add  foreign key([MaHopDong]) references [HopDong] ([MaHopDong])  on update no action on delete no action 
go
Alter table [CT_PNhanHang] add  foreign key([MaPNhan]) references [PhieuNhanHang] ([MaPNhan])  on update no action on delete no action 
go
Alter table [PhieuNhapKho] add  foreign key([MaHopDong],[MaThuoc]) references [CT_HopDong] ([MaHopDong],[MaThuoc])  on update no action on delete no action 
go
Alter table [CT_BCNgay] add  foreign key([MaBCN]) references [BaoCao_CuoiNgay] ([MaBCN])  on update no action on delete no action 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


/* Roles permissions */


/* Users permissions */


