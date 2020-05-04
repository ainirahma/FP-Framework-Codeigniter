-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 07:00 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `user_admin` varchar(30) NOT NULL,
  `pass_admin` varchar(225) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `gender_admin` varchar(10) NOT NULL,
  `telepon_admin` varchar(15) NOT NULL,
  `alamat_admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `general_ref`
--

CREATE TABLE `general_ref` (
  `kode_general_ref` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_ref`
--

INSERT INTO `general_ref` (`kode_general_ref`, `description`) VALUES
('gender_pegawai', 'gender pegawai'),
('jenis_paket', 'jenis paket'),
('pembayaran', 'pembayaran'),
('staus_order', 'status order');

-- --------------------------------------------------------

--
-- Table structure for table `general_ref_detail`
--

CREATE TABLE `general_ref_detail` (
  `kode_general_ref` varchar(200) NOT NULL,
  `kode_general_ref_detail` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_ref_detail`
--

INSERT INTO `general_ref_detail` (`kode_general_ref`, `kode_general_ref_detail`, `description`, `created_date`) VALUES
('gender_pegawai', 1, 'laki-laki', '0000-00-00'),
('gender_pegawai', 2, 'perempuan', '0000-00-00'),
('pembayaran', 3, 'lunas', '0000-00-00'),
('pembayaran', 4, 'belum lunas', '0000-00-00'),
('jenis_paket', 5, 'cuci-kering', '0000-00-00'),
('jenis_paket', 6, 'cuci-kering-setrika', '0000-00-00'),
('status_order', 7, 'Baru', '0000-00-00'),
('status_order', 8, 'selesai', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `user_pegawai` varchar(30) NOT NULL,
  `pass_pegawai` varchar(225) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `telepon_pegawai` varchar(13) NOT NULL,
  `gender_pegawai` varchar(10) NOT NULL,
  `alamat_pegawai` varchar(100) NOT NULL,
  `tanggal_dibuat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `user_pegawai`, `pass_pegawai`, `nama_pegawai`, `telepon_pegawai`, `gender_pegawai`, `alamat_pegawai`, `tanggal_dibuat`) VALUES
(1, 'lala', 'cahaya', 'cacac', '1234', 'laki', 'driy', '2020-03-16'),
(2, 'cici', 'CICI111', 'cici', '0899998823497', '', 'driyo', '0000-00-00'),
(3, 'cici11', 'saassasassss', 'gaga', '', '', '', '0000-00-00'),
(4, '', '', 'adsaddassd', '', '', '', '0000-00-00'),
(5, '', '', 'adsaddassd', '', '', '', '0000-00-00'),
(6, '', '', 'adsaddassd', '', '', '', '0000-00-00'),
(7, '', '', 'gaga', '', '', '', '0000-00-00'),
(8, '', '', 'gagas', '', '', '', '0000-00-00'),
(9, '', '', 'adsaddassd', '', '', '', '0000-00-00'),
(10, '', '', 'adsaddassd', '', '', '', '0000-00-00'),
(11, '', '', 'adsaddassd', '', '', '', '0000-00-00'),
(12, '', '', 'adsaddassd', '', '', '', '0000-00-00'),
(13, '', '', 'requireqwdm', '', '', '', '0000-00-00'),
(14, '', '', 'cici', '', '', '', '0000-00-00'),
(15, '', '', 'adsaddassd', '', '', '', '0000-00-00'),
(16, '', '', 'gaga', '', '', '', '0000-00-00'),
(17, '', '', 'gaga', '', '', '', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `general_ref`
--
ALTER TABLE `general_ref`
  ADD PRIMARY KEY (`kode_general_ref`);

--
-- Indexes for table `general_ref_detail`
--
ALTER TABLE `general_ref_detail`
  ADD PRIMARY KEY (`kode_general_ref_detail`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `general_ref_detail`
--
ALTER TABLE `general_ref_detail`
  MODIFY `kode_general_ref_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
