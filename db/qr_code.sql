-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2020 at 03:35 PM
-- Server version: 10.1.21-MariaDB
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `namalengkap` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `namalengkap`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Dadung Awuk'),
(4, 'basuki', 'b4e364bb5eab14eedd9ae3d54437d52f', 'Basuki Oke');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `nama_event` varchar(200) NOT NULL,
  `tggl_event` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
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
-- Dumping data for table `mahasiswa`
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
-- Table structure for table `tamu`
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
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `nama`, `alamat`, `posisi`, `datang`, `jumlah`, `keterangan`) VALUES
('GST001', 'Kerabat Batu', 'Batu', 'vip', 'belum', 0, ''),
('GST002', 'Keluarga Blitar', 'Blitar', 'vip', 'belum', 0, ''),
('GST003', 'Keluarga Jombang', 'Jombang', 'vip', 'belum', 0, ''),
('GST004', 'Teman Fia', '', 'reg', 'belum', 0, ''),
('GST011', 'DWI RAHAYU, SH, M.Hum.', '', 'reg', 'belum', 0, ''),
('GST012', 'Ir. H. MOCH. KHARIS, M.Si', '', 'reg', 'belum', 0, ''),
('GST013', 'Dra. LILIS RUKMINIWATI', '', 'reg', 'belum', 0, ''),
('GST014', 'DRIAS LEUSANTI, S.Pi. MM', '', 'reg', 'belum', 0, ''),
('GST015', 'WINDRA NOVISARI, S.Sos M.AP', '', 'reg', 'belum', 0, ''),
('GST016', 'DEWI RATNA SARI, A.Md', '', 'reg', 'belum', 0, ''),
('GST017', 'IKHWANUS SHOFA', '', 'reg', 'belum', 0, ''),
('GST018', 'YON YUAN MARAIN, SE', '', 'reg', 'belum', 0, ''),
('GST019', 'SUHERIYONO', '', 'reg', 'belum', 0, ''),
('GST020', 'ZAINI', '', 'reg', 'belum', 0, ''),
('GST021', 'ARIYANTO', '', 'reg', 'belum', 0, ''),
('GST022', 'TOTOK ALADIN', '', 'reg', 'belum', 0, ''),
('GST023', 'GABRIELLA AYU FAJAR TITAHING WIDI S.AP', '', 'reg', 'belum', 0, ''),
('GST024', 'M. ANIS JANUAR, ST, MT', '', 'reg', 'belum', 0, ''),
('GST025', 'ARUM PAWESTRI, ST, MT, M.Sc', '', 'reg', 'belum', 0, ''),
('GST026', 'AGUSTINA RATRI HENDROWATI, ST, M.AP, MPP', '', 'reg', 'belum', 0, ''),
('GST027', 'ARIEF BUDI ANANTA, ST', '', 'reg', 'belum', 0, ''),
('GST028', 'LENNA KRISWATI, ST', '', 'reg', 'belum', 0, ''),
('GST029', 'DEDE RUTANA AGUS TAMALIA, S.E., M.AP', '', 'reg', 'belum', 0, ''),
('GST030', 'SUGENG SUROTO, S.Sos ', '', 'reg', 'belum', 0, ''),
('GST031', 'DEDY TRI WAHYUDI SURYO P,  S.STP', '', 'reg', 'belum', 0, ''),
('GST032', 'Dra. SRI ENDANG SUCIATY', '', 'reg', 'belum', 0, ''),
('GST033', 'SISWANTO', '', 'reg', 'belum', 0, ''),
('GST034', 'MALINDRA DISIX  SUKARNO, S.Sos', '', 'reg', 'belum', 0, ''),
('GST035', 'NURUL SRI HARDIYANTI, ST, M.Eng', '', 'reg', 'belum', 0, ''),
('GST036', 'DEDDY NUGROHO', '', 'reg', 'belum', 0, ''),
('GST037', 'Drs. SUDARSO, MMA', '', 'reg', 'belum', 0, ''),
('GST038', 'WILLSTAR TARIPAR H, S.STP', '', 'reg', 'belum', 0, ''),
('GST039', 'GANIS INDAJANI, SE. MM', '', 'reg', 'belum', 0, ''),
('GST040', 'DEWI ALFIAH, S.Sos, MM ', '', 'reg', 'belum', 0, ''),
('GST041', 'WIWIT ADI PRASTIYO, S.E ', '', 'reg', 'belum', 0, ''),
('GST042', 'NUR HAYATI', '', 'reg', 'belum', 0, ''),
('GST043', 'DWI WIJONO, SKM ', '', 'reg', 'belum', 0, ''),
('GST044', 'R. SUSETYO DWI YUDIHARTO, ST', '', 'reg', 'belum', 0, ''),
('GST045', 'ENDANG DWI SURYANDARI, SP, MM', '', 'reg', 'belum', 0, ''),
('GST046', 'DIANA ERMANDRA DEWI, SP, MM', '', 'reg', 'belum', 0, ''),
('GST047', 'SOPHIA NUR, S.Si', '', 'reg', 'belum', 0, ''),
('GST048', 'MIRZA RONALD  ADISAPUTRA, SE, MM', '', 'reg', 'belum', 0, ''),
('GST049', 'PRASTYA PETANDRA', '', 'reg', 'belum', 0, ''),
('GST050', 'IDO PRIMANANDA, S.E. ', '', 'reg', 'belum', 0, ''),
('GST051', 'ZAKARIA, S. AP', '', 'reg', 'belum', 0, ''),
('GST052', 'EKO BUDI VALIANTO, SE', '', 'reg', 'belum', 0, ''),
('GST053', 'ASFA AGUSTINA NUSBA AINI, S.Si', '', 'reg', 'belum', 0, ''),
('GST054', 'RISA SAADIAH, S.Si, M.Si', '', 'reg', 'belum', 0, ''),
('GST055', 'VANI MAULINA', '', 'reg', 'belum', 0, ''),
('GST056', 'EVA ASTARI R', '', 'reg', 'belum', 0, ''),
('GST057', 'NADIA BUDI S', '', 'reg', 'belum', 0, ''),
('GST058', 'RENDHA OKTHAVIANTI P', '', 'reg', 'belum', 0, ''),
('GST059', 'M. IRFAUL HUDA', '', 'reg', 'belum', 0, ''),
('GST060', 'YUDIK NASRUL M', '', 'reg', 'belum', 0, ''),
('GST061', 'BAYU RISKIAWAN', '', 'reg', 'belum', 0, ''),
('GST062', 'MARIYATUL KIBTIYAH', '', 'reg', 'belum', 0, ''),
('GST063', 'TRI YUDHA YUSTICEA S', '', 'reg', 'belum', 0, ''),
('GST064', 'DHIMAS RAFLY N', '', 'reg', 'belum', 0, ''),
('GST065', 'CAHYA BINTANG W', '', 'reg', 'belum', 0, ''),
('GST066', 'INDAH NURTARINI Y', '', 'reg', 'belum', 0, ''),
('GST067', 'AKHMAD ZAENURI', '', 'reg', 'belum', 0, ''),
('GST068', 'ARIEF ZUBAIDY, SE, M.Si', '', 'reg', 'belum', 0, ''),
('GST069', 'INDIRA SRI WAHYUNI, STP 1', '', 'reg', 'belum', 0, ''),
('GST070', 'BOBBY INDRA', '', 'reg', 'belum', 0, ''),
('GST071', 'ALIVAL HAMDAN', '', 'reg', 'belum', 0, ''),
('GST072', 'MARIA SERLIENCE', '', 'reg', 'belum', 0, ''),
('GST073', 'DEVI AGUSTINA', '', 'reg', 'belum', 0, ''),
('GST074', 'PANDU ZANUAR', '', 'reg', 'belum', 0, ''),
('GST075', 'FADHILATUS SHOIMAH', '', 'reg', 'belum', 0, ''),
('GST076', 'DEFIN HELDA LELIANA', '', 'reg', 'belum', 0, ''),
('GST077', 'DHARA KUSUMAWARDHANI', '', 'reg', 'belum', 0, ''),
('GST078', 'UMMU HANIK F', '', 'reg', 'belum', 0, ''),
('GST079', 'AISYIYAH FAUZIAH', '', 'reg', 'belum', 0, ''),
('GST080', 'OLIVE MAHMIDAH', '', 'reg', 'belum', 0, ''),
('GST081', 'CHOIROTUL AFIFAH', '', 'reg', 'belum', 0, ''),
('GST082', 'NUR WULAN', '', 'reg', 'belum', 0, ''),
('GST083', 'RICHO PUTRA IDEA', '', 'reg', 'belum', 0, ''),
('GST084', 'WILDHAN RAGA', '', 'reg', 'belum', 0, ''),
('GST085', 'ARIEF FERDIANSYAH', '', 'reg', 'belum', 0, ''),
('GST086', 'INDAH DWI S', '', 'reg', 'belum', 0, ''),
('GST087', 'AULIYA ADZILATIN', '', 'reg', 'belum', 0, ''),
('GST088', 'NUR KHOLIFAH', '', 'reg', 'belum', 0, ''),
('GST089', 'NOVITA MEGAWATI', '', 'reg', 'belum', 0, ''),
('GST090', 'ZULFATUL HANA', '', 'reg', 'belum', 0, ''),
('GST091', 'CHRISTINA INDRIANI', '', 'reg', 'belum', 0, ''),
('GST092', 'CHAFIDA ROFIATUL C', '', 'reg', 'belum', 0, ''),
('GST093', 'Hj. SRI HENDROWATI, SH, M.Kn', 'TEMAN MAMA', 'reg', 'belum', 0, ''),
('GST094', 'H. YUDIANSYAH, S.H', 'TEMAN MAMA', 'reg', 'belum', 0, ''),
('GST095', 'Ir. BUDI ARHAM, S.H, MKn', 'TEMAN MAMA', 'reg', 'belum', 0, ''),
('GST096', 'DENDY HARTANTO, ST SEKELUARGA', 'TEMAN MAMA', 'reg', 'belum', 0, ''),
('GST097', 'SUGIARTI SRI RAHAYU, SH', 'TEMAN MAMA', 'reg', 'belum', 0, ''),
('GST098', 'AMAS HANI WAHYUNI', 'TEMAN MAMA', 'reg', 'belum', 0, ''),
('GST099', 'HADI SUNARKO / MBAK LUKY', 'TEMAN MAMA', 'reg', 'belum', 0, ''),
('GST100', 'MBAK YULI - BATU', 'TEMAN MAMA', 'reg', 'belum', 0, ''),
('GST101', 'Drs. ARIS W', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST102', 'Drs. ARIS W', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST103', 'PAK MUSTOFA', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST104', 'ABDUL ROFIK', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST105', 'PAK MUADIB', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST106', 'Ir. H. KHAIRUL SARIFTARTILA', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST107', 'KOESWARDIYOKO, S.E., M.M', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST108', 'SEMBRY RADITYA', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST109', 'BUDI PURNOMO', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST110', 'FAJAR UTOMO', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST111', 'HERU', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST112', 'MARâ€™AN', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST113', 'H. USMAN', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST114', 'H. WAWAN', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST115', 'H. SUGIONO', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST116', 'H. HASAN', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST117', 'Hj. RATMI', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST118', 'H. SURYONO', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST119', 'H. BAMBANG', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST120', 'H. PARWOTO', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST121', 'H. RODI', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST122', 'Drs. AGUS MAHMUDI. MM', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST123', 'Drs. SURYONO, MM', 'TEMAN PAPA', 'reg', 'belum', 0, ''),
('GST124', 'SOFYAN FATONI', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST125', 'SITI MARIYAM SEKELUARGA', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST126', 'YUSUF SEKELUARGA', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST127', 'GATOT SEKELUARGA', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST128', 'SHELLA', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST129', 'LUTFI ', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST130', 'MUKSIN', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST131', 'HARI', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST132', 'BU FA', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST133', 'PAK ALEX', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST134', 'IMYANG', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST135', 'EKO', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST136', 'TAIN', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST137', 'PAK RUL', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST138', 'PAK DI', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST139', 'BU MATAHIR', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST140', 'BU RUKIN', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST141', 'YULIANTO', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST142', 'SOLIKIN', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST143', 'SUPRIONO', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST144', 'SUKARLI', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST145', 'MBAK DIANA', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST146', 'MBAK IVA', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST147', 'MEYLINDA', 'TETANGGA', 'reg', 'belum', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tamulain`
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
