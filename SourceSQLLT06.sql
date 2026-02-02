create table NganHang (
    MaNH NUMBER PRIMARY KEY,
    TenNH VARCHAR2(100)
);

create table ChiNhanh (
    MaCN VARCHAR2(10) PRIMARY KEY,
    MaNH NUMBER,
    ThanhPhoCN VARCHAR2(50),
    TaiSan NUMBER,
    CONSTRAINT fk_cn_nh FOREIGN KEY (MaNH) REFERENCES NganHang(MaNH)
);

create table KhachHang (
    MaKH VARCHAR2(20) PRIMARY KEY,
    TenKH VARCHAR2(100),
    DiaChi VARCHAR2(200)
);

create table TaiKhoanGoi (
    SoTKG VARCHAR2(20) PRIMARY KEY,
    MaKH VARCHAR2(20),
    MaCN VARCHAR2(10),
    SoTienGoi NUMBER,
    CONSTRAINT fk_tkg_kh FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
    CONSTRAINT fk_tkg_cn FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN)
);

create table TaiKhoanVay (
    SoTKV VARCHAR2(20) PRIMARY KEY,
    MaKH VARCHAR2(20),
    MaCN VARCHAR2(10),
    SoTienVay NUMBER,
    CONSTRAINT fk_tkv_kh FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
    CONSTRAINT fk_tkv_cn FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN)
);


INSERT INTO NganHang VALUES (1, 'Ngan Hang Cong Thuong');
INSERT INTO NganHang VALUES (2, 'Ngan Hang Ngoai Thuong');
INSERT INTO NganHang VALUES (3, 'Ngan Hang Nong Nghiep');
INSERT INTO NganHang VALUES (4, 'Ngan Hang A Chau');
INSERT INTO NganHang VALUES (5, 'Ngan Hang Thuong Tin');

select * from NganHang

INSERT INTO ChiNhanh VALUES ('CN01', 1, 'Da Lat', 2000000000);
INSERT INTO ChiNhanh VALUES ('CN02', 2, 'Nha Trang', 2700000000);
INSERT INTO ChiNhanh VALUES ('CN03', 3, 'Thanh Hoa', 4500000000);
INSERT INTO ChiNhanh VALUES ('CN04', 4, 'TP HCM', 6000000000);
INSERT INTO ChiNhanh VALUES ('CN05', 5, 'Da Nang', 7000000000);
INSERT INTO ChiNhanh VALUES ('CN011', 1, 'TP HCM', 5000000000);
INSERT INTO ChiNhanh VALUES ('CN12', 2, 'Hue', 1400000000);
INSERT INTO ChiNhanh VALUES ('CN13', 3, 'Da Nang', 3600000000);
INSERT INTO ChiNhanh VALUES ('CN14', 4, 'Ha Noi', 5700000000);
INSERT INTO ChiNhanh VALUES ('CN21', 1, 'Ha Noi', 3500000000);
INSERT INTO ChiNhanh VALUES ('CN22', 2, 'Ha Noi', 4500000000);
INSERT INTO ChiNhanh VALUES ('CN23', 3, 'Da Lat', 2400000000);
INSERT INTO ChiNhanh VALUES ('CN31', 1, 'Da Nang', 4000000000);
INSERT INTO ChiNhanh VALUES ('CN32', 2, 'TP HCM', 5600000000);
INSERT INTO ChiNhanh VALUES ('CN33', 3, 'Can Tho', 5400000000);
INSERT INTO ChiNhanh VALUES ('CN43', 3, 'Nam Dinh', 3600000000);
select * from chinhanh

