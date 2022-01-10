-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 10 Jan 2022 pada 14.22
-- Versi server: 10.2.41-MariaDB-cll-lve
-- Versi PHP: 7.4.27

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
-- Struktur dari tabel `aktakelahiran_siska`
--

CREATE TABLE `aktakelahiran_siska` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_negara` varchar(10) NOT NULL,
  `nomor_aktakelahiran` varchar(50) NOT NULL,
  `stbld` varchar(50) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` int(2) NOT NULL,
  `tahun_lahir` int(4) NOT NULL,
  `nama_lengkap` varchar(64) NOT NULL,
  `keterangan_anakke` varchar(20) NOT NULL,
  `ketetapantempat_dibuataktakelahiran` varchar(60) NOT NULL,
  `tanggalkeluar_aktakelahiran` varchar(25) NOT NULL,
  `tahunkeluar_aktakelahiran` varchar(25) NOT NULL,
  `keterangankepaladinaskependudukan_danpencatatansipil` varchar(85) NOT NULL,
  `tandatangan_KBKdanCSDKB` text NOT NULL,
  `namakepaladinaskependudukan_danpencatatansipil` varchar(64) NOT NULL,
  `nipkepaladinaskependudukan_danpencatatansipil` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataagamastatistikkependudukakhusus_siska`
--

CREATE TABLE `dataagamastatistikkependudukakhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesaapadadatagama` varchar(65) NOT NULL,
  `jenis_kelompokagama` varchar(20) NOT NULL,
  `jumlah_masingmasingjeniskelompokagama` varchar(35) NOT NULL,
  `jumlah_lakilakimasingmasingkelompokagama` varchar(30) NOT NULL,
  `jumlah_perempuanmasingmasingkelompokagama` varchar(30) NOT NULL,
  `jumlah_dataagama` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisidalamdataagama` varchar(50) NOT NULL,
  `totalkeseluruhan_dataagama` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataakseptorkbstatistikkhusus_siska`
--

CREATE TABLE `dataakseptorkbstatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesapadadataakseptorkb` varchar(65) NOT NULL,
  `jenis_kelompokpadadataakseptorkb` varchar(40) NOT NULL,
  `jumlah_masingmasingjeniskelompokakseptorkb` varchar(60) NOT NULL,
  `jumlah_lakilakipadajeniskelompokakseptorkb` varchar(70) NOT NULL,
  `jumlah_perempuanpadajeniskelompokakseptorkb` varchar(70) NOT NULL,
  `jumlah_dataakseptorkb` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisipadadataakseptorkb` varchar(50) NOT NULL,
  `totakeseluruhan_dataakseptorkb` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataaktakelahiranstatistikkhusus_siska`
--

CREATE TABLE `dataaktakelahiranstatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesapadadataaktakelahiran` varchar(65) NOT NULL,
  `jenis_kelompokpadadataaktakelahiran` varchar(50) NOT NULL,
  `jumlah_masingmasingjeniskelompokaktakelahiran` varchar(60) NOT NULL,
  `jumlah_lakilakipadajeniskelompokaktakelahiran` varchar(70) NOT NULL,
  `jumlah_perempuanpadajeniskelompokaktakelahiran` varchar(70) NOT NULL,
  `jumlah_dataaktakelahiran` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisipadaaktakelahiran` varchar(50) NOT NULL,
  `totakeseluruhan_dataaktakelahiran` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datacalonpemilihuntukpemilihankhusus_siska`
--

CREATE TABLE `datacalonpemilihuntukpemilihankhusus_siska` (
  `id` int(11) NOT NULL,
  `jeniskelamin_penduduk` varchar(10) NOT NULL,
  `pemilihan_dusunataudesa` varchar(75) NOT NULL,
  `tanggal_pemilihan` varchar(50) NOT NULL,
  `layanan_pencetakanpengunduhandanpencarianspesifik` point NOT NULL,
  `nik_penduduk` int(16) NOT NULL,
  `nama_penduduk` varchar(64) NOT NULL,
  `nomor_kartukeluargapenduduk` int(16) NOT NULL,
  `alamat_penduduk` varchar(200) NOT NULL,
  `dusun_ataudesa` varchar(65) NOT NULL,
  `rw` int(3) NOT NULL,
  `rt` int(3) NOT NULL,
  `pendidikandalam_kartukeluarga` varchar(75) NOT NULL,
  `umuryangdiisikan_dalampemilihan` int(3) NOT NULL,
  `pekerjaan_penduduk` varchar(100) NOT NULL,
  `statuskawin_penduduk` varchar(30) NOT NULL,
  `tampilandatapenduduk_yangsudahterdaftardalampemilihan` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datagolongandarahstatistikkhusus_siska`
--

CREATE TABLE `datagolongandarahstatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesapadadatagolongandarah` varchar(65) NOT NULL,
  `jenis_kelompokpadadatagolongandarah` varchar(20) NOT NULL,
  `jumlah_masingmasingjeniskelompokgolongandarah` varchar(60) NOT NULL,
  `jumlah_lakilakipadajeniskelompokgolongandarah` varchar(70) NOT NULL,
  `jumlah_perempuanpadajeniskelompokgolongandarah` varchar(70) NOT NULL,
  `jumlah_datagolongandarah` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisipadadatagolongandarah` varchar(50) NOT NULL,
  `totakeseluruhan_datagolongandarah` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datahubungandalamkartukeluargastatistikkhusus_siska`
--

CREATE TABLE `datahubungandalamkartukeluargastatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesapadadatahubungandalamkk` varchar(65) NOT NULL,
  `jenis_kelompokhubungandalamkk` varchar(60) NOT NULL,
  `jumlah_masingmasingjeniskelompokhubungandalamkk` varchar(45) NOT NULL,
  `jumlah_lakilakimasingmasingdalamkelompokhubungandalamkk` varchar(30) NOT NULL,
  `jumlah_perempuanmasingmasingdalamkelompokhubungandalamkk` varchar(30) NOT NULL,
  `jumlah_datahubungandalamkk` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisidalamdatahubungandalamkk` varchar(50) NOT NULL,
  `totalkeseluruhan_datahubungandalamkk` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datajenisasuransistatistikkhusus_siska`
--

CREATE TABLE `datajenisasuransistatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesapadadatajenisasuransi` varchar(65) NOT NULL,
  `jenis_kelompokpadadatajenisasuransi` varchar(80) NOT NULL,
  `jumlah_masingmasingjeniskelompokjenisasuransi` varchar(60) NOT NULL,
  `jumlah_lakilakipadajeniskelompokjenisasuransi` varchar(70) NOT NULL,
  `jumlah_perempuanpadajeniskelompokjenisasuransi` varchar(70) NOT NULL,
  `jumlah_datajenisasuransi` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisipadadatajenisasuransi` varchar(50) NOT NULL,
  `totakeseluruhan_datajenisasuransi` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datajeniskelaminstatistikkhusus_siska`
--

CREATE TABLE `datajeniskelaminstatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesapadadatajeniskelamin` varchar(65) NOT NULL,
  `jenis_kelompokjeniskelamin` varchar(55) NOT NULL,
  `jumlah_masingmasingjeniskelompokjeniskelamin` varchar(45) NOT NULL,
  `jumlah_lakilakimasingmasingkelompokjeniskelamin` varchar(30) NOT NULL,
  `jumlah_perempuanmasingmasingkelompokjeniskelamin` varchar(30) NOT NULL,
  `jumlah_datajeniskelamin` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisidalamdatajeniskelamin` varchar(50) NOT NULL,
  `totalkeseluruhan_datajeniskelamin` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datakeluargakhususkependudukan_siska`
--

