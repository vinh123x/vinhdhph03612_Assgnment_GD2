-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-01-22 14:35:50.179


create database QLBH
go 
use QLBH

-- tables
-- Table: chitiethoadon
CREATE TABLE chitiethoadon (
    mahd nvarchar(20)  NOT NULL,
    masp nvarchar(20)  NOT NULL,
    soluong int  NOT NULL,
    ngaygd datetime  NOT NULL,
    CONSTRAINT chitiethoadon_pk PRIMARY KEY  (mahd,masp)
)
;





-- Table: hoadon
CREATE TABLE hoadon (
    mahd nvarchar(20)  NOT NULL,
    makh nvarchar(20)  NOT NULL,
    tensp nvarchar(20)  NOT NULL,
    giatien decimal(12,2)  NOT NULL,
    CONSTRAINT hoadon_pk PRIMARY KEY  (mahd)
)
;





-- Table: khachhang
CREATE TABLE khachhang (
    makh nvarchar(20)  NOT NULL,
    hoten varchar(255)  NOT NULL,
    diachi varchar(255)  NOT NULL,
    sdt int  NOT NULL,
    email varchar(255)  NOT NULL,
    CONSTRAINT khachhang_pk PRIMARY KEY  (makh)
)
;





-- Table: loaisanpham
CREATE TABLE loaisanpham (
    maloaisp nvarchar(20)  NOT NULL,
    tenloai varchar(255)  NOT NULL,
    soluong int  NOT NULL,
    CONSTRAINT loaisanpham_pk PRIMARY KEY  (maloaisp)
)
;





-- Table: sanpham
CREATE TABLE sanpham (
    masp nvarchar(20)  NOT NULL,
    maloaisp nvarchar(20)  NOT NULL,
    tensp varchar(255)  NOT NULL,
    donvitinh char(10)  NOT NULL,
    giatien decimal(12,2)  NOT NULL,
    mieuta varchar(1000)  NOT NULL,
    anh image  NULL,
    CONSTRAINT sanpham_pk PRIMARY KEY  (masp)
)
;









-- foreign keys
-- Reference:  client_purchase (table: hoadon)

ALTER TABLE hoadon ADD CONSTRAINT client_purchase 
    FOREIGN KEY (makh)
    REFERENCES khachhang (makh)
;

-- Reference:  product_category_product (table: sanpham)

ALTER TABLE sanpham ADD CONSTRAINT product_category_product 
    FOREIGN KEY (maloaisp)
    REFERENCES loaisanpham (maloaisp)
;

-- Reference:  product_purchase_item (table: chitiethoadon)

ALTER TABLE chitiethoadon ADD CONSTRAINT product_purchase_item 
    FOREIGN KEY (masp)
    REFERENCES sanpham (masp)
;

-- Reference:  purchase_purchase_item (table: chitiethoadon)

ALTER TABLE chitiethoadon ADD CONSTRAINT purchase_purchase_item 
    FOREIGN KEY (mahd)
    REFERENCES hoadon (mahd)
;





-- End of file.
--- kiểm tra 
select * from khachhang
select * from hoadon
select * from chitiethoadon
select * from sanpham
select * from loaisanpham
--- Nhập dữ liệu


--- Khách hàng
delete from khachhang
insert into khachhang values (N'kh01',N'DoHoangA',N'HaNoi',123456789,N'vinh1@Gmail.com')
insert into khachhang values (N'kh02',N'DoHoangB',N'HaNoi',123456789,N'vinh2@Gmail.com')
insert into khachhang values (N'kh03',N'DoHoangC',N'HaNoi',123456789,N'vinh3@Gmail.com')
insert into khachhang values (N'kh04',N'DoHoangD',N'HaNoi',123456789,N'vinh4@Gmail.com')
insert into khachhang values (N'kh05',N'DoHoangV',N'HaNoi',123456789,N'vinh5@Gmail.com')
insert into khachhang values (N'kh06',N'DoHoangE',N'HaNoi',123456789,N'vinh6@Gmail.com')
insert into khachhang values (N'kh07',N'DoHoangF',N'HaNoi',123456789,N'vinh7@Gmail.com')
insert into khachhang values (N'kh08',N'DoHoangG',N'HaNoi',123456789,N'vinh8@Gmail.com')
insert into khachhang values (N'kh09',N'DoHoangH',N'HaNoi',123456789,N'vinh9@Gmail.com')
insert into khachhang values (N'kh10',N'DoHoangI',N'HaNoi',123456789,N'vinh10@Gmail.com')