INSERT INTO KhachHang VALUES ('111222333', 'Ho Thi Thanh Thao', '456 Le Duan, Ha Noi');
INSERT INTO KhachHang VALUES ('112233445', 'Tran Van Tien', '12 Dien Bien Phu, Q1, TP HCM');
INSERT INTO KhachHang VALUES ('123123123', 'Phan Thi Quynh Nhu', '54 Hai Ba Trung, Ha Noi');
INSERT INTO KhachHang VALUES ('123412341', 'Nguyen Van Thao', '34 Tran Phu, TP Nha Trang');
INSERT INTO KhachHang VALUES ('123456789', 'Nguyen Thi Hoa', '1/4 Hoang Van Thu, Da Lat');
INSERT INTO KhachHang VALUES ('221133445', 'Nguyen Thi Kim Mai', '4 Tran Binh Trong, Da Lat');
INSERT INTO KhachHang VALUES ('222111333', 'Do Tien Dong', '123 Tran Phu, Nam Dinh');
INSERT INTO KhachHang VALUES ('331122445', 'Bui Thi Dong', '345 Tran Hung Dao, Thanh Hoa');
INSERT INTO KhachHang VALUES ('333111222', 'Tran Dinh Hung', '783 Ly Thuong Kiet, Can Tho');
INSERT INTO KhachHang VALUES ('441122335', 'Nguyen Dinh Cuong', 'P12 Thanh Xuan Nam, Q Thanh Xuan');
INSERT INTO KhachHang VALUES ('456456456', 'Tran Nam Son', '5 Le Duan, TP Da Nang');
INSERT INTO KhachHang VALUES ('551122334', 'Tran Thi Khanh Van', '1A Ho Tung Mau, Da Lat');
INSERT INTO KhachHang VALUES ('987654321', 'Ho Thanh Son', '209 Tran Hung Dao, Q5, TP HCM');

select * from khachhang

INSERT INTO TaiKhoanGoi VALUES ('00001A', '123123123', 'CN01', 10000000);
INSERT INTO TaiKhoanGoi VALUES ('00001C', '123456789', 'CN01', 127000000);
INSERT INTO TaiKhoanGoi VALUES ('00002A', '221133445', 'CN02', 12500000);
INSERT INTO TaiKhoanGoi VALUES ('00003H', '456456456', 'CN03', 123000000);
INSERT INTO TaiKhoanGoi VALUES ('00005A', '222111333', 'CN05', 1200000);
INSERT INTO TaiKhoanGoi VALUES ('00005D', '987654321', 'CN05', 345000000);
INSERT INTO TaiKhoanGoi VALUES ('00005N', '123412341', 'CN05', 45000000);
INSERT INTO TaiKhoanGoi VALUES ('00003A', '331122445', 'CN13', 27000000);
INSERT INTO TaiKhoanGoi VALUES ('00004D', '551122334', 'CN14', 560000000);
INSERT INTO TaiKhoanGoi VALUES ('00004P', '123456789', 'CN14', 35400000);
INSERT INTO TaiKhoanGoi VALUES ('00001B', '123412341', 'CN21', 67000000);
INSERT INTO TaiKhoanGoi VALUES ('00002G', '222111333', 'CN22', 56000000);
INSERT INTO TaiKhoanGoi VALUES ('00004F', '987654321', 'CN23', 4500000);
INSERT INTO TaiKhoanGoi VALUES ('00003D', '333111222', 'CN33', 47000000);

select * from Taikhoangoi;


INSERT INTO TaiKhoanVay VALUES ('10001A', '111222333', 'CN01', 10000000);
INSERT INTO TaiKhoanVay VALUES ('10002A', '333111222', 'CN02', 6000000);
INSERT INTO TaiKhoanVay VALUES ('10004A', '551122334', 'CN04', 20000000);
INSERT INTO TaiKhoanVay VALUES ('10005G', '221133445', 'CN05', 15000000);
INSERT INTO TaiKhoanVay VALUES ('10001D', '987654321', 'CN011', 45000000);
INSERT INTO TaiKhoanVay VALUES ('10002D', '112233445', 'CN12', 12000000);
INSERT INTO TaiKhoanVay VALUES ('10003F', '441122335', 'CN13', 5500000);
INSERT INTO TaiKhoanVay VALUES ('10005A', '123123123', 'CN14', 12500000);

select * from Taikhoanvay;

