-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 06 Jan 2022 pada 00.07
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
-- Struktur dari tabel `profiladmin_siska`
--

CREATE TABLE `profiladmin_siska` (
  `id` int(11) NOT NULL,
  `imageadmin_desa` blob NOT NULL,
  `username_admin` varchar(50) NOT NULL,
  `email_admin` varchar(65) NOT NULL,
  `nomortelepon_adminsiska` int(14) NOT NULL,
  `settingakun_admindesa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profilakunaplikasi_siska`
--

CREATE TABLE `profilakunaplikasi_siska` (
  `id` int(11) NOT NULL,
  `image_userprofil` blob NOT NULL,
  `username_profilsiska` varchar(50) NOT NULL,
  `email_profil` varchar(50) NOT NULL,
  `nomortelepon_user` int(50) NOT NULL,
  `setting_akundata` text NOT NULL,
  `submit_tautanakun` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
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
  `tgl_daftar` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `userakun_siska`
--

INSERT INTO `userakun_siska` (`id_user`, `nama_lengkap`, `alamat_email`, `kata_sandi`, `no_telepon`, `tgl_daftar`) VALUES
(1, 'Raihan Khalid', 'raihnkhalid@gmail.com', '@Raihan156', '085155348627', '0000-00-00'),
(6, 'Raihan Khalid', 'raihn.khalid@gmail.com', '@Raihan156', '081236093254', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aktakelahiran_siska`
--
ALTER TABLE `aktakelahiran_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `STBLD` (`stbld`),
  ADD UNIQUE KEY `NIP Kepala Dinas Kependudukan dan Pencatatan Sipil` (`nipkepaladinaskependudukan_danpencatatansipil`);

--
-- Indeks untuk tabel `datakeluargakhususkependudukan_siska`
--
ALTER TABLE `datakeluargakhususkependudukan_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`nik_penduduk`);

--
-- Indeks untuk tabel `datakependudukan_siska`
--
ALTER TABLE `datakependudukan_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datapendudukkhususkependudukan_siska`
--
ALTER TABLE `datapendudukkhususkependudukan_siska`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`nomorurut_rumahtangga`);

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
-- Indeks untuk tabel `profiladmin_siska`
--
ALTER TABLE `profiladmin_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profilakunaplikasi_siska`
--
ALTER TABLE `profilakunaplikasi_siska`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profilakunyangsudahtertaut_siska`
--
ALTER TABLE `profilakunyangsudahtertaut_siska`
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
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `userakun_siska`
--
ALTER TABLE `userakun_siska`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