--- Loaisanpham
delete from loaisanpham
insert into loaisanpham values (N'maloaisp01',N'Dandung',N'1000')
insert into loaisanpham values (N'maloaisp02',N'Oto',N'1500')
insert into loaisanpham values (N'maloaisp03',N'Xemay',N'2000')
insert into loaisanpham values (N'maloaisp04',N'Dienlanh',N'3000')
insert into loaisanpham values (N'maloaisp05',N'Dientu',N'2500')

--- Sanpham
delete from sanpham
insert into sanpham values (N'sp01',N'maloaisp01',N'Noicomdien',N'chiec',1000000,N'moinhap',null)
insert into sanpham values (N'sp02',N'maloaisp01',N'Quat',N'chiec',500000,N'moinhap',null)
insert into sanpham values (N'sp03',N'maloaisp02',N'BMW',N'chiec',1000000000,N'moinhap',null)
insert into sanpham values (N'sp04',N'maloaisp02',N'Audi',N'chiec',2000000000,N'moinhap',null)
insert into sanpham values (N'sp05',N'maloaisp03',N'Honda',N'chiec',40000000,N'moinhap',null)
insert into sanpham values (N'sp06',N'maloaisp03',N'Yamaha',N'chiec',30000000,N'moinhap',null)
insert into sanpham values (N'sp07',N'maloaisp04',N'Tulanh',N'chiec',5000000,N'moinhap',null)
insert into sanpham values (N'sp08',N'maloaisp04',N'Dieuhoa',N'chiec',8000000,N'moinhap',null)
insert into sanpham values (N'sp09',N'maloaisp05',N'Tivi',N'chiec',5000000,N'moinhap',null)
insert into sanpham values (N'sp10',N'maloaisp05',N'Maytinh',N'chiec',15000000,N'moinhap',null)

--- Hóa đơn
delete from hoadon
insert into hoadon values (N'hd01',N'kh01',N'Tivi',5000000)
insert into hoadon values (N'hd02',N'kh02',N'Maytinh',15000000)
insert into hoadon values (N'hd03',N'kh03',N'Dieuhoa',8000000)
insert into hoadon values (N'hd04',N'kh04',N'Tulanh',5000000)
insert into hoadon values (N'hd05',N'kh05',N'Yamaha',35000000)
insert into hoadon values (N'hd06',N'kh06',N'BMW',1000000000)
insert into hoadon values (N'hd07',N'kh07',N'Noicomdien',1000000)
insert into hoadon values (N'hd08',N'kh08',N'Quat',500000)
insert into hoadon values (N'hd09',N'kh09',N'Audi',2000000000)
insert into hoadon values (N'hd10',N'kh10',N'Honda',40000000)

--- chi tiết hóa đơn
delete from chitiethoadon
insert into chitiethoadon values (N'hd01',N'sp09',N'1',N'12-15-2015')
insert into chitiethoadon values (N'hd02',N'sp10',N'1',N'12-16-2015')
insert into chitiethoadon values (N'hd03',N'sp08',N'1',N'12-17-2015')
insert into chitiethoadon values (N'hd04',N'sp07',N'1',N'12-18-2015')
insert into chitiethoadon values (N'hd05',N'sp06',N'1',N'12-19-2015')
insert into chitiethoadon values (N'hd06',N'sp03',N'1',N'12-20-2015')
insert into chitiethoadon values (N'hd07',N'sp01',N'1',N'12-21-2015')
insert into chitiethoadon values (N'hd08',N'sp02',N'1',N'12-22-2015')
insert into chitiethoadon values (N'hd09',N'sp04',N'1',N'12-23-2015')
insert into chitiethoadon values (N'hd10',N'sp05',N'1',N'12/24/2015')
