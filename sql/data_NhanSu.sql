use QuanLiNhanSu
go
select *from dbo.NhanVien
select *from dbo.ChucVu
go
insert dbo.ChucVu(MaCV,TenCV)
values('CV01',N'Trưởng phòng nhân sự')
insert dbo.ChucVu(MaCV,TenCV)
values('CV02',N'Thư kí')
insert dbo.ChucVu(MaCV,TenCV)
values('CV03',N'Phó phòng')
insert dbo.ChucVu(MaCV,TenCV)
values('CV04',N'Nhân viên')
insert dbo.ChucVu(MaCV,TenCV)
values('CV05',N'Trưởng phòng hành chính')
insert dbo.ChucVu(MaCV,TenCV)
values('CV06',N'Trưởng phòng giám sát')
go
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD01',N'Cử nhân',N'Phần mềm')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD02',N'Cử nhân',N'Bảo mật thông tin')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD03',N'Cử nhân',N'Kế toán')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD04',N'Cử nhân',N'Điện tử')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD05',N'Cử nhân',N'Đa phương tiện')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD06',N'Cử nhân',N'Lập trình game')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD07',N'Cử nhân',N'Lập trình web')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD08',N'Cử nhân',N'Lập trình mobile')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD09',N'Cử nhân',N'lập trình Python')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD010',N'Kĩ sư',N'Phần mềm')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD011',N'Kĩ sư',N'Bảo mật thông tin')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD012',N'Kĩ sư',N'Kế toán')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD013',N'Kĩ sư',N'Điện tử')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD014',N'Kĩ sư',N'Đa phương tiện')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD015',N'Kĩ sư',N'Lập trình game')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD016',N'Kĩ sư',N'Lập trình web')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD017',N'Kĩ sư',N'Lập trình mobile')
insert dbo.TrinhDoHV(MaTD,TenTDHV,ChuyenNganh)
values('TD018',N'Kĩ sư',N'lập trình Python')
go
insert dbo.PhongBan(MaPB,TenPb,SDT,Diachi)
values('PB01',N'Hành chính',096888868,N'Tầng1')
insert dbo.PhongBan(MaPB,TenPb,SDT,Diachi)
values('PB02',N'Kinh doanh',096886868,N'Tầng2')
insert dbo.PhongBan(MaPB,TenPb,SDT,Diachi)
values('PB03',N'Kế toán',096868668,N'Tầng3')
insert dbo.PhongBan(MaPB,TenPb,SDT,Diachi)
values('PB04',N'Văn phòng đại diện',096888888,N'Tầng 4')
go
insert dbo.Luong(MaLuong,LuongCB,HSLuong,HSPhuCap)
values('001',1000,1.5,0.5)
insert dbo.Luong(MaLuong,LuongCB,HSLuong,HSPhuCap)
values('002',1500,1.5,0.3)
insert dbo.Luong(MaLuong,LuongCB,HSLuong,HSPhuCap)
values('003',2000,1.5,0.2)
go
insert dbo.NhanVien(MaNV,HoTen,Ngaysinh,GioiTinh,DanToc,SDT,QueQuan,MaCV,MaLuong,MaPB,MaTD)
values('NV01',N'Vũ Đức Tỉnh','19970325',N'Nam',N'Kinh','0962857295',N'Nam Định','CV01','003','PB01','TD010')
insert dbo.NhanVien(MaNV,HoTen,Ngaysinh,GioiTinh,DanToc,SDT,QueQuan,MaCV,MaLuong,MaPB,MaTD)
values('NV02',N'Nguyễn Thị Thu','19970912',N'Nữ',N'Kinh','0962856293',N'Hưng Yên','CV02','002','PB01','TD015')
insert dbo.NhanVien(MaNV,HoTen,Ngaysinh,GioiTinh,DanToc,SDT,QueQuan,MaCV,MaLuong,MaPB,MaTD)
values('NV03',N'Ngô Thị Mến','19971101',N'Nữ',N'Kinh','0962855297',N'Nam Định','CV04','001','PB01','TD06')
insert dbo.NhanVien(MaNV,HoTen,Ngaysinh,GioiTinh,DanToc,SDT,QueQuan,MaCV,MaLuong,MaPB,MaTD)
values('NV04',N'Trần Thị Ngoan','19970302',N'Nữ',N'Kinh','0962854298',N'Nam Định','CV04','001','PB01','TD013')
select *from dbo.NhanVien

















