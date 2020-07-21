-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21 Jul 2020 pada 05.27
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qr_code2`
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
-- Struktur dari tabel `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` varchar(20) NOT NULL,
  `nama` text NOT NULL,
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
('GST011', 'DWI RAHAYU, SH, M.Hum.', '', 'reg', 'belum', 0, ''),
('GST012', 'Ir. H. MOCH. KHARIS, M.Si', '', 'reg', 'belum', 0, ''),
('GST013', 'Dra. LILIS RUKMINIWATI', '', 'reg', 'belum', 0, ''),
('GST014', 'DRIAS LEUSANTI, S.Pi. MM', '', 'reg', 'belum', 0, ''),
('GST015', 'WINDRA NOVISARI, S.Sos M.AP', '', 'reg', 'belum', 0, ''),
('GST016', 'DEWI RATNA SARI, A.Md', '', 'reg', 'belum', 0, ''),
('GST017', 'IKHWANUS SHOFA', '', 'reg', 'belum', 0, ''),
('GST018', 'YON YUAN MARAIN, SE', 'alamat', 'reg', 'belum', 0, ''),
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
('GST147', 'MEYLINDA', 'TETANGGA', 'reg', 'belum', 0, ''),
('GST148', 'Budi Prasetyo Utomo, S. Pd., M.Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST149', 'Dra. Retno Ambarwati', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST150', 'Drs. Saerodji', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST151', 'Dra. Woro Sri Wilujeng', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST152', 'Ngesti Baju Ratwati, S.Pd, M.Pd', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST153', 'Dra. Listijo Kapti Poedji Soeprihati', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST154', 'Indyah Kusdarini, M.Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST155', 'Dra. Esti Palupi', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST156', 'Dra. Liliek Rahayu, M.Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST157', 'Lilik Sri Utari, S.Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST158', 'Drs. Tony Suhartono, M.M.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST159', 'Dra. Tinna Suprapti', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST160', 'Drs. Gunarta, M.Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST161', 'Bambang Dwi Andari, M.Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST162', 'Dra. Aniek Biastuti', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST163', 'Salis Ahda, M.Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST164', 'Achmad Sulton, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST165', 'Afifah Yusalina Salim, S.Pd', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST166', 'Mintarsih, S. Pd', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST167', 'Zafifatuz Zuhriyah, S. Pd', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST168', 'Syaifudin Ramadhani, S. Kom', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST169', 'Ivatus Sunaifah, S.Si., M.Pd', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST170', 'Riska Mareitha, M.Pd, Dip. ELT', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST171', 'Riris Andriani, M.Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST172', 'Feri Yanti, S.Kom.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST173', 'Evva, S.Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST174', 'Dony Andri Setiawan, S.Pd', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST175', 'Amalia Sufa, S.ST, M.T', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST176', 'Alfan Akbar Yusuf, S. Pd., M.Si', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST177', 'Dian Henny Priani, S.S', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST178', 'Iva Musrifatin, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST179', 'Eko Fibriono, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST180', 'Dini Alfiyanti Wahyuni, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST181', 'Helmi, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST182', 'Evida Rahmawati, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST183', 'Intan Cahyaning Handoyo, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST184', 'Dina Febrianawati, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST185', 'Sukirman, S. S., M. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST186', 'Nahnu Robid Jiwandono, M. Pd .', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST187', 'Nisfu Yuliadi, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST188', 'Yunita, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST189', 'Shinta Adhisti Oktarini, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST190', 'Daniah Mumtaza, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST191', 'Hendro Widianto, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST192', 'Melinda, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST193', 'Winny Muyassarah Walidah, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST194', 'Deva Aldynata, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST195', 'Devi Nur Ratna Eko Putro, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST196', 'Isa Wijiningtyas, M. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST197', 'Wahyu Setiyo Bekti, S. S.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST198', 'Ahmad Fuad Awfaz, S. Pd. I', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST199', 'Wahyu Puspa Sari, S. Pd', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST200', 'Mahendra Pradipta, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST201', 'Anggaraeni Budiarti, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST202', 'Taman', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST203', 'Yuli Astuti, S. Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST204', 'Paiman', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST205', 'Sulianto', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST206', 'Elias Yacobus', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST207', 'Hermawan', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST208', 'Aan Yuniarso', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST209', 'Asih Yanuarini', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST210', 'Mohamad Iqbal, S. Kom.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST211', 'Kuswanto ', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST212', 'Abdul Rochman', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST214', 'Amin Hartono', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST215', 'Nizar Abdul Razaaq', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST216', 'Illa Wahyunia', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST217', 'Ima Aprillia Hariyanti, S. Si.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST218', 'Brilian Asa Margantara, S.Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST219', 'Inrillian Handrian Fitracino, S.Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST220', 'Mirza Rahmadani, S.Pd., M.Akun.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST221', 'Fitroh Mushbidin Diwanto, S.Pd.I.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST222', 'Akhmad Robhirt Rizali, S.Pd.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST223', 'Dr. H. Mochtar Data, M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST224', 'Dr. Hj. Luluk Sri Agus P., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST225', 'Dr. Hasan Busri, M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST226', 'Dr. Hj. Dyah Werdiningsih, M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST227', 'Dr. Sri Wahyuni, M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST228', 'Dr. H. Nur Fajar Arief, M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST229', 'Dr. Akhmad Tabrani, M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST230', 'Dr. H. Abdul Rani,M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST231', 'Dr. Moh. Badrih, M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST232', 'Dr. Ari Ambarwati, SS., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST233', 'Elva Riezky Maharany, S.Pd., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST234', 'Prayitno Tri Laksono, S.Pd., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST235', 'Frida Siswiyanti, S.Pd., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST236', 'Layli Hidayah, S. Pd., M. Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST237', 'Helmi Wicaksono, S.Pd., M.Pd', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST238', 'Khoirul Muttaqin, S.S., M.Hum', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST239', 'Itznaniyah Umie Murniatie, M.Pd', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST240', 'Dr. Ifit Novita Sari, M.Pd', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST241', 'Prof. Dr. Drs. Surahmat, M.Si.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST242', 'Drs. Zainal Abidin AMS, M.Pd., Ph.D.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST243', 'Drs. H. Mustangin, M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST244', 'Dr. Sunismi, M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST245', 'Dr. Dra. Rr. Ettie Rukmigarsari, M.Kes.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST246', 'Anies Fuady, M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST247', 'Sikky El Walida, S.Si., M.Pd', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST248', 'Abdul Halim Fathani, S.Si., M.Pd', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST249', 'Surya Sari Faradiba, S.Si., M.Pd', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST250', 'Isbadar Nursit, S.Pd., M.Pd', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST251', 'Siti Nurul Hasana, S.Si., M.Sc', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST252', 'Alifiani, S.Pd., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST253', 'Ganjar Setyo Widodo, S. Pd., M. Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST254', 'Gusti Firda Khairunnisa, M.Pd', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST255', 'Yuli Ismi Nahdiyati Ilmi, S.Pd., M.Pd', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST256', 'Yayan Eryk Setiawan, S.Pd., M.Pd', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST257', 'Dr. Syaifudin, M.Pd', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST258', 'Ahmad Sufyan Z., S.Pd., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST259', 'Fadhilah Kartika Sari, S.Pd., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST260', 'Tri Candra, M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST261', 'Prof. Drs. H. Junaidi Mistar, M.Pd., Ph.D.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST262', 'Dr. Hj. Mutmainnah Mustofa, M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST263', 'Dr. Alfan Zuhairi, M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST264', 'Drs. H. Ali Ashari, M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST265', 'Drs. Yahya Alaydrus, M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST266', 'Muhammad Yunus, S.Pd., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST267', 'Hamiddin, S.Pd., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST268', 'Nuse Aliyah Rahmati, S.Pd., M.A.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST269', 'Kurniasih, S.Pd., M.A.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST270', 'Imam Wahyudi Karimullah, S.S., MA.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST271', 'Dzul Fikri, S.S., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST272', 'Atik Umamah, S.Pd., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST273', 'Ika Hidayanti, S.Pd., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST274', 'Henny Rahmawati, S.Pd., S.S., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST275', 'Diah Retno Widowati, S.Pd., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST276', 'Eko Suhartoyo, S.Pd., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST277', 'Fitri Awaliyatush Sholihah, S.Pd., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST278', 'Febti Ismiatun, S.Pd., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST279', 'Dzurriyyatun Niâ€™mah, S.Pd., M.Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST280', 'Drs. H. Mustofa Kamali, M.Si.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST281', 'Dr. Rulam Ahmadi, M. Pd.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST282', 'Dr. Dwi Fita Heriyawanti, M.Pd', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST283', 'Mochamad Imron Azami, S.pd., M.Ed.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST284', 'Mohamad Irfan Hasan, S.Ap.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST285', 'Hardiyanti Setyasari, S.AB.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST286', 'Muhamad Arifin, S.Ap.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST287', 'Aisyah Zulfie Hafsoh, S.Ap.', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST288', 'Rivina Rizky Al Fitasari, S.Pd', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST289', 'Diah Ayu Puspitasari, SH', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST290', 'Muhammad, SE', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST291', 'Junaidi, S.Pd', 'FKIP UNIVERSITAS ISLAM MALANG', 'reg', 'belum', 0, ''),
('GST292', 'Muhammad Ghifari Robby', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST293', 'Ulin Nafi ah, S. Ag.', 'SMAN 4 MALANG', 'reg', 'belum', 0, ''),
('GST294', 'Mamik Sumarni, M.Pd.', '', 'reg', 'belum', 0, ''),
('GST295', 'ade fajar ', 'jalanan', 'vip', 'sudah', 8, 'tonighauew');

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
-- AUTO_INCREMENT for table `tamulain`
--
ALTER TABLE `tamulain`
  MODIFY `id_tamu` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
