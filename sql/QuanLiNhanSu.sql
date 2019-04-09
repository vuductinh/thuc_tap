create database QuanLiNhanSu
use QuanLiNhanSu
go
create table PhongBan
(
 MaPB char(10) primary key,
 TenPb nvarchar(50),
 SDT char(20),
 Diachi nvarchar(50)
)
go
create table ChucVu
(
 MaCV char(10) primary key,
 TenCV nvarchar(50)
)
go
create table TrinhDoHV
(
 MaTD char(10) primary key,
 TenTDHV nvarchar(50),
 ChuyenNganh nvarchar(50)
)
go
create table Luong
(
 MaLuong char(10) primary key,
 LuongCB int,
 HSLuong float,
 HSPhuCap float
)
go
create table NhanVien
(
 MaNV char(10) primary key,
 HoTen nvarchar(50),
 Ngaysinh date,
 GioiTinh nvarchar(10),
 DanToc nvarchar(20),
 QueQuan nvarchar(50),
 SDT char(20),
 MaPB char(10),
 foreign key(MaPB) references PhongBan,
 MaCV char(10) references ChucVu,
 MaLuong char(10) references Luong,
 MaTD char(10) references TrinhDoHV
)
go
create table HopDong
(
 MaHD char(10) primary key,
 LoaiHD nvarchar(50),
 TuNgay date,
 DenNgay date,
 MaNV char(10) references NhanVien
) 


