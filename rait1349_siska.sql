-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 24 Des 2021 pada 14.36
-- Versi server: 10.2.41-MariaDB-cll-lve
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rait1349_siska`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `Akta Kelahiran`
--

CREATE TABLE `Akta Kelahiran` (
  `nama_negara` varchar(10) NOT NULL,
  `nomor_aktakelahiran` int(50) NOT NULL,
  `STBLD` int(50) NOT NULL,
  `Tempat Lahir` varchar(50) NOT NULL,
  `Tanggal Lahir` int(50) NOT NULL,
  `Tahun Lahir` int(50) NOT NULL,
  `Nama Lengkap` varchar(100) NOT NULL,
  `Keterangan Anak ke` varchar(50) NOT NULL,
  `Ketetapan Tempat dibuat Akta Kelahiran` varchar(100) NOT NULL,
  `Tanggal Keluarnya Akta Kelahiran` varchar(100) NOT NULL,
  `Tahun Keluarnya Akta Kelahiran` varchar(100) NOT NULL,
  `Keterangan Kepala Dinas Kependudukan dan Pencatatan Sipil` varchar(100) NOT NULL,
  `Tanda Tangan atau Cap dari KBK dan CSDKB` text NOT NULL,
  `Nama Kepala Dinas Kependudukan dan Pencatatan Sipil` varchar(1000) NOT NULL,
  `NIP Kepala Dinas Kependudukan dan Pencatatan Sipil` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Domisili Penduduk`
--

