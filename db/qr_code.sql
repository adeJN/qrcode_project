-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10 Jul 2020 pada 16.57
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qr_code`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `namalengkap` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `namalengkap`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Dadung Awuk'),
(4, 'basuki', 'b4e364bb5eab14eedd9ae3d54437d52f', 'Basuki Oke');

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `nama_event` varchar(200) NOT NULL,
  `tggl_event` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(10) NOT NULL,
  `npm` varchar(10) DEFAULT NULL,
  `nama_mhs` varchar(40) DEFAULT NULL,
  `prodi` varchar(40) DEFAULT NULL,
  `tgl_lulus` date DEFAULT NULL,
  `no_ijazah` varchar(40) DEFAULT NULL,
  `ipk` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `npm`, `nama_mhs`, `prodi`, `tgl_lulus`, `no_ijazah`, `ipk`) VALUES
(1, '10010001', 'Dadung Awuk', 'Teknik Informatika', '2018-12-05', '2018/IJ/LI-COM/XII/090', '3.56'),
(2, '10010002', 'Angling Dharma', 'Teknik Informatika', '2018-12-14', '2018/IJ/LI-COM/XII/091', '3.45'),
(3, '10010003', 'Kamandanau', 'Teknik Informatika', '2018-12-11', '2018/IJ/LI-COM/XII/092', '3.00'),
(4, '10010004', 'Mak Lampir', 'Teknik Informatika', '2018-12-18', '2018/IJ/LI-COM/XII/093', '3.40'),
(5, '10010005', 'Grandong', 'Teknik Informatika', '2018-12-04', '2018/IJ/LI-COM/XII/094', '3.20'),
(7, '10010006', 'AGUS SUSANTO', 'Teknik Informatika', '2018-11-22', '2018/IJ/LI-COM/XII/095', '3.53'),
(8, '1001007', 'Basuki', 'Teknik Informatika', '2018-11-13', '2018/IJ/LI-COM/XII/096', '3.61'),
(9, '10010007', 'Ronggo Lawe', 'Teknik Informatika', '2018-11-22', '2018/IJ/LI-COM/XII/097', '3.32'),
(10, '12312321', 'Ade fajar', 'Teknik Informatika', '2020-12-31', '123wqoie12', '4.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `posisi` varchar(20) NOT NULL,
  `datang` varchar(200) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `nama`, `alamat`, `posisi`, `datang`, `jumlah`, `keterangan`) VALUES
('GST001', 'Kerabat Batu', 'Batu', 'vip', 'belum', 0, ''),
('GST002', 'Keluarga Blitar', 'Blitar', 'vip', 'belum', 0, ''),
('GST003', 'Keluarga Jombang', 'Jombang', 'vip', 'belum', 0, ''),
('GST004', 'Teman Fia', '', 'reg', 'belum', 0, ''),
('GST005', 'ade', '', 'reg', 'belum', 0, ''),
('GST006', 'qwe', '', 'reg', 'belum', 0, ''),
('GST007', 'asd', '', 'reg', 'belum', 0, ''),
('GST008', 'qwfds', '', 'reg', 'belum', 0, ''),
('GST009', 'qwefsd', '', 'reg', 'belum', 0, ''),
('GST010', 'xcvx', '', 'reg', 'belum', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamulain`
--

CREATE TABLE `tamulain` (
  `id_tamu` int(11) NOT NULL,
  `nama` varchar(111) NOT NULL,
  `alamat` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `tamulain`
--
ALTER TABLE `tamulain`
  ADD PRIMARY KEY (`id_tamu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tamulain`
--
ALTER TABLE `tamulain`
  MODIFY `id_tamu` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
