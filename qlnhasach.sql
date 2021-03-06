-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2022 at 04:21 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlnhasach`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MAHD` int(11) NOT NULL,
  `MASACH` int(11) DEFAULT NULL,
  `DonGia` int(11) DEFAULT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiamGia` int(11) NOT NULL,
  `ThanhTien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MAHD`, `MASACH`, `DonGia`, `SoLuong`, `GiamGia`, `ThanhTien`) VALUES
(1, 1, 275000, 1, 10, 247500),
(2, 1, 275000, 1, 10, 247500),
(2, 6, 120000, 1, 0, 120000),
(3, 1, 275000, 1, 10, 247500),
(4, 15, 120000, 5, 0, 600000),
(4, 1, 275000, 3, 0, 825000),
(5, 1, 275000, 2, 10, 495000),
(6, 1, 275000, 1, 10, 247500),
(7, 1, 275000, 5, 10, 1237500),
(7, 2, 85000, 5, 10, 382500),
(8, 2, 82000, 3, 10, 62000),
(6, 1, 275000, 1, 10, 247500),
(9, 5, 126000, 3, 0, 378000),
(10, 1, 275000, 1, 0, 275000),
(11, 1, 275000, 1, 0, 275000),
(11, 2, 85000, 1, 0, 85000),
(12, 1, 275000, 5, 0, 1375000),
(12, 2, 85000, 5, 0, 425000);

-- --------------------------------------------------------

--
-- Table structure for table `chitietkhuyenmai`
--

CREATE TABLE `chitietkhuyenmai` (
  `MAKM` int(11) NOT NULL,
  `TenKhuyenMai` varchar(100) DEFAULT NULL,
  `NgayBD` date DEFAULT NULL,
  `NgayKT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietkhuyenmai`
--

INSERT INTO `chitietkhuyenmai` (`MAKM`, `TenKhuyenMai`, `NgayBD`, `NgayKT`) VALUES
(1, 'Gi???m 10% Ti???u Thuy???t', '2022-05-01', '2022-05-03'),
(2, '', '2022-05-22', '2022-05-22'),
(3, '', '2022-05-22', '2022-05-24'),
(4, '', '2022-05-23', '2022-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `MAPHIEU` int(11) NOT NULL,
  `MASACH` int(11) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`MAPHIEU`, `MASACH`, `SoLuong`) VALUES
(1, 1, 5),
(2, 2, 2),
(3, 1, 6),
(4, 2, 1),
(5, 1, 1),
(6, 1, 10),
(7, 15, 5),
(8, 15, 6),
(9, 15, 5),
(10, 1, 2),
(11, 1, 10),
(12, 1, 10),
(13, 3, 5),
(14, 1, 20),
(15, 4, 5),
(16, 1, 66),
(17, 1, 66),
(18, 1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `chucvu`
--

CREATE TABLE `chucvu` (
  `id` int(11) NOT NULL,
  `tenchucvu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chucvu`
--

INSERT INTO `chucvu` (`id`, `tenchucvu`) VALUES
(0, 'Kh??ng Quy???n'),
(1, 'Admin'),
(2, 'Qu???n L??'),
(3, 'Nh??n Vi??n');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MAHD` int(11) NOT NULL,
  `MANV` int(11) DEFAULT NULL,
  `MAKH` int(11) DEFAULT NULL,
  `NgayLapHD` date DEFAULT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MAHD`, `MANV`, `MAKH`, `NgayLapHD`, `ThanhTien`) VALUES
(1, 1, 1, '2022-05-17', 247500),
(2, 1, 1, '2022-05-17', 367500),
(3, 1, 1, '2022-05-12', 150000),
(4, 1, 1, '2022-05-18', 1425000),
(5, 1, 1, '2022-05-18', 495000),
(6, 1, 1, '2022-05-18', 150000),
(7, 1, 1, '2022-05-18', 1620000),
(8, 1, 1, '2022-05-18', 150000),
(9, 1, 1, '2022-09-05', 625500),
(10, 2, 1, '2022-05-08', 275000),
(11, 1, 2, '2022-05-23', 360000),
(12, 1, 1, '2022-05-23', 1800000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MAKH` int(11) NOT NULL,
  `Ho` varchar(50) DEFAULT NULL,
  `Ten` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `Sdt` varchar(10) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MAKH`, `Ho`, `Ten`, `DiaChi`, `Sdt`, `Email`) VALUES
(1, 'V??', 'Minh Hu??n', '169 ds2, PTTA, Q BTan, TPHCM', '0943925251', 'huanne@gmail.com'),
(2, '??inh Nguy???n', 'Trang Minh', '123 H??m Nghi, P Dakao, Q.1', '0904582372', 'trangminh@gmail.com'),
(3, 'Ph???m ????nh', 'Ph????ng Nam', '74 ??inh Ti??n Ho??ng, P13, Q.B??nh Th???nh', '0932423323', 'phuongnam@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MAKM` int(11) NOT NULL,
  `MALOAI` varchar(5) DEFAULT NULL,
  `PhanTramGiam` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`MAKM`, `MALOAI`, `PhanTramGiam`) VALUES