CREATE TABLE `Domisili Penduduk` (
  `Nama Desa` varchar(100) NOT NULL,
  `Nama Kecamatan` varchar(100) NOT NULL,
  `Nama Kabupaten` varchar(100) NOT NULL,
  `Nama yang akan diisi di Domisili` varchar(50) NOT NULL,
  `NIK domisili` int(50) NOT NULL,
  `Tempat dan tanggal lahir domisili` varchar(100) NOT NULL,
  `Agama` varchar(10) NOT NULL,
  `Kewarganegaraan` varchar(20) NOT NULL,
  `Pekerjaan` varchar(100) NOT NULL,
  `Alamat domisili` varchar(500) NOT NULL,
  `Tempat domisili` varchar(100) NOT NULL,
  `Desa domisili` varchar(100) NOT NULL,
  `Waktu Keluarnya Surat` varchar(100) NOT NULL,
  `Keterangan Asal Daerah Kepala Desa` varchar(1000) NOT NULL,
  `Tanda Tangan Kepala Desa` text NOT NULL,
  `Nama Kepala Desa` varchar(100) NOT NULL,
  `NIP Kepala Desa` int(100) NOT NULL,
  `Pemohon` varchar(1000) NOT NULL,
  `Tanda Tangan Pemohon atau User` varchar(100) NOT NULL,
  `Nama Pemohon atau User` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Form Tautan serta Layanan SISKA Mobile ke Desa`
--

CREATE TABLE `Form Tautan serta Layanan SISKA Mobile ke Desa` (
  `NIK User` int(50) NOT NULL,
  `Fitur Pilih Desa` varchar(100) NOT NULL,
  `Nomor Kartu Keluarga User` int(50) NOT NULL,
  `Upload Image KTP User` blob NOT NULL,
  `Upload Image Selfie KTP User` blob NOT NULL,
  `Submit Form Tautan Desa` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Homepage SISKA`
--

CREATE TABLE `Homepage SISKA` (
  `Menu Profil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Kartu Keluarga`
--

CREATE TABLE `Kartu Keluarga` (
  `Nomor KK` int(100) NOT NULL,
  `Nama Kepala Keluarga` varchar(1000) NOT NULL,
  `Alamat KK` varchar(10000) NOT NULL,
  `RT/RW` int(50) NOT NULL,
  `Desa/Kelurahan` varchar(1000) NOT NULL,
  `Kecamatan` varchar(1000) NOT NULL,
  `Kabupaten/Kota` varchar(1000) NOT NULL,
  `Kode Pos` int(100) NOT NULL,
  `Provinsi` varchar(1000) NOT NULL,
  `Nomor Urut Keluarga` int(50) NOT NULL,
  `Nama Lengkap masing masing kepala dan anggota keluarga` longtext NOT NULL,
  `NIK` int(100) NOT NULL,
  `Jenis Kelamin masing masing kepala dan anggota keluarga` longtext NOT NULL,
  `Tempat Lahir masing masing kepala dan anggota keluarga` longtext NOT NULL,
  `Agama masing masing kepala dan anggota keluarga` varchar(1000) NOT NULL,
  `Pendidikan masing masing kepala dan anggota keluarga` varchar(10000) NOT NULL,
  `Jenis pekerjaan masing masing kepala dan anggota keluarga` varchar(10000) NOT NULL,
  `Nomor Urut Status dan Data data lain dalam KK` int(10) NOT NULL,
  `Status Perkawinan Keluarga` varchar(1000) NOT NULL,
  `Status Hubungan Keluarga` varchar(1000) NOT NULL,
  `Kewarganegaraan` varchar(1000) NOT NULL,
  `Nomor Paspor` int(100) NOT NULL,
  `Nomor KITAS/KITAB` int(100) NOT NULL,
  `Nama Ayah dari Kepala dan Anggota Keluarga` mediumtext NOT NULL,
  `Nama Ibu dari Kepala dan Anggota Keluarga` mediumtext NOT NULL,
  `Keluaran Tanggal` int(50) NOT NULL,
  `Lembaran` varchar(1000) NOT NULL,
  `Tanda tangan Kepala Keluarga` text NOT NULL,
  `Nama Kepala Keluarga dibawah tanda tangan kepala keluarga` varchar(100) NOT NULL,
  `Keterangan Asal Kepala Dinas Kependudukan Pencatatan Sipil` varchar(1000) NOT NULL,
  `Tanda tangan Kepala Dinas Kependudukan dan Catatan Sipil` text NOT NULL,
  `QR Code KK terbaru` blob NOT NULL,
  `Nama Kepala Dinas Kependudukan dan Catatan Sipil` varchar(100) NOT NULL,
  `NIP Kepala Dinas Kependudukan dan Catatan Sipil Kota` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Layanan Surat SISKA`
--

CREATE TABLE `Layanan Surat SISKA` (
  `Akta Kelahiran` longtext NOT NULL,
  `Domisili Penduduk SISKA Mobile` varchar(3000) NOT NULL,
  `Surat Izin Usaha` longtext NOT NULL,
  `Kartu Keluarga` longtext NOT NULL,
  `Surat Keterangan Tidak Mampu` longtext NOT NULL,
  `Surat Keterangan Berpergian` longtext NOT NULL,
  `Surat Pengantar KTP` longtext NOT NULL,
  `Surat Keterangan Catatan Kepolisian` longtext NOT NULL,
  `Surat Pindah` longtext NOT NULL,
  `Surat Tempat Usaha` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Layout Konfirmasi SISKA`
--

CREATE TABLE `Layout Konfirmasi SISKA` (
  `Data Kembali ke Homepage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Login SISKA`
--

CREATE TABLE `Login SISKA` (
  `User` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Submit` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Data Submit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Platform Pencetakan Surat`
--

CREATE TABLE `Platform Pencetakan Surat` (
  `Image Pencetakan Surat untuk User` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Profil Admin SISKA`
--

CREATE TABLE `Profil Admin SISKA` (
  `Image Admin Desa` blob NOT NULL,
  `Username Admin` varchar(50) NOT NULL,
  `Email Admin` varchar(50) NOT NULL,
  `Nomor Telepon Admin SISKA` int(50) NOT NULL,
  `Setting Akun Admin Desa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Profil Akun Aplikasi SISKA Mobile`
--

CREATE TABLE `Profil Akun Aplikasi SISKA Mobile` (
  `Image User Profil` blob NOT NULL,
  `Username Profil SISKA` varchar(50) NOT NULL,
  `Email Profil` varchar(50) NOT NULL,
  `Nomor Telepon User` int(50) NOT NULL,
  `Setting Akun Data` text NOT NULL,
  `Submit Tautan Akun` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Profil Akun SISKA Mobile yang sudah tertaut`
--

CREATE TABLE `Profil Akun SISKA Mobile yang sudah tertaut` (
  `Image User` blob NOT NULL,
  `Username SISKA` varchar(50) NOT NULL,
  `Email User yang sudah tertaut` varchar(50) NOT NULL,
  `Nomor Telepon Akun sudah tertaut` int(50) NOT NULL,
  `Tampilan Data Desa SISKA` varchar(100) NOT NULL,
  `Biodata Kependudukan` text NOT NULL,
  `Setting Akun Done` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `SignUp SISKA`
--

CREATE TABLE `SignUp SISKA` (
  `Nama Lengkap Data` varchar(50) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Submit Akun` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Surat Izin Usaha`
--

CREATE TABLE `Surat Izin Usaha` (
  `Nama Perusahaan atau tempat bekerja` varchar(1000) NOT NULL,
  `Nomor Induk Berusaha (NIB)` int(100) NOT NULL,
  `Alamat Perusahaan atau tempat bekerja` varchar(1000) NOT NULL,
  `Nama KBLI` varchar(10000) NOT NULL,
  `Kode KBLI` int(100) NOT NULL,
  `Alamat Lengkap Usaha` mediumtext NOT NULL,
  `Alamat Singkat Usaha` varchar(1000) NOT NULL,
  `Desa atau Kelurahan Usaha` varchar(1000) NOT NULL,
  `Kecamatan Usaha` varchar(1000) NOT NULL,
  `Kabupaten/Kota Usaha` varchar(1000) NOT NULL,
  `Provinsi Usaha` varchar(100) NOT NULL,
  `Pernyataan Waktu Keluaran Surat` varchar(1000) NOT NULL,
  `Code QR` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Surat Keterangan Berpergian`
--

CREATE TABLE `Surat Keterangan Berpergian` (
  `Nomor SKIB` varchar(100) NOT NULL,
  `Nama Lengkap User mengajukan surat` varchar(1000) NOT NULL,
  `Jenis Kelamin User yang mengajukan surat` varchar(100) NOT NULL,
  `Tempat dan Tanggal Lahir User yang mengajukan surat` varchar(1000) NOT NULL,
  `Status Perkawinan User yang mengajukan Surat` varchar(100) NOT NULL,
  `Kewarganegaraan atau Warga Negara` varchar(100) NOT NULL,
  `Agama` varchar(100) NOT NULL,
  `Pekerjaan User yang mengajukan Surat` varchar(1000) NOT NULL,
  `Alamat Lengkap User yang mengajukan surat` varchar(10000) NOT NULL,
  `Keterangan dan Penjelasan Berpergian` mediumtext NOT NULL,
  `Waktu Keluarnya Surat Berpergian` varchar(1000) NOT NULL,
  `Pernyataan Asal Kepala Desa` varchar(1000) NOT NULL,
  `Tanda Tangan Kepala Desa setempat` text NOT NULL,
  `Nama Lengkap Kepala Desa` varchar(1000) NOT NULL,
  `NIP Kepala Desa` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Surat Keterangan Tidak Mampu`
--

CREATE TABLE `Surat Keterangan Tidak Mampu` (
  `Nama User pada Surat` varchar(100) NOT NULL,
  `Tempat/Tanggal Lahir user yang mengajukan surat` varchar(1000) NOT NULL,
  `Jenis Kelamin User` varchar(100) NOT NULL,
  `Pekerjaan user atau orang yang mengajukan surat` varchar(1000) NOT NULL,
  `Agama User atau orang yang mengajukan surat` varchar(100) NOT NULL,
  `User atau orang yang mengajukan surat` varchar(1000) NOT NULL,
  `Status Perkawinan User atau orang yang mengajukan surat` varchar(1000) NOT NULL,
  `Alamat User atau orang yang mengajukan surat` longtext NOT NULL,
  `Nama Ayah atau Bapak dari user` varchar(10000) NOT NULL,
  `Umur Ayah dalam surat keterangan ini` varchar(100) NOT NULL,
  `Pekerjaan ayah atau bapak user` varchar(100) NOT NULL,
  `Alamat lengkap ayah atau bapak` mediumtext NOT NULL,
  `Nama Ibu dalam surat` varchar(1000) NOT NULL,
  `Umur Ibu dalam Surat Keterangan Tidak Mampu ini` int(100) NOT NULL,
  `Alamat lengkap ibu dalam surat` longtext NOT NULL,
  `Waktu Keluarnya Surat` varchar(1000) NOT NULL,
  `Keterangan Asal Daerah Kepala Desa` varchar(100) NOT NULL,
  `Tanda Tangan Kepala Desa setempat` text NOT NULL,
  `Nama Kepala Desa pada bawah tanda tangan` varchar(1000) NOT NULL,
  `Keterangan Asal Daerah Camat` varchar(1000) NOT NULL,
  `Tanda Tangan Camat daerah` text NOT NULL,
  `Nama Camat yang tertera dibawah tanda tangan camat` varchar(1000) NOT NULL,
  `NIP Camat` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Tampilan Layanan SISKA Mobile`
--

CREATE TABLE `Tampilan Layanan SISKA Mobile` (
  `Layanan Surat` text NOT NULL,
  `Kontak Penting User` varchar(1000) NOT NULL,
  `Data Kependudukan` longtext NOT NULL,
  `Administrasi User SISKA` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Transformasi Kerja Desa Digital dan Tautan Akun ke Desa`
--

CREATE TABLE `Transformasi Kerja Desa Digital dan Tautan Akun ke Desa` (
  `Data Penautan Akun ke Layanan SISKA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(64) NOT NULL,
  `kata_sandi` varchar(128) NOT NULL,
  `alamat_email` varchar(64) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `level` enum('warga','admin','','') NOT NULL DEFAULT 'warga',
  `tgl_daftar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama_lengkap`, `kata_sandi`, `alamat_email`, `no_telepon`, `level`, `tgl_daftar`) VALUES
(1, 'Muhammad Raihan Khalid', '$2y$10$QYHYfIEVDNtv21agtQ9XOOC0Nht6iHqem/pody82NBcMkdHxnHR.K', 'raihnkhalid@gmail.com', '081397246510', 'warga', NULL),
(2, 'Khalid', '$2y$10$7p3tv8oJdho46XXAg4tu6uC6s22sG/SPD4BH9T8TPgIqELc3whF0i', 'raihn@gmail.com', '391298383', 'warga', NULL),
(3, 'Khalid111', '$2y$10$aL5BZQzHt/197C3tgReqiOueyXwUnBVWonakNpJzL.JSys75wSQy.', 'raihn@gmail.comm', '3912983838', 'warga', '2021-12-23'),
(4, 'Khalid111', '$2y$10$3KN1gv.steBG7xnCiD6gzu5vN2uQbZSFNL84zL/wX1dbPnF9Kgkn6', 'raihn@gmail.commm', '39129838381', 'warga', '2021-12-23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `Akta Kelahiran`
--
ALTER TABLE `Akta Kelahiran`
  ADD PRIMARY KEY (`nomor_aktakelahiran`),
  ADD UNIQUE KEY `STBLD` (`STBLD`),
  ADD UNIQUE KEY `NIP Kepala Dinas Kependudukan dan Pencatatan Sipil` (`NIP Kepala Dinas Kependudukan dan Pencatatan Sipil`);

--
-- Indeks untuk tabel `Domisili Penduduk`
--
ALTER TABLE `Domisili Penduduk`
  ADD PRIMARY KEY (`NIK domisili`),
  ADD UNIQUE KEY `NIP Kepala Desa` (`NIP Kepala Desa`);

--
-- Indeks untuk tabel `Form Tautan serta Layanan SISKA Mobile ke Desa`
--
ALTER TABLE `Form Tautan serta Layanan SISKA Mobile ke Desa`
  ADD PRIMARY KEY (`NIK User`);

--
-- Indeks untuk tabel `Kartu Keluarga`
--
ALTER TABLE `Kartu Keluarga`
  ADD PRIMARY KEY (`NIP Kepala Dinas Kependudukan dan Catatan Sipil Kota`);

--
-- Indeks untuk tabel `Layanan Surat SISKA`
--
ALTER TABLE `Layanan Surat SISKA`
  ADD PRIMARY KEY (`Domisili Penduduk SISKA Mobile`);

--
-- Indeks untuk tabel `Profil Admin SISKA`
--
ALTER TABLE `Profil Admin SISKA`
  ADD PRIMARY KEY (`Email Admin`);

--
-- Indeks untuk tabel `Profil Akun SISKA Mobile yang sudah tertaut`
--
ALTER TABLE `Profil Akun SISKA Mobile yang sudah tertaut`
  ADD PRIMARY KEY (`Email User yang sudah tertaut`);

--
-- Indeks untuk tabel `Surat Izin Usaha`
--
ALTER TABLE `Surat Izin Usaha`
  ADD PRIMARY KEY (`Nomor Induk Berusaha (NIB)`);

--
-- Indeks untuk tabel `Surat Keterangan Berpergian`
--
ALTER TABLE `Surat Keterangan Berpergian`
  ADD PRIMARY KEY (`NIP Kepala Desa`,`Nomor SKIB`);

--
-- Indeks untuk tabel `Surat Keterangan Tidak Mampu`
--
ALTER TABLE `Surat Keterangan Tidak Mampu`
  ADD PRIMARY KEY (`NIP Camat`);

--
-- Indeks untuk tabel `Tampilan Layanan SISKA Mobile`
--
ALTER TABLE `Tampilan Layanan SISKA Mobile`
  ADD PRIMARY KEY (`Kontak Penting User`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