CREATE TABLE `datakeluargakhususkependudukan_siska` (
  `id` int(11) NOT NULL,
  `status_kartukeluarga` varchar(50) NOT NULL,
  `jeniskelamin_userataupenduduk` varchar(20) NOT NULL,
  `pemilihan_dusunataudesa` varchar(150) NOT NULL,
  `pilihanlayanan_yangdisediakanaksi` point NOT NULL,
  `image_pendudukatauuser` blob NOT NULL,
  `nomorkk_penduduk` int(16) NOT NULL,
  `nama_kepalakeluarga` varchar(64) NOT NULL,
  `nik_penduduk` int(16) NOT NULL,
  `jumlah_anggotakeluarga` int(2) NOT NULL,
  `jeniskelamin_penduduk` varchar(10) NOT NULL,
  `alamat_penduduk` varchar(200) NOT NULL,
  `dusunataudesa_penduduk` varchar(50) NOT NULL,
  `rt` int(3) NOT NULL,
  `rw` int(3) NOT NULL,
  `tanggal_terdaftar` varchar(20) NOT NULL,
  `tanggal_cetakkk` varchar(20) NOT NULL,
  `penampilantotaldata_pendudukyangsudahterdaftar` point NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datakepemilikanktpstatistikkhusus_siska`
--

CREATE TABLE `datakepemilikanktpstatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesapadadatakepemilikanktp` varchar(65) NOT NULL,
  `jenis_kelompokpadadatakepemilikanktp` varchar(50) NOT NULL,
  `jumlah_masingmasingjeniskelompokkepemilikanktp` varchar(60) NOT NULL,
  `jumlah_lakilakipadajeniskelompokkepemilikanktp` varchar(70) NOT NULL,
  `jumlah_perempuanpadajeniskelompokkepemilikanktp` varchar(70) NOT NULL,
  `jumlah_datakepemilikanktp` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisipadadatakepemilikanktp` varchar(50) NOT NULL,
  `totakeseluruhan_datakepemilikanktp` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datakependudukan_siska`
--

CREATE TABLE `datakependudukan_siska` (
  `id` int(11) NOT NULL,
  `data_penduduk` longtext NOT NULL,
  `data_keluarga` longtext NOT NULL,
  `datapengelompokan_keluarga` longtext NOT NULL,
  `data_pengelompokankelompokberdasarkanpotensidesa` longtext NOT NULL,
  `data_suplemendesa` longtext NOT NULL,
  `statistik_kependudukan` longtext NOT NULL,
  `laporan_kependudukanbulananataupertahun` longtext NOT NULL,
  `datapilahkependudukan_berdasarkanusiasertafaktorkerentanan` longtext NOT NULL,
  `datacalonpemilih_kepaladesauntukpemilihansecaraberkala` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datalayananpencetakandanpengunduhankhususdalamstatistik_siska`
--

CREATE TABLE `datalayananpencetakandanpengunduhankhususdalamstatistik_siska` (
  `id` int(11) NOT NULL,
  `laporan_ditandanganioleh` varchar(75) NOT NULL,
  `nomor_laporan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapekerjaandalamstatistikkhusus_siska`
--

CREATE TABLE `datapekerjaandalamstatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesadalamdatapekerjaanstatistik` varchar(65) NOT NULL,
  `jeniskelompok_datapekerjaandalamstatistik` varchar(100) NOT NULL,
  `jumlah_masingmasingjeniskelompokpekerjaan` varchar(45) NOT NULL,
  `jumlah_lakilakimasingmasingkelompokpendidikandalamstatistik` varchar(10) NOT NULL,
  `jumlah_perempuanmasingmasingkelompokpekerjaandalamstatistik` varchar(10) NOT NULL,
  `jumlah_datapekerjaan` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisidalamdatapekerjaan` varchar(50) NOT NULL,
  `totalkeseluruhan_datapekerjaandalamstatistik` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapendidikandalamkartukeluargastatistikkhusus_siska`
--

CREATE TABLE `datapendidikandalamkartukeluargastatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesadalampendidikankartukeluarga` varchar(65) NOT NULL,
  `jeniskelompok_datapendidikandalamkk` varchar(100) NOT NULL,
  `jumlah_masingmasingjeniskelompokpendidikandalamkk` varchar(10) NOT NULL,
  `jumlah_lakilakimasingmasingkelompokpendidikandalamkk` varchar(10) NOT NULL,
  `jumlah_perempuanmasingmasingkelompokpendidikandalamkk` varchar(10) NOT NULL,
  `jumlah_datapendidikandalamkk` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisidalamdatapendidikandalamkk` varchar(50) NOT NULL,
  `totalkeseluruhan_data` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapendidikanyangsedangditempuhdalamstatistikkhusus_siska`
--

CREATE TABLE `datapendidikanyangsedangditempuhdalamstatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesadalampendidikanyangsedangditempuh` varchar(65) NOT NULL,
  `jeniskelompok_datapendidikanyangsedangditempuh` varchar(75) NOT NULL,
  `jumlah_masingmasingjeniskelompokpendidikanyangsedangditempuh` varchar(30) NOT NULL,
  `jumlah_lakilakimasingmasingkelompokpendidikanyangsedangditempuh` varchar(45) NOT NULL,
  `jumlah_perempuanmasingmasingkelompokpendidikanyangsedangditempuh` varchar(45) NOT NULL,
  `jumlah_datapendidikanyangsedangditempuh` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisidalampendidikanyangsedangditempuh` varchar(50) NOT NULL,
  `totalkeseluruhan_datapendidikanyangsedangditempuh` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapendudukkhususkependudukan_siska`
--

CREATE TABLE `datapendudukkhususkependudukan_siska` (
  `pilihdesa_ataudusun` varchar(25) NOT NULL,
  `id` int(11) NOT NULL,
  `pengalihan_tampilandenganberbagaidaftar` longtext NOT NULL,
  `fotoatauimage_penduduk` blob NOT NULL,
  `nik_pendudukdesa` int(16) NOT NULL,
  `namalengkap_penduduk` varchar(64) NOT NULL,
  `nomor_kartukeluargapenduduk` int(17) NOT NULL,
  `nama_ayahpenduduk` varchar(64) NOT NULL,
  `nama_ibupenduduk` varchar(64) NOT NULL,
  `nomorurut_rumahtangga` varchar(10) NOT NULL,
  `alamatlengkap_penduduk` varchar(200) NOT NULL,
  `dusun_ataudesa` varchar(30) NOT NULL,
  `rt` int(3) NOT NULL,
  `rw` int(3) NOT NULL,
  `status_penduduk` varchar(15) NOT NULL,
  `statusdasar_penduduk` varchar(15) NOT NULL,
  `jeniskelamin_penduduk` varchar(15) NOT NULL,
  `pendidikan_penduduk` varchar(50) NOT NULL,
  `umur_penduduk` int(3) NOT NULL,
  `pekerjaan_penduduk` varchar(60) NOT NULL,
  `statuskawin_penduduk` varchar(30) NOT NULL,
  `tanggallahir_penduduk` varchar(50) NOT NULL,
  `tanggalpendaftaran_pendudukkedalamdataserver` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapengelolaankelompokkhususpenduduk_siska`
--

CREATE TABLE `datapengelolaankelompokkhususpenduduk_siska` (
  `id` int(11) NOT NULL,
  `kategori_kelompokpengelolaanpenduduk` varchar(100) NOT NULL,
  `layanan_aksipadapengelolaan` point NOT NULL,
  `kode_kelompok` int(50) NOT NULL,
  `nama_kelompok` varchar(75) NOT NULL,
  `pernyataan_ketuakelompok` varchar(50) NOT NULL,
  `kategori_kelompok` varchar(75) NOT NULL,
  `jumlah_anggotakelompok` int(2) NOT NULL,
  `tampilantotaldatapenduduk_yangtertampungdansudahterdaftar` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapengelompokkanrumahtanggakhusus_siska`
--

CREATE TABLE `datapengelompokkanrumahtanggakhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesa` varchar(75) NOT NULL,
  `layanan_aksi` point NOT NULL,
  `image_ataufotopenduduk` blob NOT NULL,
  `nomor_rumahtangga` varchar(30) NOT NULL,
  `nama_kepalakeluarga` varchar(64) NOT NULL,
  `nik_penduduk` int(16) NOT NULL,
  `jumlah_anggotakeluarga` int(2) NOT NULL,
  `alamat_penduduk` varchar(200) NOT NULL,
  `dusun_ataudesa` varchar(75) NOT NULL,
  `rt` int(3) NOT NULL,
  `rw` int(3) NOT NULL,
  `tanggalterdaftarnya_pendudukpadadatarumahtangga` varchar(50) NOT NULL,
  `tampilandatapenduduk_yangsudahterdaftar` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapenyakitmenahunstatistikkhusus_siska`
--

CREATE TABLE `datapenyakitmenahunstatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesapadadatapenyakitmenahun` varchar(65) NOT NULL,
  `jenis_kelompokpadadatapenyakitmenahun` varchar(45) NOT NULL,
  `jumlah_masingmasingjeniskelompokpenyakitmenahun` varchar(60) NOT NULL,
  `jumlah_lakilakipadajeniskelompokpenyakitmenahun` varchar(70) NOT NULL,
  `jumlah_perempuanpadajeniskelompokpenyakitmenahun` varchar(70) NOT NULL,
  `jumlah_datapenyakitmenahun` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisipadadatapenyakitmenahun` varchar(50) NOT NULL,
  `totakeseluruhan_datapenyakitmenahun` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapenyandangcacatstatistikkhusus_siska`
--

CREATE TABLE `datapenyandangcacatstatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesapadadatapenyandangcacat` varchar(65) NOT NULL,
  `jenis_kelompokpadadatapenyandangcacat` varchar(50) NOT NULL,
  `jumlah_masingmasingjeniskelompokpenyandangcacat` varchar(60) NOT NULL,
  `jumlah_lakilakipadajeniskelompokpenyandangcacat` varchar(70) NOT NULL,
  `jumlah_perempuanpadajeniskelompokpenyandangcacat` varchar(70) NOT NULL,
  `jumlah_datapenyandangcacat` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisipadapenyandangcacat` varchar(50) NOT NULL,
  `totakeseluruhan_datapenyandangcacat` int(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datarentangumurdalamstatistikkhusus_siska`
--

CREATE TABLE `datarentangumurdalamstatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `layananaksiumur_yangdiubahataudihapusdalamdata` point NOT NULL,
  `rentang_umur` varchar(20) NOT NULL,
  `tambah_rentangumur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `hapus_rentangumur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatistikkeluargakelasketahananpangankhusus_siska`
--

CREATE TABLE `datastatistikkeluargakelasketahananpangankhusus_siska` (
  `id` int(11) NOT NULL,
  `jeniskelompok_berdasarkankelasketahananpangan` varchar(75) NOT NULL,
  `jumlah_masingmasingjeniskelompokpadakelasketahananpangan` varchar(65) NOT NULL,
  `jumlah_lakilakimasingmasingdalamjeniskelompokketahananpangan` varchar(70) NOT NULL,
  `jumlah_perempuanmasingmasingdalamjeniskelompokketahananpangan` varchar(70) NOT NULL,
  `sifatdata_statistikkeluargakelasketahananpangan` varchar(55) NOT NULL,
  `jumlah_datapadajeniskelompoklakilakidanperempuan` varchar(75) NOT NULL,
  `jumlah_datayangbelumterisipadadatakeluargakelasketahananpangan` varchar(75) NOT NULL,
  `total_keseluruhandatapadakelasketahananpangan` varchar(95) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatistikkeluargakelaslingkunganhidupkhusus_siska`
--

CREATE TABLE `datastatistikkeluargakelaslingkunganhidupkhusus_siska` (
  `id` int(11) NOT NULL,
  `jeniskelompok_berdasarkankelaslingkunganhidup` varchar(75) NOT NULL,
  `jumlah_masingmasingjeniskelompokpadakelaslingkunganhidup` varchar(65) NOT NULL,
  `jumlah_lakilakimasingmasingdalamjeniskelompoklingkunganhidup` varchar(70) NOT NULL,
  `jumlah_perempuanmasingmasingdalamjeniskelompoklingkunganhidup` varchar(70) NOT NULL,
  `sifatdata_statistikkeluargakelaslingkunganhidup` varchar(90) NOT NULL,
  `jumlah_datapadajeniskelompoklakilakidanperempuan` varchar(55) NOT NULL,
  `jumlah_datayangbelumterisipadadatakeluargalingkunganhidup` varchar(75) NOT NULL,
  `total_keseluruhandatapadakelaslingkunganhidup` varchar(95) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatistikkeluargakelaspenataanruangkhusus_siska`
--

CREATE TABLE `datastatistikkeluargakelaspenataanruangkhusus_siska` (
  `id` int(11) NOT NULL,
  `jeniskelompok_berdasarkankelaspenataanruang` varchar(75) NOT NULL,
  `jumlah_masingmasingjeniskelompokpadakelaspenataanruang` varchar(65) NOT NULL,
  `jumlah_lakilakimasingmasingdalamjeniskelompokpenataanruang` varchar(50) NOT NULL,
  `jumlah_perempuanmasingmasingdalamjeniskelompokpenataanruang` varchar(50) NOT NULL,
  `sifatdata_statistikkeluargakelaspenataanruang` varchar(70) NOT NULL,
  `jumlah_datapadajeniskelompoklakilakidanperempuan` varchar(55) NOT NULL,
  `jumlah_datayangbelumterisipadadatakeluargapenataanruang` varchar(75) NOT NULL,
  `total_keseluruhandatapadakelaspenataanruang` varchar(95) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatistikkeluargakelassosialkhusus_siska`
--

CREATE TABLE `datastatistikkeluargakelassosialkhusus_siska` (
  `id` int(11) NOT NULL,
  `jeniskelompok_berdasarkankelassosial` varchar(75) NOT NULL,
  `jumlah_masingmasingjeniskelompokpadakelassosial` varchar(50) NOT NULL,
  `jumlah_lakilakimasingmasingdalamjeniskelompokkeluargasosial` varchar(70) NOT NULL,
  `jumlah_perempuanmasingmasingdalamjeniskelompokkeluargasosial` varchar(70) NOT NULL,
  `jumlah_keluargakelassosial` varchar(55) NOT NULL,
  `jumlah_datayangbelumterisipadastatistikkeluargakelassosial` varchar(55) NOT NULL,
  `total_keseluruhandatastatistikkeluargakelassosial` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatistiklaporankelompokrentanmumurkhusus_siska`
--

CREATE TABLE `datastatistiklaporankelompokrentanmumurkhusus_siska` (
  `id` int(11) NOT NULL,
  `pengaturan_kembalikehalamanhome` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `proses_pencetakandokumen` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `proses_pengunduhandokumen` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `nama_desaataukelurahandalamlaporanrentanumur` varchar(50) NOT NULL,
  `nama_kecamatandalamlaporanrentanumur` varchar(40) NOT NULL,
  `laporan_bulan` int(2) NOT NULL,
  `pilihan_dusunyangterdaftardalamlaporanrentanumur` point NOT NULL,
  `data_dusunyangterdaftardalamtabel` varchar(60) NOT NULL,
  `rt` int(3) NOT NULL,
  `rw` int(3) NOT NULL,
  `data_kartukeluargapadajeniskelamin` varchar(2) NOT NULL,
  `kondisi_dankelompokumur` varchar(256) NOT NULL,
  `data_umurdibawah1tahun` int(5) NOT NULL,
  `data_umur1sampai5tahun` int(5) NOT NULL,
  `data_umur6sampai12tahun` int(5) NOT NULL,
  `data_umur13sampai15tahun` int(5) NOT NULL,
  `data_umur16sampai18tahun` int(5) NOT NULL,
  `data_umurdiatas60tahun` int(5) NOT NULL,
  `keterangan_laporankelompokcacat` varchar(256) NOT NULL,
  `data_cacatfisik` int(5) NOT NULL,
  `data_cacatnetraataubuta` int(5) NOT NULL,
  `data_cacatrunguatauwicara` int(5) NOT NULL,
  `data_cacatmentalataujiwa` int(5) NOT NULL,
  `data_cacatfisikdanmental` int(5) NOT NULL,
  `data_cacatlainnya` int(5) NOT NULL,
  `data_tidakcacat` int(5) NOT NULL,
  `keterangan_sakitmenahunpadalakilakidanperempuan` varchar(2) NOT NULL,
  `keterangan_datahamil` int(5) NOT NULL,
  `total_keseluruhandatapadalaporankelompokrentanumur` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatistiklaporankependudukanbulanankhusus_siska`
--

CREATE TABLE `datastatistiklaporankependudukanbulanankhusus_siska` (
  `id` int(11) NOT NULL,
  `tampilan_kembalikehome` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `proses_cetakdokumen` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `proses_pengunduhandokumen` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `namadesa_ataukelurahan` varchar(75) NOT NULL,
  `namakecamatan_padalaporankependudukanbulanan` varchar(50) NOT NULL,
  `tahun_padalaporankependudukanbulanan` int(4) NOT NULL,
  `bulan_padalaporankependudukanbulanan` varchar(20) NOT NULL,
  `perincian_laporankependudukanbulanan` varchar(250) NOT NULL,
  `ketentuan_pendudukpadastatistikkependudukan` varchar(100) NOT NULL,
  `jumlahwni_lakilaki` int(5) NOT NULL,
  `jumlahwni_perempuan` int(5) NOT NULL,
  `jumlahwna_lakilaki` int(5) NOT NULL,
  `jumlahwna_perempuan` int(5) NOT NULL,
  `pertambahan_jumlahlakilakpadawnasertawni` int(5) NOT NULL,
  `pertambahan_jumlahperempuanpadawnasertawni` int(5) NOT NULL,
  `pertambahan_seluruhjumlahwnadanwnilakilakisertaperempuan` int(5) NOT NULL,
  `ketentuan_keluargadalamkk` varchar(75) NOT NULL,
  `jumlah_lakilakipadakeluarga` int(5) NOT NULL,
  `jumlah_perempuanpadakeluarga` int(5) NOT NULL,
  `pertambahan_jumlahlakilakidanperempuanpadakeluarga` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatistikpenerimabantuankeluargakhusus_siska`
--

CREATE TABLE `datastatistikpenerimabantuankeluargakhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesapadadatapenerimabantuankeluarga` varchar(75) NOT NULL,
  `jeniskelompok_padastatistikpenerimabantuankeluarga` varchar(65) NOT NULL,
  `jumlah_lakilakimasingmasingdalamjeniskelompokbantuankeluarga` varchar(70) NOT NULL,
  `jumlah_perempuanmasingmasingdalamjeniskelompokbantuankeluarga` varchar(70) NOT NULL,
  `penerima_datastatistikpenerimabantuankeluarga` varchar(50) NOT NULL,
  `golongan_bukanpenerimabantuankeluarga` varchar(50) NOT NULL,
  `totalkeseluruhandata_statistikpenerimabantuankeluarga` varchar(95) NOT NULL,
  `penampilan_layananentridatayangsudahterdaftar` int(5) NOT NULL,
  `pencarian_riwayatdaftarpenerimabantuankeluarga` varchar(45) NOT NULL,
  `progam_penerimabantuankeluarga` varchar(75) NOT NULL,
  `namapeserta_pendaftaranpenerimabantuankeluarga` varchar(64) NOT NULL,
  `alamat_pesertapendaftaranpenerimabantuankeluarga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatistikpenerimabantuanpendudukkhusus_siska`
--

CREATE TABLE `datastatistikpenerimabantuanpendudukkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesapadadatapenerimabantuanpenduduk` varchar(75) NOT NULL,
  `jumlah_masingmasingjeniskelompokpadapenerimabantuanpenduduk` varchar(65) NOT NULL,
  `jumlah_lakilakimasingmasingdalamkelompokpenerimabantuanpenduduk` varchar(70) NOT NULL,
  `jumlah_perempuanmasingmasingdalamjeniskelompokpenerimabk` varchar(70) NOT NULL,
  `penerima_jeniskelompokjumlahmasingmasinglakilakisertaperempuan` varchar(75) NOT NULL,
  `golongan_bukanpenerimabantuanpenduduk` varchar(75) NOT NULL,
  `total_keseluruhandatastatistikpenerimabantuanpenduduk` varchar(95) NOT NULL,
  `penampilan_angkaentridatapenerimabantuankeluargayangterdaftar` int(7) NOT NULL,
  `pencarian_datapenerimabantuanpenduduk` varchar(50) NOT NULL,
  `program_penerimabantuanpenduduk` varchar(25) NOT NULL,
  `namapeserta_penerimabantuanpenduduk` varchar(64) NOT NULL,
  `alamat_pesertapenerimaanbantuanpenduduk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatistikpesertaprogrambedahrumahkhusus_siska`
--

CREATE TABLE `datastatistikpesertaprogrambedahrumahkhusus_siska` (
  `id` int(11) NOT NULL,
  `sasarankeluarga_padastatistikpesertaprogrambedahrumah` varchar(75) NOT NULL,
  `jumlah_masingmasingjeniskelompokpadapesertaprogrambedahrumah` varchar(65) NOT NULL,
  `jumlah_lakilakimasingmasingdalamjeniskelompokprogrambedahrumah` varchar(70) NOT NULL,
  `jumlah_perempuanmasingmasingdalamjeniskelompokprogrambedahrumah` varchar(70) NOT NULL,
  `jumlah_pesertapadasasarankeluargadanlakilakiatauperempuan` varchar(80) NOT NULL,
  `jumlah_bukanpesertaprogrambedahrumah` varchar(80) NOT NULL,
  `total_keseluruhandatastatistikpesertaprogramkph` varchar(95) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatistikpesertaprogramblsmkhusus_siska`
--

CREATE TABLE `datastatistikpesertaprogramblsmkhusus_siska` (
  `id` int(11) NOT NULL,
  `sasarankeluarga_padastatistikpesertaprogramblsm` varchar(75) NOT NULL,
  `jumlah_masingmasingjeniskelompokpadapesertaprogramblsm` varchar(65) NOT NULL,
  `jumlah_lakilakimasingmasingdalamjeniskelompokpesertaprogramblsm` varchar(70) NOT NULL,
  `jumlah_perempuanmasingmasingdalamjeniskelompokpesertaprogramblsm` varchar(70) NOT NULL,
  `jumlah_pesertapadasasarankeluargadanlakilakiatauperempuan` varchar(55) NOT NULL,
  `jumlah_bukanpesertaprogramblsm` varchar(55) NOT NULL,
  `total_keseluruhandatastatistikpesertaprogramblsm` varchar(95) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatistikpesertaprogrambpntkhusus_siska`
--

CREATE TABLE `datastatistikpesertaprogrambpntkhusus_siska` (
  `id` int(11) NOT NULL,
  `sasarankeluarga_padastatistikpesertaprogrambpnt` varchar(75) NOT NULL,
  `jumlah_masingmasingjeniskelompokpadastatistikpesertaprogrambpnt` varchar(65) NOT NULL,
  `jumlah_lakilakimasingmasingdalamjeniskelompokpesertaprogrambpnt` varchar(70) NOT NULL,
  `jumlah_perempuanmasingmasingdalamjeniskelompokpesertaprogrambpnt` varchar(70) NOT NULL,
  `data_jumlahpesertadalamsasaranpeserta` varchar(75) NOT NULL,
  `golongandata_bukanpesertapadajumlahpesertaprogrambpnt` varchar(75) NOT NULL,
  `total_keseluruhandatastatistikpesertaprogrambpnt` varchar(95) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatistikpesertaprogrampbiapbnkhusus_siska`
--

CREATE TABLE `datastatistikpesertaprogrampbiapbnkhusus_siska` (
  `id` int(11) NOT NULL,
  `sasaranpenduduk_pesertaprogrampbiapbn` varchar(75) NOT NULL,
  `jumlah_masingmasingjeniskelompokpesertaprogrampbiapbn` varchar(65) NOT NULL,
  `jumlah_lakilakimasingmasingdalamjeniskelompokpesertaprogrampbiap` varchar(70) NOT NULL,
  `jumlah_perempuanmasingmasingdalamjeniskelompokpesertapbiapbn` varchar(70) NOT NULL,
  `jumlah_pesertapadasasarankeluargadanlakilakiatauperempuan` varchar(80) NOT NULL,
  `jumlah_bukanpesertaprogrampbiapbn` varchar(80) NOT NULL,
  `total_keseluruhandatastatistikpesertaprogrampbiapbn` varchar(95) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatistikpesertaprogrampkhkhusus_siska`
--

CREATE TABLE `datastatistikpesertaprogrampkhkhusus_siska` (
  `id` int(11) NOT NULL,
  `sasarankeluarga_padastatistikpesertaprogrampkh` varchar(75) NOT NULL,
  `jumlah_masingmasingjeniskelompokpesertaprogrampkh` varchar(65) NOT NULL,
  `jumlah_lakilakimasingmasingdalamjeniskelompokpesertaprogrampkh` varchar(70) NOT NULL,
  `jumlah_perempuanmasingmasingdalamjeniskelompokpesertaprogramkph` varchar(70) NOT NULL,
  `jumlah_pesertapadasasarankeluargamasingmasinglakilakiperempuan` varchar(80) NOT NULL,
  `jumlah_bukanpesertaprogramkph` varchar(75) NOT NULL,
  `total_keseluruhandatastatistikpesertaprogramkph` varchar(95) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatuscovidatauomicronstatistikkhusus_siska`
--

CREATE TABLE `datastatuscovidatauomicronstatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesapadadatastatuscovidatauomicron` varchar(65) NOT NULL,
  `jenis_kelompokpadadatastatuscovidatauomicron` varchar(20) NOT NULL,
  `jumlah_masingmasingjeniskelompokstatuscovidatauomicron` varchar(60) NOT NULL,
  `jumlah_lakilakipadajeniskelompokstatuscovidatauomicron` varchar(70) NOT NULL,
  `jumlah_perempuanpadajeniskelompokstatuscovidatauomicron` varchar(70) NOT NULL,
  `jumlah_datastatuscovidatauomicron` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisipadastatusscovidatauomicron` varchar(50) NOT NULL,
  `totakeseluruhan_datastatuscovidatauomicron` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatuspendudukstatistikkhusus_siska`
--

CREATE TABLE `datastatuspendudukstatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_desaataudusunpadadatastatuspenduduk` varchar(65) NOT NULL,
  `jeniskelompok_statuspenduduk` varchar(50) NOT NULL,
  `jumlah_masingmasingjeniskelompokstatuskependudukan` varchar(65) NOT NULL,
  `jumlah_lakilakipadajeniskelompokstatuspenduduk` varchar(70) NOT NULL,
  `jumlah_perempuanpadajeniskelompokstatuspenduduk` varchar(70) NOT NULL,
  `jumlah_datastatuspenduduk` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisipadastatuspenduduk` varchar(50) NOT NULL,
  `totakeseluruhan_datastatuspenduduk` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datastatusperkawinanstatistikkhusus_siska`
--

CREATE TABLE `datastatusperkawinanstatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesastatusperkawinan` varchar(65) NOT NULL,
  `jeniskelompok_datastatusperkawinan` varchar(75) NOT NULL,
  `jumlah_masingmasingjeniskelompokstatusperkawinan` varchar(50) NOT NULL,
  `jumlah_lakilakimasingmasingkelompokstatusperkawinan` varchar(30) NOT NULL,
  `jumlah_perempuanmasingmasingkelompokstatusperkawinan` varchar(30) NOT NULL,
  `jumlah_datastatusperkawinanstatistik` varchar(60) NOT NULL,
  `jumlah_datayangbelumterisidalamdatastatusperkawinan` varchar(60) NOT NULL,
  `totalkeseluruhan_datastatusperkawinan` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datasuplemenkependudukankhusus_siska`
--

CREATE TABLE `datasuplemenkependudukankhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_sasaransuplemen` varchar(50) NOT NULL,
  `layanan_aksisuplemen` point NOT NULL,
  `nama_data` varchar(64) NOT NULL,
  `jumlah_yangterdata` int(5) NOT NULL,
  `sasaran_suplemen` varchar(100) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `tampilantotaldata_pendudukyangsudahterdaftar` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataumurataurentangdalamstatistikkependudukan_siska`
--

CREATE TABLE `dataumurataurentangdalamstatistikkependudukan_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesa` varchar(50) NOT NULL,
  `jeniskelompok_penduduk` varchar(50) NOT NULL,
  `jumlah_masingmasingjeniskelompokpenduduk` varchar(10) NOT NULL,
  `jumlah_lakilakimasingmasingkelompok` varchar(10) NOT NULL,
  `jumlah_perempuanmasingmasingkelompok` varchar(10) NOT NULL,
  `jumlah_data` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisi` varchar(50) NOT NULL,
  `totalkeseluruhan_data` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataumurkategoridalamstatistikkependudukan_siska`
--

CREATE TABLE `dataumurkategoridalamstatistikkependudukan_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesa` varchar(65) NOT NULL,
  `jenis_kelompokkategori` varchar(50) NOT NULL,
  `jumlahpendudukyangterdata_dalamjeniskelompok` varchar(10) NOT NULL,
  `jumlah_lakilakimasingmasingdalamkelompokkategori` varchar(10) NOT NULL,
  `jumlah_perempuanmasingmasingdalamkelompokkategori` varchar(10) NOT NULL,
  `jumlah_dataumurkategori` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisidalamumurkategori` varchar(50) NOT NULL,
  `totalkeseluruhan_dataumurkategori` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datawarganegarastatistikkhusus_siska`
--

CREATE TABLE `datawarganegarastatistikkhusus_siska` (
  `id` int(11) NOT NULL,
  `pemilihan_dusunataudesapadadatawarganegara` varchar(65) NOT NULL,
  `jenis_kelompokwarganegara` varchar(25) NOT NULL,
  `jumlah_masingmasingjeniskelompokwarganegara` varchar(45) NOT NULL,
  `jumlah_lakilakimasingmasingdalamkelompokwarganegara` varchar(30) NOT NULL,
  `jumlah_perempuanmasingmasingdalamkelompokwarganegara` varchar(30) NOT NULL,
  `jumlah_datawarganegara` varchar(50) NOT NULL,
  `jumlah_datayangbelumterisidalamdatawarganegara` varchar(50) NOT NULL,
  `totalkeseluruhan_datawarganegara` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `domisilipenduduk_siska`
--

CREATE TABLE `domisilipenduduk_siska` (
  `id` int(11) NOT NULL,
  `nama_desa` varchar(50) NOT NULL,
  `nama_kecamatan` varchar(40) NOT NULL,
  `nama_kabupaten` varchar(30) NOT NULL,
  `namayangakandiisi_dalamdomisili` varchar(64) NOT NULL,
  `nik_domisili` int(16) NOT NULL,
  `tempatdan_tanggallahirdomisili` varchar(35) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `kewarganegaraan` varchar(20) NOT NULL,
  `pekerjaan` varchar(55) NOT NULL,
  `alamat_domisili` varchar(200) NOT NULL,
  `tempat_domisili` varchar(50) NOT NULL,
  `desa_domisili` varchar(40) NOT NULL,
  `waktukeluar_surat` varchar(50) NOT NULL,
  `keteranganasaldaerah_kepaladesa` varchar(45) NOT NULL,
  `tandatangan_kepaladesa` text NOT NULL,
  `nama_kepaladesa` varchar(64) NOT NULL,
  `nip_kepaladesa` int(20) NOT NULL,
  `pemohon` varchar(64) NOT NULL,
  `tandatangan_pemohonatauuser` varchar(100) NOT NULL,
  `nama_pemohonatauuser` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `formtautansertalayanankedesa_siska`
--

CREATE TABLE `formtautansertalayanankedesa_siska` (
  `id` int(11) NOT NULL,
  `nik_user` int(16) NOT NULL,
  `fitur_pilihdesa` varchar(100) NOT NULL,
  `nomorkartukeluarga_user` int(11) NOT NULL,
  `uploadimage_ktpuser` blob NOT NULL,
  `uploadimage_selfiektpuser` blob NOT NULL,
  `submitform_tautandesa` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `homepage_siska`
--

CREATE TABLE `homepage_siska` (
  `id` int(11) NOT NULL,
  `menu_profil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kartukeluarga_siska`
--

CREATE TABLE `kartukeluarga_siska` (
  `id` int(11) NOT NULL,
  `nomor_kk` int(16) NOT NULL,
  `nama_kepalakeluarga` varchar(64) NOT NULL,
  `alamat_kk` varchar(200) NOT NULL,
  `rt_rw` int(4) NOT NULL,
  `desa_kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(55) NOT NULL,
  `kabupaten_kota` varchar(50) NOT NULL,
  `kode_pos` int(5) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `nomor_urutkeluarga` int(2) NOT NULL,
  `namalengkapmasingmasing_kepaladananggotakeluarga` longtext NOT NULL,
  `nik` int(17) NOT NULL,
  `jeniskelaminmasingmasing_kepaladananggotakeluarga` longtext NOT NULL,
  `tempatlahirmasingmasing_kepaladananggotakeluarga` longtext NOT NULL,
  `agamamasingmasing_kepaladananggotakeluarga` varchar(100) NOT NULL,
  `pendidikanmasingmasing_kepaladananggotakeluarga` varchar(250) NOT NULL,
  `jenispekerjaanmasingmasing_kepaladananggotakeluarga` varchar(250) NOT NULL,
  `nourutstatusdan_datalaindalamkk` int(2) NOT NULL,
  `statusperkawinan_keluarga` varchar(150) NOT NULL,
  `statushubungan_keluarga` varchar(250) NOT NULL,
  `kewarganegaraan` varchar(100) NOT NULL,
  `nomor_paspor` varchar(20) NOT NULL,
  `nomor_kitasataukitab` varchar(25) NOT NULL,
  `namaayahdari_kepaladananggotakeluarga` mediumtext NOT NULL,
  `namaibudari_kepaladananggotakeluarga` mediumtext NOT NULL,
  `keluaran_tanggal` int(10) NOT NULL,
  `lembaran` varchar(100) NOT NULL,
  `tandatangan_kepalakeluarga` text NOT NULL,
  `namakepalakeluarga_dibawahtandatangankepalakeluarga` varchar(100) NOT NULL,
  `keteranganasalkepaladinaskependudukan_danpencatatansipil` varchar(50) NOT NULL,
  `tandatangankepaladinaskependudukan_dancatatansipil` text NOT NULL,
  `qrcode_kkterbaru` blob NOT NULL,
  `namakepaladinas_kependudukandancatatansipil` varchar(64) NOT NULL,
  `nipkepaladinas_kependudukandancatatansipilkota` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontakpenting_siska`
--

CREATE TABLE `kontakpenting_siska` (
  `id` int(11) NOT NULL,
  `administrator_siska` longtext NOT NULL,
  `kepala_desadaerah` longtext NOT NULL,
  `whatsapp_centersiska` longtext NOT NULL,
  `pln_desa` longtext NOT NULL,
  `pdam_desa` longtext NOT NULL,
  `polres_desaataudaerah` longtext NOT NULL,
  `sosial_mediasiska` longtext NOT NULL,
  `ketua_rtdanrwdesa` longtext NOT NULL,
  `layanan_kesehatandaerah` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanansurat_siska`
--

CREATE TABLE `layanansurat_siska` (
  `id` int(11) NOT NULL,
  `akta_kelahiran` longtext NOT NULL,
  `domisilipenduduk_siskamobile` longtext NOT NULL,
  `surat_izinusaha` longtext NOT NULL,
  `kartu_keluarga` longtext NOT NULL,
  `suratketerangan_tidakmampu` longtext NOT NULL,
  `suratketerangan_berpergian` longtext NOT NULL,
  `suratpengantar_ktp` longtext NOT NULL,
  `suratketerangan_catatankepolisian` longtext NOT NULL,
  `surat_pindah` longtext NOT NULL,
  `surat_tempatusaha` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `layoutkonfirmasi_siska`
--

CREATE TABLE `layoutkonfirmasi_siska` (
  `id` int(11) NOT NULL,
  `datakembali_kehomepage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `platformpencetakansurat_siska`
--

CREATE TABLE `platformpencetakansurat_siska` (
  `id` int(11) NOT NULL,
  `imagepencetakansurat_untukuser` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profilakunyangsudahtertaut_siska`
--

CREATE TABLE `profilakunyangsudahtertaut_siska` (
  `id` int(11) NOT NULL,
  `image_user` blob NOT NULL,
  `username_siska` varchar(50) NOT NULL,
  `emailuser_yangsudahtertaut` varchar(50) NOT NULL,
  `nomorteleponakun_sudahtertaut` int(15) NOT NULL,
  `tampilandata_desasiska` varchar(256) NOT NULL,
  `biodata_kependudukan` text NOT NULL,
  `setting_akundone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistikkependudukankhusus_siska`
--

CREATE TABLE `statistikkependudukankhusus_siska` (
  `id` int(11) NOT NULL,
  `layanan_pencetakan` mediumtext NOT NULL,
  `layanan_pengunduhan` mediumtext NOT NULL,
  `grafik_datapenduduk` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `pie_datapenduduk` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `rentangumur_penduduk` longtext NOT NULL,
  `proses_pembersihanfilter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `statistik_penduduk` longtext NOT NULL,
  `statistik_keluarga` mediumtext NOT NULL,
  `statistik_programbantuan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratizintempatusaha_siska`
--

CREATE TABLE `suratizintempatusaha_siska` (
  `id` int(11) NOT NULL,
  `image_kabupatenatauprovinsi` blob NOT NULL,
  `keteranganpemerintahprovinsi_dandinaspelayananperijinanterpadu` varchar(100) NOT NULL,
  `keterangan_suratizintempatusaha` varchar(50) NOT NULL,
  `nomor_suratizintempatusaha` varchar(50) NOT NULL,
  `nama_perusahaanatautoko` varchar(100) NOT NULL,
  `alamatlengkap_perusahaanatautoko` longtext NOT NULL,
  `bidang_usaha` varchar(200) NOT NULL,
  `namapenanggungjawab_ataupimpinandandirektur` varchar(150) NOT NULL,
  `luas_tempatusaha` varchar(65) NOT NULL,
  `berlaku_sdtanggal` varchar(70) NOT NULL,
  `pernyataandanpenjelasan_keterangansitu` longtext NOT NULL,
  `ketentuan_berlakunyasuratizintempatusaha` longtext NOT NULL,
  `ketetapantempat_suratizintempatusahadikeluarkan` varchar(50) NOT NULL,
  `waktu_keluaransitu` varchar(50) NOT NULL,
  `keterangan_kepaladesadaerah` varchar(100) NOT NULL,
  `tandatangan_ataucapbesertamateraikepaladesa` text NOT NULL,
  `namalengkap_kepaladesa` varchar(75) NOT NULL,
  `nip_kepaladesa` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratizinusaha_siska`
--

CREATE TABLE `suratizinusaha_siska` (
  `id` int(11) NOT NULL,
  `namaperusahaan_atautempatbekerja` varchar(256) NOT NULL,
  `nomorinduk_berusaha` int(16) NOT NULL,
  `alamatperusahaan_atautempatbekerja` varchar(256) NOT NULL,
  `nama_kbli` longtext NOT NULL,
  `kode_kbli` varchar(100) NOT NULL,
  `alamatlengkap_usaha` mediumtext NOT NULL,
  `alamatsingkat_usaha` varchar(150) NOT NULL,
  `desaataukelurahan_usaha` varchar(50) NOT NULL,
  `kecamatan_usaha` varchar(50) NOT NULL,
  `kabupatenataukota_usaha` varchar(75) NOT NULL,
  `provinsi_usaha` varchar(100) NOT NULL,
  `pernyataanwaktu_keluaransurat` mediumtext NOT NULL,
  `code_qr` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratketeranganberpergian_siska`
--

CREATE TABLE `suratketeranganberpergian_siska` (
  `id` int(11) NOT NULL,
  `nomor_skib` varchar(60) NOT NULL,
  `namalengkapuser_yangmengajukansurat` varchar(70) NOT NULL,
  `jeniskelaminuser_yangmengajukansurat` varchar(20) NOT NULL,
  `tempatdantanggallahiruser_yangmengajukansurat` varchar(50) NOT NULL,
  `statusperkawinanuser_yangmengajukansurat` varchar(20) NOT NULL,
  `kewarganegaraanatau_warganegara` varchar(30) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `pekerjaanuser_yangmengajukansurat` varchar(100) NOT NULL,
  `alamatlengkapuser_yangmengajukansurat` varchar(256) NOT NULL,
  `keterangandan_penjelasanberpergian` mediumtext NOT NULL,
  `waktukeluarnya_suratberpergian` varchar(100) NOT NULL,
  `pernyataanasal_kepaladesa` varchar(25) NOT NULL,
  `tandatangan_kepaladesasetempat` text NOT NULL,
  `namalengkap_kepaladesa` varchar(64) NOT NULL,
  `nip_kepaladesa` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratketerangancatatankepolisian_siska`
--

CREATE TABLE `suratketerangancatatankepolisian_siska` (
  `id` int(11) NOT NULL,
  `nomor_skck` int(20) NOT NULL,
  `keterangan_kepolisiannridaerah` varchar(200) NOT NULL,
  `logo_skck` blob NOT NULL,
  `pernyataan_skckpolicerecord` varchar(13) NOT NULL,
  `nomor_skckyanmas` varchar(100) NOT NULL,
  `nama_useryangmengajukanskck` varchar(64) NOT NULL,
  `jeniskelamin_useryangmengajukanskck` varchar(10) NOT NULL,
  `kebangsaan_useryangmengajukanskck` varchar(20) NOT NULL,
  `tempatdantanggallahir_useryangmengajukanskck` varchar(50) NOT NULL,
  `tempattinggalsekaranglengkap_useryangmengajukanskck` longtext NOT NULL,
  `pekerjaan_useryangmengajukanskck` varchar(100) NOT NULL,
  `nomorktp_useryangmengajukanskck` int(16) NOT NULL,
  `nomorpasporataukitasataupunkitap_useryangmengajukanskck` varchar(40) NOT NULL,
  `rumus_sidikjari` varchar(50) NOT NULL,
  `pernyataandasar_suratdikeluarkan` longtext NOT NULL,
  `keterangan_keperluan` longtext NOT NULL,
  `berlaku_daritanggal` varchar(25) NOT NULL,
  `sampai_dengantanggal` varchar(25) NOT NULL,
  `foto3x4_useryangmengajukansuratskck` blob NOT NULL,
  `dikeluarkan_suratdidaerah` varchar(50) NOT NULL,
  `keterangandanpernyataan_kepalakepolisiandaerahatauresor` varchar(100) NOT NULL,
  `tandatangan_kepalakepolisandaerah` text NOT NULL,
  `nama_kepalakepolisandaerah` varchar(64) NOT NULL,
  `keterangankomisaris_dannrpkepolisian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratketerangantidakmampu_siska`
--

CREATE TABLE `suratketerangantidakmampu_siska` (
  `id` int(11) NOT NULL,
  `namauser_padasurat` varchar(64) NOT NULL,
  `tempat/tanggallahiruser_yangmengajukansurat` varchar(100) NOT NULL,
  `jeniskelamin_user` varchar(10) NOT NULL,
  `pekerjaanuser_atauorangyangmengajukansurat` varchar(175) NOT NULL,
  `agamauser_atauorangyangmengajukansurat` varchar(25) NOT NULL,
  `useratauorang_yangmengajukansurat` varchar(100) NOT NULL,
  `statusperkawinanuser_atauorangyangmengajukansurat` varchar(35) NOT NULL,
  `alamatuser_atauorangyangmengajukansurat` longtext NOT NULL,
  `namaayah_ataubapakuser` varchar(64) NOT NULL,
  `umurayah_ataubapakdalamsuratketeranganini` varchar(10) NOT NULL,
  `pekerjaanayah_ataubapakuser` varchar(100) NOT NULL,
  `alamatlengkap_ayahataubapakuser` mediumtext NOT NULL,
  `namaibuuser_dalamsurat` varchar(64) NOT NULL,
  `umuribuuser_dalamsuratketeranganini` varchar(10) NOT NULL,
  `alamatlengkap_ibuuserdalamsurat` mediumtext NOT NULL,
  `waktukeluarnya_surat` varchar(40) NOT NULL,
  `keteranganasaldaerah_kepaladesa` varchar(75) NOT NULL,
  `tandatangan_kepaladesasetempat` text NOT NULL,
  `namakepaladesa_padabawahtandatangan` varchar(64) NOT NULL,
  `keteranganasal_daerahcamat` varchar(50) NOT NULL,
  `tandatangan_camatdaerah` text NOT NULL,
  `namacamatyang_terteradibawahtandatangancamat` varchar(75) NOT NULL,
  `nip_camat` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratpengantarktp_siska`
--

CREATE TABLE `suratpengantarktp_siska` (
  `id` int(11) NOT NULL,
  `namapemerintah_kabupaten` varchar(150) NOT NULL,
  `nama_kecamatan` varchar(75) NOT NULL,
  `nama_desaataukotaataupundaerah` varchar(65) NOT NULL,
  `nomor_surat` varchar(35) NOT NULL,
  `keterangan_penandatangandaerah` varchar(256) NOT NULL,
  `namauser_yangmengajukansurat` varchar(64) NOT NULL,
  `tempatdantanggalahir_useryangmengajukansurat` varchar(45) NOT NULL,
  `jeniskelamin_user` varchar(10) NOT NULL,
  `agama_user` varchar(25) NOT NULL,
  `pekerjaanuser_yangmengajukansurat` varchar(150) NOT NULL,
  `statusperkawinan_user` varchar(25) NOT NULL,
  `alamatlengkap_useryangmengajukansurat` mediumtext NOT NULL,
  `pernyataanatau_konfirmasisurat` varchar(200) NOT NULL,
  `waktu_keluaransurat` varchar(20) NOT NULL,
  `kepaladesa_daerah` varchar(45) NOT NULL,
  `tandatangan_kepaladesa` text NOT NULL,
  `nama_kepaladesa` varchar(64) NOT NULL,
  `nip_kepaladesa` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratpindahantarkabupatenkotaatauprovinsi_siska`
--

CREATE TABLE `suratpindahantarkabupatenkotaatauprovinsi_siska` (
  `id` int(11) NOT NULL,
  `keterangan_suratpindah` varchar(150) NOT NULL,
  `nomor_suratpindah` int(25) NOT NULL,
  `nik_useryangmengajukansuratpindah` int(16) NOT NULL,
  `namalengkap_useryangmengajukansuratpindah` varchar(64) NOT NULL,
  `nomorkartukeluarga_useryangmengajukansuratpindah` int(16) NOT NULL,
  `namakepalakeluarga_useryangmengajukansuratpindah` varchar(64) NOT NULL,
  `alamatsekarang_useryangmengajukansuratpindah` varchar(256) NOT NULL,
  `alamattujuanpindah_useryangmengajukansuratpindah` varchar(256) NOT NULL,
  `jumlahkeluarga_yangpindah` varchar(100) NOT NULL,
  `keterangan_permohonandanpenggunaansurat` longtext NOT NULL,
  `suratpindah_keluaran` varchar(50) NOT NULL,
  `camat_daerah` varchar(75) NOT NULL,
  `tandatangan_camatdaerah` text NOT NULL,
  `nama_camatdaerah` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tampilanlayanan_siska`
--

CREATE TABLE `tampilanlayanan_siska` (
  `id` int(11) NOT NULL,
  `layanan_surat` text NOT NULL,
  `kontakpenting_user` longtext NOT NULL,
  `data_kependudukan` longtext NOT NULL,
  `administrasiuser_siska` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transformasikerjadesadigitaldantautanakunkedesa_siska`
--

CREATE TABLE `transformasikerjadesadigitaldantautanakunkedesa_siska` (
  `id` int(11) NOT NULL,
  `datapenautanakun_kelayanansiska` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `userakun_siska`
--

CREATE TABLE `userakun_siska` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(64) NOT NULL,
  `alamat_email` varchar(64) NOT NULL,
  `kata_sandi` varchar(128) NOT NULL,
  `no_telepon` varchar(14) NOT NULL,
  `desa_user` varchar(128) NOT NULL,
  `gambar_profil` varchar(128) NOT NULL DEFAULT 'default_profil.png',
  `level_user` enum('administrator','user') NOT NULL DEFAULT 'user',
  `tgl_daftar` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `userakun_siska`
--

INSERT INTO `userakun_siska` (`id_user`, `nama_lengkap`, `alamat_email`, `kata_sandi`, `no_telepon`, `desa_user`, `gambar_profil`, `level_user`, `tgl_daftar`) VALUES
(1, 'Muhammad Raihan Khalid', 'raihnkhalid@gmail.com', '$2y$10$dg1qnIa7.6OJUwZPIKbr5uJQ5HloR/ij0L.hwwGkOULR7KvTuSYTO', '085155348627', 'Purwanegara', 'default_profil.png', 'administrator', '2022-01-09'),
(2, 'Example Gratia', 'exampleg@yahoo.com', '$2y$10$nu5EcR1e80f3ZyKW9YwrY.Ggmy8XByxWGRS1T6GdVF.EV.h/41QIS', '08969601231', 'Kembaran', 'default_profil.png', 'user', '2022-01-10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aktakelahiran_siska`
--
ALTER TABLE `aktakelahiran_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `STBLD` (`stbld`),
  ADD UNIQUE KEY `NIP Kepala Dinas Kependudukan dan Pencatatan Sipil` (`nipkepaladinaskependudukan_danpencatatansipil`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `dataagamastatistikkependudukakhusus_siska`
--
ALTER TABLE `dataagamastatistikkependudukakhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dataakseptorkbstatistikkhusus_siska`
--
ALTER TABLE `dataakseptorkbstatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dataaktakelahiranstatistikkhusus_siska`
--
ALTER TABLE `dataaktakelahiranstatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datacalonpemilihuntukpemilihankhusus_siska`
--
ALTER TABLE `datacalonpemilihuntukpemilihankhusus_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`nomor_kartukeluargapenduduk`);

--
-- Indeks untuk tabel `datagolongandarahstatistikkhusus_siska`
--
ALTER TABLE `datagolongandarahstatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datahubungandalamkartukeluargastatistikkhusus_siska`
--
ALTER TABLE `datahubungandalamkartukeluargastatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datajenisasuransistatistikkhusus_siska`
--
ALTER TABLE `datajenisasuransistatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datajeniskelaminstatistikkhusus_siska`
--
ALTER TABLE `datajeniskelaminstatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datakeluargakhususkependudukan_siska`
--
ALTER TABLE `datakeluargakhususkependudukan_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`nik_penduduk`);

--
-- Indeks untuk tabel `datakepemilikanktpstatistikkhusus_siska`
--
ALTER TABLE `datakepemilikanktpstatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datakependudukan_siska`
--
ALTER TABLE `datakependudukan_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datalayananpencetakandanpengunduhankhususdalamstatistik_siska`
--
ALTER TABLE `datalayananpencetakandanpengunduhankhususdalamstatistik_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datapekerjaandalamstatistikkhusus_siska`
--
ALTER TABLE `datapekerjaandalamstatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datapendidikandalamkartukeluargastatistikkhusus_siska`
--
ALTER TABLE `datapendidikandalamkartukeluargastatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datapendidikanyangsedangditempuhdalamstatistikkhusus_siska`
--
ALTER TABLE `datapendidikanyangsedangditempuhdalamstatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datapendudukkhususkependudukan_siska`
--
ALTER TABLE `datapendudukkhususkependudukan_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`nomorurut_rumahtangga`);

--
-- Indeks untuk tabel `datapengelolaankelompokkhususpenduduk_siska`
--
ALTER TABLE `datapengelolaankelompokkhususpenduduk_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`kategori_kelompok`);

--
-- Indeks untuk tabel `datapengelompokkanrumahtanggakhusus_siska`
--
ALTER TABLE `datapengelompokkanrumahtanggakhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datapenyakitmenahunstatistikkhusus_siska`
--
ALTER TABLE `datapenyakitmenahunstatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datapenyandangcacatstatistikkhusus_siska`
--
ALTER TABLE `datapenyandangcacatstatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datarentangumurdalamstatistikkhusus_siska`
--
ALTER TABLE `datarentangumurdalamstatistikkhusus_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`rentang_umur`);

--
-- Indeks untuk tabel `datastatistikkeluargakelasketahananpangankhusus_siska`
--
ALTER TABLE `datastatistikkeluargakelasketahananpangankhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datastatistikkeluargakelaslingkunganhidupkhusus_siska`
--
ALTER TABLE `datastatistikkeluargakelaslingkunganhidupkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datastatistikkeluargakelaspenataanruangkhusus_siska`
--
ALTER TABLE `datastatistikkeluargakelaspenataanruangkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datastatistikkeluargakelassosialkhusus_siska`
--
ALTER TABLE `datastatistikkeluargakelassosialkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datastatistiklaporankelompokrentanmumurkhusus_siska`
--
ALTER TABLE `datastatistiklaporankelompokrentanmumurkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datastatistiklaporankependudukanbulanankhusus_siska`
--
ALTER TABLE `datastatistiklaporankependudukanbulanankhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datastatistikpenerimabantuankeluargakhusus_siska`
--
ALTER TABLE `datastatistikpenerimabantuankeluargakhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datastatistikpenerimabantuanpendudukkhusus_siska`
--
ALTER TABLE `datastatistikpenerimabantuanpendudukkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datastatistikpesertaprogrambedahrumahkhusus_siska`
--
ALTER TABLE `datastatistikpesertaprogrambedahrumahkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datastatistikpesertaprogramblsmkhusus_siska`
--
ALTER TABLE `datastatistikpesertaprogramblsmkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datastatistikpesertaprogrambpntkhusus_siska`
--
ALTER TABLE `datastatistikpesertaprogrambpntkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datastatistikpesertaprogrampbiapbnkhusus_siska`
--
ALTER TABLE `datastatistikpesertaprogrampbiapbnkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datastatistikpesertaprogrampkhkhusus_siska`
--
ALTER TABLE `datastatistikpesertaprogrampkhkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datastatuscovidatauomicronstatistikkhusus_siska`
--
ALTER TABLE `datastatuscovidatauomicronstatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datastatuspendudukstatistikkhusus_siska`
--
ALTER TABLE `datastatuspendudukstatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datastatusperkawinanstatistikkhusus_siska`
--
ALTER TABLE `datastatusperkawinanstatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datasuplemenkependudukankhusus_siska`
--
ALTER TABLE `datasuplemenkependudukankhusus_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`pemilihan_sasaransuplemen`);

--
-- Indeks untuk tabel `dataumurataurentangdalamstatistikkependudukan_siska`
--
ALTER TABLE `dataumurataurentangdalamstatistikkependudukan_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dataumurkategoridalamstatistikkependudukan_siska`
--
ALTER TABLE `dataumurkategoridalamstatistikkependudukan_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datawarganegarastatistikkhusus_siska`
--
ALTER TABLE `datawarganegarastatistikkhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `domisilipenduduk_siska`
--
ALTER TABLE `domisilipenduduk_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `NIP Kepala Desa` (`nip_kepaladesa`);

--
-- Indeks untuk tabel `formtautansertalayanankedesa_siska`
--
ALTER TABLE `formtautansertalayanankedesa_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `homepage_siska`
--
ALTER TABLE `homepage_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kartukeluarga_siska`
--
ALTER TABLE `kartukeluarga_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD UNIQUE KEY `nomor_kk` (`nomor_kk`);

--
-- Indeks untuk tabel `kontakpenting_siska`
--
ALTER TABLE `kontakpenting_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `layanansurat_siska`
--
ALTER TABLE `layanansurat_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `layoutkonfirmasi_siska`
--
ALTER TABLE `layoutkonfirmasi_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `platformpencetakansurat_siska`
--
ALTER TABLE `platformpencetakansurat_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profilakunyangsudahtertaut_siska`
--
ALTER TABLE `profilakunyangsudahtertaut_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `statistikkependudukankhusus_siska`
--
ALTER TABLE `statistikkependudukankhusus_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `suratizintempatusaha_siska`
--
ALTER TABLE `suratizintempatusaha_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`nomor_suratizintempatusaha`);

--
-- Indeks untuk tabel `suratizinusaha_siska`
--
ALTER TABLE `suratizinusaha_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `suratketeranganberpergian_siska`
--
ALTER TABLE `suratketeranganberpergian_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `suratketerangancatatankepolisian_siska`
--
ALTER TABLE `suratketerangancatatankepolisian_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_skck` (`nomor_skck`);

--
-- Indeks untuk tabel `suratketerangantidakmampu_siska`
--
ALTER TABLE `suratketerangantidakmampu_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `suratpengantarktp_siska`
--
ALTER TABLE `suratpengantarktp_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_surat` (`nomor_surat`);

--
-- Indeks untuk tabel `suratpindahantarkabupatenkotaatauprovinsi_siska`
--
ALTER TABLE `suratpindahantarkabupatenkotaatauprovinsi_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomorkartukeluarga_useryangmengajukansuratpindah` (`nomorkartukeluarga_useryangmengajukansuratpindah`);

--
-- Indeks untuk tabel `tampilanlayanan_siska`
--
ALTER TABLE `tampilanlayanan_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transformasikerjadesadigitaldantautanakunkedesa_siska`
--
ALTER TABLE `transformasikerjadesadigitaldantautanakunkedesa_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `userakun_siska`
--
ALTER TABLE `userakun_siska`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `alamat_email` (`alamat_email`),
  ADD UNIQUE KEY `no_telepon` (`no_telepon`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `userakun_siska`
--
ALTER TABLE `userakun_siska`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aktakelahiran_siska`
--
ALTER TABLE `aktakelahiran_siska`
  ADD CONSTRAINT `aktakelahiran_siska_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userakun_siska` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