SELECT DISTINCT nh.TenNH FROM NganHang nh JOIN ChiNhanh cn ON nh.MaNH = cn.MaNH WHERE cn.ThanhPhoCN = 'Da Lat';
SELECT DISTINCT cn.ThanhPhoCN FROM ChiNhanh cn JOIN NganHang nh ON cn.MaNH = nh.MaNH WHERE nh.TenNH = 'Ngan Hang Cong Thuong';
SELECT cn.*FROM ChiNhanh cn JOIN NganHang nh ON cn.MaNH = nh.MaNH WHERE nh.TenNH = 'Ngan Hang Cong Thuong' AND cn.ThanhPhoCN = 'TP HCM';
SELECT nh.TenNH, cn.MaCN, cn.ThanhPhoCN FROM NganHang nh JOIN ChiNhanh cn ON nh.MaNH = cn.MaNH;
SELECT * FROM KhachHang WHERE DiaChi LIKE '%Ha Noi%';
SELECT * FROM KhachHang WHERE TenKH LIKE '%Son%';
SELECT * FROM KhachHang WHERE DiaChi LIKE '%Tran Hung Dao%';
SELECT * FROM KhachHang WHERE TenKH LIKE '%Thao%';
SELECT *FROM KhachHang WHERE MaKH LIKE '11%' AND DiaChi LIKE '%TP HCM%';
SELECT nh.TenNH, cn.ThanhPhoCN, cn.TaiSan FROM ChiNhanh cn JOIN NganHang nh ON cn.MaNH = nh.MaNH ORDER BY cn.TaiSan ASC, cn.ThanhPhoCN ASC;
SELECT * FROM ChiNhanh WHERE TaiSan BETWEEN 3000000000 AND 5000000000;
SELECT nh.TenNH, AVG(cn.TaiSan) AS TaiSanTB FROM NganHang nh JOIN ChiNhanh cn ON nh.MaNH = cn.MaNH GROUP BY nh.TenNH;
SELECT DISTINCT kh.* FROM KhachHang kh JOIN TaiKhoanVay tv ON kh.MaKH = tv.MaKH 
JOIN ChiNhanh cn ON tv.MaCN = cn.MaCN JOIN NganHang nh ON cn.MaNH = nh.MaNH 
WHERE nh.TenNH = 'Ngan Hang Cong Thuong' AND kh.TenKH LIKE '%Thao%';
SELECT nh.TenNH, SUM(cn.TaiSan) AS TongTaiSan FROM NganHang nh JOIN ChiNhanh cn ON nh.MaNH = cn.MaNH GROUP BY nh.TenNH;
SELECT MaCN, TaiSan FROM ChiNhanh WHERE TaiSan = (SELECT MAX(TaiSan) FROM ChiNhanh);
SELECT DISTINCT kh.* FROM KhachHang kh 
JOIN TaiKhoanGoi tg ON kh.MaKH = tg.MaKH JOIN ChiNhanh cn ON tg.MaCN = cn.MaCN JOIN NganHang nh ON cn.MaNH = nh.MaNH 
WHERE nh.TenNH = 'Ngan Hang A Chau';

SELECT MaCN, SUM(SoTienGoi) AS TongTienGoi FROM TaiKhoanGoi GROUP BY MaCN;
SELECT kh.TenKH, tv.SoTKV, tg.SoTKG FROM KhachHang kh
LEFT JOIN TaiKhoanVay tv ON kh.MaKH = tv.MaKH
LEFT JOIN TaiKhoanGoi tg ON kh.MaKH = tg.MaKH
WHERE kh.TenKH LIKE '%Son%';


SELECT TKV.SoTKV, TKV.SoTienVay
FROM TaiKhoanVay TKV
JOIN ChiNhanh CN ON TKV.MaCN = CN.MaCN
JOIN NganHang NH ON CN.MaNH = NH.MaNH
WHERE NH.TenNH = N'Ngan Hang Ngoai Thuong' 
  AND TKV.SoTienVay > 1200000;


