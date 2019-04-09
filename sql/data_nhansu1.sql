use QuanLiNhanSu
go
select *from dbo.NhanVien
select *from dbo.HopDong
select *from dbo.PhongBan
select *from dbo.ChucVu
select *from dbo.TrinhDoHV
delete dbo.HopDong where MaNV=(select MaNV from dbo.NhanVien where MaNV='NV01')
insert dbo.NhanVien(MaNV,HoTen,Ngaysinh,QueQuan,GioiTinh,MaLuong,MaCV,SDT,MaTD)
values('NV08',N'Nguyễn Chiến Thắng','1998/02/03',N'Vĩnh Phúc',N'Nam','001','CV04','097865789','TD03')
insert dbo.HopDong(MaHD,LoaiHD,TuNgay,DenNgay,MaNV)
values('HD01',N'Xác định thời hạn','2014/03/08','2020/03/08','NV01')
insert dbo.HopDong(MaHD,LoaiHD,TuNgay,DenNgay,MaNV)
values('HD02',N'Xác định thời hạn','2015/03/08','2019/03/08','NV02')
insert dbo.HopDong(MaHD,LoaiHD,TuNgay,DenNgay,MaNV)
values('HD03',N'Xác định thời hạn','2015/03/08','2019/03/08','NV03')
insert dbo.HopDong(MaHD,LoaiHD,TuNgay,DenNgay,MaNV)
values('HD04',N'Xác định thời hạn','2018/03/08','2019/03/08','NV04')
insert dbo.HopDong(MaHD,LoaiHD,TuNgay,DenNgay,MaNV)
values('HD05',N'Không xác định thời hạn','2019/03/08','2022/03/08','NV05')
insert dbo.HopDong(MaHD,LoaiHD,TuNgay,DenNgay,MaNV)
values('HD06',N'Không xác định thời hạn','2017/03/08','2021/03/08','NV06')
insert dbo.HopDong(MaHD,LoaiHD,TuNgay,DenNgay,MaNV)
values('HD07',N'Xác định thời hạn','2018/03/08','2021/03/08','NV07')
insert dbo.HopDong(MaHD,LoaiHD,TuNgay,DenNgay,MaNV)
values('HD08',N'Xác định thời hạn','2016/03/08','2020/03/08','NV08')

select year(hd.DenNgay)-YEAR(GETDATE()) N'Thời gian', nv.HoTen N'Họ tên',nv.Ngaysinh N'Ngày sinh',nv.GioiTinh N'Giới tính',nv.QueQuan N'Quê quán' from dbo.HopDong hd ,dbo.NhanVien nv
where nv.MaNV = hd.MaNV and year(hd.DenNgay)-YEAR(GETDATE()) <= 1
go
update dbo.NhanVien set MaPB='PB02' where HoTen=N'Nguyễn Chiến Thắng'