(1, '1', 10),
(2, '1', 20),
(3, '6', 30),
(4, '5', 20);

-- --------------------------------------------------------

--
-- Table structure for table `loaisach`
--

CREATE TABLE `loaisach` (
  `MaLOAI` varchar(10) NOT NULL,
  `TenLoai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaisach`
--

INSERT INTO `loaisach` (`MaLOAI`, `TenLoai`) VALUES
('1', 'Ti???u Thuy???t'),
('2', 'Trinh Th??m'),
('3', 'Truy???n Tranh'),
('4', 'V??n H???c'),
('5', '?????i S???ng T??m L??'),
('6', 'Light Novel');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MANCC` int(11) NOT NULL,
  `TenNCC` varchar(100) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `Sdt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MANCC`, `TenNCC`, `DiaChi`, `Sdt`) VALUES
(1, 'Nh?? Xu???t B???n Kim ?????ng', '17 L?? Th??nh T??n', '0904582372'),
(2, 'Nh?? Xu???t B???n V??n H???c', '6 M???c ????nh Chi', '0932034456'),
(3, 'Nh?? Xu???t B???n ??H Qu???c Gia', '127 Nguy???n ????nh Chi???u', '0904582372'),
(4, 'Nh?? Xu???t B???n Th???i ?????i', '34 Tr???n Cao V??n', '0923432123');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MANV` int(11) NOT NULL,
  `Ho` varchar(50) DEFAULT NULL,
  `Ten` varchar(50) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Luong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MANV`, `Ho`, `Ten`, `NgaySinh`, `Email`, `Luong`) VALUES
(1, 'Admin', 'Admin', '2001-10-10', 'admin@gmail.com', 18000),
(2, 'V??', 'Minh Hu??n', '2001-10-30', 'minhhuan@gmail.com', 18000),
(3, '??inh Nguy???n', 'Trang Minh', '2001-05-03', 'trangminh@gmail.com', 19000),
(4, 'Ph???m ????nh', 'Ph????ng Nam', '2001-05-03', 'phuongnam@gmail.com', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhaphang`
--

CREATE TABLE `phieunhaphang` (
  `MAPHIEU` int(11) NOT NULL,
  `MANV` int(11) DEFAULT NULL,
  `MANCC` int(11) DEFAULT NULL,
  `Ngay` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieunhaphang`
--

INSERT INTO `phieunhaphang` (`MAPHIEU`, `MANV`, `MANCC`, `Ngay`) VALUES
(1, 1, 1, '2022-05-16'),
(2, 2, 2, '2022-05-16'),
(3, 1, 1, '2022-05-16'),
(4, 2, 3, '2022-05-12'),
(5, 1, 1, '2022-05-17'),
(6, 1, 1, '2022-05-17'),
(7, 1, 1, '2022-05-17'),
(8, 1, 1, '2022-05-17'),
(9, 1, 1, '2022-05-18'),
(10, 1, 1, '2022-05-17'),
(11, 1, 1, '2022-05-24'),
(12, 1, 1, '2022-05-24'),
(13, 1, 1, '2022-05-24'),
(14, 1, 1, '2022-05-24'),
(15, 1, 1, '2022-05-24'),
(16, 1, 1, '2022-05-24'),
(17, 1, 1, '2022-05-24'),
(18, 1, 1, '2022-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE `sach` (
  `MASACH` int(11) NOT NULL,
  `NhaXuatBan` varchar(100) DEFAULT NULL,
  `MaLoai` varchar(10) DEFAULT NULL,
  `TenSach` varchar(100) DEFAULT NULL,
  `TacGia` varchar(100) DEFAULT NULL,
  `DonGia` int(11) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`MASACH`, `NhaXuatBan`, `MaLoai`, `TenSach`, `TacGia`, `DonGia`, `SoLuong`) VALUES
(1, '2', '1', 'Before I Fall', 'Lauren Oliver', 275000, 20),
(2, '3', '1', 'Don Quixote', 'Miguel de Cervantes', 85000, 4),
(3, '3', '1', 'A Game Of Thrones', 'George R.R Martin', 170000, 14),
(4, '3', '1', 'The Witcher: The Last Wish', 'Andrzej Sapkowski', 220000, 9),
(5, '1', '2', 'Sherlock Holmes', 'Arthur Conan Doyle', 126000, 1),
(6, '1', '2', 'The Book Thief', 'Markus Zusak', 120000, 11),
(7, '1', '3', 'Barakamon', 'Yoshino Satsuki', 55000, 5),
(8, '1', '3', 'Conan', 'Aoyama Gosho', 22000, 16),
(9, '1', '3', 'Doraemon', 'Fujiko F Fujio', 15000, 22),
(10, '1', '4', 'Ch?? Ph??o', 'Nam Cao', 120000, 52),
(11, '1', '4', 'T???t ????n', 'Ng?? T???t T???', 120000, 15),
(12, '1', '5', 'G?? Nghi???n Gi??y', 'Phil Knight', 165000, 23),
(13, '1', '5', 'C?? Ph?? C??ng Tony', 'Tony Bu???i S??ng', 85000, 23),
(14, '1', '6', '5cm Per Second', 'Shinkai Makoto', 25000, 30),
(15, '1', '6', 'Another', 'Yukito Ayatsuji', 120000, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbltaikhoan`
--

CREATE TABLE `tbltaikhoan` (
  `id` int(11) NOT NULL,
  `tendangnhap` varchar(50) DEFAULT NULL,
  `matkhau` varchar(50) DEFAULT NULL,
  `capbac` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltaikhoan`
--

INSERT INTO `tbltaikhoan` (`id`, `tendangnhap`, `matkhau`, `capbac`) VALUES
(1, 'admin', '123', 1),
(2, 'quanly', '123', 2),
(3, 'nhanvien', '123', 3),
(4, 'khachhang', '123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MASACH` (`MASACH`);

--
-- Indexes for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  ADD PRIMARY KEY (`MAKM`);

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`MAPHIEU`),
  ADD KEY `MASACH` (`MASACH`);

--
-- Indexes for table `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MAHD`),
  ADD KEY `MANV` (`MANV`),
  ADD KEY `MAKH` (`MAKH`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MAKH`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MAKM`),
  ADD KEY `MALOAI` (`MALOAI`);

--
-- Indexes for table `loaisach`
--
ALTER TABLE `loaisach`
  ADD PRIMARY KEY (`MaLOAI`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MANCC`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MANV`);

--
-- Indexes for table `phieunhaphang`
--
ALTER TABLE `phieunhaphang`
  ADD PRIMARY KEY (`MAPHIEU`),
  ADD KEY `MANV` (`MANV`),
  ADD KEY `MANCC` (`MANCC`);

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`MASACH`),
  ADD KEY `MaLoai` (`MaLoai`);

--
-- Indexes for table `tbltaikhoan`
--
ALTER TABLE `tbltaikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MASACH`) REFERENCES `sach` (`MASACH`);

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_1` FOREIGN KEY (`MASACH`) REFERENCES `sach` (`MASACH`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`);

--
-- Constraints for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD CONSTRAINT `khuyenmai_ibfk_1` FOREIGN KEY (`MALOAI`) REFERENCES `loaisach` (`MaLOAI`);

--
-- Constraints for table `phieunhaphang`
--
ALTER TABLE `phieunhaphang`
  ADD CONSTRAINT `phieunhaphang_ibfk_1` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`),
  ADD CONSTRAINT `phieunhaphang_ibfk_2` FOREIGN KEY (`MANCC`) REFERENCES `nhacungcap` (`MANCC`);

--
-- Constraints for table `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loaisach` (`MaLOAI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
