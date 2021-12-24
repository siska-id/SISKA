-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 24 Des 2021 pada 18.00
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
-- Struktur dari tabel `akta_kelahiran`
--

CREATE TABLE `akta_kelahiran` (
  `nama_negara` varchar(10) NOT NULL,
  `nomor_aktakelahiran` int(50) NOT NULL,
  `stbld` int(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` int(50) NOT NULL,
  `tahun_lahir` int(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `keterangan_anakke` varchar(50) NOT NULL,
  `ketetapantempat_dibuataktakelahiran` varchar(100) NOT NULL,
  `tanggalkeluar_aktakelahiran` varchar(100) NOT NULL,
  `tahunkeluar_aktakelahiran` varchar(100) NOT NULL,
  `keterangankepaladinaskependudukan_danpencatatansipil` varchar(100) NOT NULL,
  `tandatangan_KBKdanCSDKB` text NOT NULL,
  `namakepaladinaskependudukan_danpencatatansipil` varchar(1000) NOT NULL,
  `nipkepaladinaskependudukan_danpencatatansipil` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `domisili_penduduk`
--

CREATE TABLE `domisili_penduduk` (
  `nama_desa` varchar(100) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `nama_kabupaten` varchar(100) NOT NULL,
  `namayangakandiisi_dalamdomisili` varchar(50) NOT NULL,
  `nik_domisili` int(50) NOT NULL,
  `tempatdan_tanggallahirdomisili` varchar(100) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `kewarganegaraan` varchar(20) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `alamat_domisili` varchar(500) NOT NULL,
  `tempat_domisili` varchar(100) NOT NULL,
  `desa_domisili` varchar(100) NOT NULL,
  `waktukeluar_surat` varchar(100) NOT NULL,
  `keteranganasaldaerah_kepaladesa` varchar(1000) NOT NULL,
  `tandatangan_kepaladesa` text NOT NULL,
  `nama_kepaladesa` varchar(100) NOT NULL,
  `nip_kepaladesa` int(100) NOT NULL,
  `pemohon` varchar(1000) NOT NULL,
  `tandatangan_pemohonatauuser` varchar(100) NOT NULL,
  `nama_pemohonatauuser` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `formtautansertalayanan_siskamobilekedesa`
--

CREATE TABLE `formtautansertalayanan_siskamobilekedesa` (
  `nik_user` int(50) NOT NULL,
  `fitur_pilihdesa` varchar(100) NOT NULL,
  `nomorkartukeluarga_user` int(50) NOT NULL,
  `uploadimage_ktpuser` blob NOT NULL,
  `uploadimage_selfiektpuser` blob NOT NULL,
  `submitform_tautandesa` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `homepage_siska`
--

CREATE TABLE `homepage_siska` (
  `menu_profil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kartu_keluarga`
--

CREATE TABLE `kartu_keluarga` (
  `nomor_kk` int(100) NOT NULL,
  `nama_kepalakeluarga` varchar(1000) NOT NULL,
  `alamat_kk` varchar(10000) NOT NULL,
  `rt_rw` int(50) NOT NULL,
  `desa_kelurahan` varchar(1000) NOT NULL,
  `kecamatan` varchar(1000) NOT NULL,
  `kabupaten_kota` varchar(1000) NOT NULL,
  `kode_pos` int(100) NOT NULL,
  `provinsi` varchar(1000) NOT NULL,
  `nomor_urutkeluarga` int(50) NOT NULL,
  `namalengkapmasingmasing_kepaladananggotakeluarga` longtext NOT NULL,
  `nik` int(100) NOT NULL,
  `jeniskelaminmasingmasing_kepaladananggotakeluarga` longtext NOT NULL,
  `tempatlahirmasingmasing_kepaladananggotakeluarga` longtext NOT NULL,
  `agamamasingmasing_kepaladananggotakeluarga` varchar(1000) NOT NULL,
  `pendidikanmasingmasing_kepaladananggotakeluarga` varchar(10000) NOT NULL,
  `jenispekerjaanmasingmasing_kepaladananggotakeluarga` varchar(10000) NOT NULL,
  `nourutstatusdan_datalaindalamkk` int(10) NOT NULL,
  `statusperkawinan_keluarga` varchar(1000) NOT NULL,
  `statushubungan_keluarga` varchar(1000) NOT NULL,
  `kewarganegaraan` varchar(1000) NOT NULL,
  `nomor_paspor` int(100) NOT NULL,
  `nomor_kitasataukitab` int(100) NOT NULL,
  `namaayahdari_kepaladananggotakeluarga` mediumtext NOT NULL,
  `namaibudari_kepaladananggotakeluarga` mediumtext NOT NULL,
  `keluaran_tanggal` int(50) NOT NULL,
  `lembaran` varchar(1000) NOT NULL,
  `tandatangan_kepalakeluarga` text NOT NULL,
  `namakepalakeluarga_dibawahtandatangankepalakeluarga` varchar(100) NOT NULL,
  `keteranganasalkepaladinaskependudukan_danpencatatansipil` varchar(1000) NOT NULL,
  `tandatangankepaladinaskependudukan_dancatatansipil` text NOT NULL,
  `qrcode_kkterbaru` blob NOT NULL,
  `namakepaladinas_kependudukandancatatansipil` varchar(100) NOT NULL,
  `nipkepaladinas_kependudukandancatatansipilkota` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanansurat_siska`
--

CREATE TABLE `layanansurat_siska` (
  `akta_kelahiran` longtext NOT NULL,
  `domisilipenduduk_siskamobile` varchar(3000) NOT NULL,
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
  `datakembali_kehomepage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_siska`
--

CREATE TABLE `login_siska` (
  `user` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `submit` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `data_submit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `platform_pencetakansurat`
--

CREATE TABLE `platform_pencetakansurat` (
  `imagepencetakansurat_untukuser` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profilakunaplikasi_siskamobile`
--

CREATE TABLE `profilakunaplikasi_siskamobile` (
  `image_userprofil` blob NOT NULL,
  `username_profilsiska` varchar(50) NOT NULL,
  `email_profil` varchar(50) NOT NULL,
  `nomortelepon_user` int(50) NOT NULL,
  `setting_akundata` text NOT NULL,
  `submit_tautanakun` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profilakunsiskamobile_yangsudahtertaut`
--

CREATE TABLE `profilakunsiskamobile_yangsudahtertaut` (
  `image_user` blob NOT NULL,
  `username_siska` varchar(50) NOT NULL,
  `emailuser_yangsudahtertaut` varchar(50) NOT NULL,
  `nomorteleponakun_sudahtertaut` int(50) NOT NULL,
  `tampilandata_desasiska` varchar(100) NOT NULL,
  `biodata_kependudukan` text NOT NULL,
  `setting_akundone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_adminsiska`
--

CREATE TABLE `profil_adminsiska` (
  `imageadmin_desa` blob NOT NULL,
  `username_admin` varchar(50) NOT NULL,
  `email_admin` varchar(50) NOT NULL,
  `nomortelepon_adminsiska` int(50) NOT NULL,
  `settingakun_admindesa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `signup_siska`
--

CREATE TABLE `signup_siska` (
  `namalengkap_data` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `submit_akun` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratizin_usaha`
--

CREATE TABLE `suratizin_usaha` (
  `namaperusahaan_atautempatbekerja` varchar(1000) NOT NULL,
  `nomorinduk_berusaha` int(100) NOT NULL,
  `alamatperusahaan_atautempatbekerja` varchar(1000) NOT NULL,
  `nama_kbli` varchar(10000) NOT NULL,
  `kode_kbli` int(100) NOT NULL,
  `alamatlengkap_usaha` mediumtext NOT NULL,
  `alamatsingkat_usaha` varchar(1000) NOT NULL,
  `desaataukelurahan_usaha` varchar(1000) NOT NULL,
  `kecamatan_usaha` varchar(1000) NOT NULL,
  `kabupatenataukota_usaha` varchar(1000) NOT NULL,
  `provinsi_usaha` varchar(100) NOT NULL,
  `pernyataanwaktu_keluaransurat` varchar(1000) NOT NULL,
  `code_qr` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratketerangan_berpergian`
--

CREATE TABLE `suratketerangan_berpergian` (
  `nomor_skib` varchar(100) NOT NULL,
  `namalengkapuser_yangmengajukansurat` varchar(1000) NOT NULL,
  `jeniskelaminuser_yangmengajukansurat` varchar(100) NOT NULL,
  `tempatdantanggallahiruser_yangmengajukansurat` varchar(1000) NOT NULL,
  `statusperkawinanuser_yangmengajukansurat` varchar(100) NOT NULL,
  `kewarganegaraanatau_warganegara` varchar(100) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `pekerjaanuser_yangmengajukansurat` varchar(1000) NOT NULL,
  `alamatlengkapuser_yangmengajukansurat` varchar(10000) NOT NULL,
  `keterangandan_penjelasanberpergian` mediumtext NOT NULL,
  `waktukeluarnya_suratberpergian` varchar(1000) NOT NULL,
  `pernyataanasal_kepaladesa` varchar(1000) NOT NULL,
  `tandatangan_kepaladesasetempat` text NOT NULL,
  `namalengkap_kepaladesa` varchar(1000) NOT NULL,
  `nip_kepaladesa` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratketerangan_tidakmampu`
--

CREATE TABLE `suratketerangan_tidakmampu` (
  `namauser_padasurat` varchar(100) NOT NULL,
  `tempat/tanggallahiruser_yangmengajukansurat` varchar(1000) NOT NULL,
  `jeniskelamin_user` varchar(100) NOT NULL,
  `pekerjaanuser_atauorangyangmengajukansurat` varchar(1000) NOT NULL,
  `agamauser_atauorangyangmengajukansurat` varchar(100) NOT NULL,
  `useratauorang_yangmengajukansurat` varchar(1000) NOT NULL,
  `statusperkawinanuser_atauorangyangmengajukansurat` varchar(1000) NOT NULL,
  `alamatuser_atauorangyangmengajukansurat` longtext NOT NULL,
  `namaayah_ataubapakuser` varchar(10000) NOT NULL,
  `umurayah_ataubapakdalamsuratketeranganini` varchar(100) NOT NULL,
  `pekerjaanayah_ataubapakuser` varchar(100) NOT NULL,
  `alamatlengkap_ayahataubapakuser` mediumtext NOT NULL,
  `namaibuuser_dalamsurat` varchar(1000) NOT NULL,
  `umuribuuser_dalamsuratketeranganini` int(100) NOT NULL,
  `alamatlengkap_ibuuserdalamsurat` longtext NOT NULL,
  `waktukeluarnya_surat` varchar(1000) NOT NULL,
  `keteranganasaldaerah_kepaladesa` varchar(100) NOT NULL,
  `tandatangan_kepaladesasetempat` text NOT NULL,
  `namakepaladesa_padabawahtandatangan` varchar(1000) NOT NULL,
  `keteranganasal_daerahcamat` varchar(1000) NOT NULL,
  `tandatangan_camatdaerah` text NOT NULL,
  `namacamatyang_terteradibawahtandatangancamat` varchar(1000) NOT NULL,
  `nip_camat` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tampilanlayanan_siskamobile`
--

CREATE TABLE `tampilanlayanan_siskamobile` (
  `layanan_surat` text NOT NULL,
  `kontakpenting_user` varchar(1000) NOT NULL,
  `data_kependudukan` longtext NOT NULL,
  `administrasiuser_siska` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transformasikerjadesadigitaldan_tautanakunkedesa`
--

CREATE TABLE `transformasikerjadesadigitaldan_tautanakunkedesa` (
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

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akta_kelahiran`
--
ALTER TABLE `akta_kelahiran`
  ADD PRIMARY KEY (`nomor_aktakelahiran`),
  ADD UNIQUE KEY `STBLD` (`stbld`),
  ADD UNIQUE KEY `NIP Kepala Dinas Kependudukan dan Pencatatan Sipil` (`nipkepaladinaskependudukan_danpencatatansipil`);

--
-- Indeks untuk tabel `domisili_penduduk`
--
ALTER TABLE `domisili_penduduk`
  ADD PRIMARY KEY (`nik_domisili`),
  ADD UNIQUE KEY `NIP Kepala Desa` (`nip_kepaladesa`);

--
-- Indeks untuk tabel `formtautansertalayanan_siskamobilekedesa`
--
ALTER TABLE `formtautansertalayanan_siskamobilekedesa`
  ADD PRIMARY KEY (`nik_user`);

--
-- Indeks untuk tabel `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  ADD PRIMARY KEY (`nipkepaladinas_kependudukandancatatansipilkota`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD UNIQUE KEY `nomor_kk` (`nomor_kk`);

--
-- Indeks untuk tabel `layanansurat_siska`
--
ALTER TABLE `layanansurat_siska`
  ADD PRIMARY KEY (`domisilipenduduk_siskamobile`);

--
-- Indeks untuk tabel `login_siska`
--
ALTER TABLE `login_siska`
  ADD PRIMARY KEY (`password`);

--
-- Indeks untuk tabel `profilakunsiskamobile_yangsudahtertaut`
--
ALTER TABLE `profilakunsiskamobile_yangsudahtertaut`
  ADD PRIMARY KEY (`emailuser_yangsudahtertaut`);

--
-- Indeks untuk tabel `profil_adminsiska`
--
ALTER TABLE `profil_adminsiska`
  ADD PRIMARY KEY (`email_admin`);

--
-- Indeks untuk tabel `signup_siska`
--
ALTER TABLE `signup_siska`
  ADD PRIMARY KEY (`password`);

--
-- Indeks untuk tabel `suratizin_usaha`
--
ALTER TABLE `suratizin_usaha`
  ADD PRIMARY KEY (`nomorinduk_berusaha`);

--
-- Indeks untuk tabel `suratketerangan_berpergian`
--
ALTER TABLE `suratketerangan_berpergian`
  ADD PRIMARY KEY (`nip_kepaladesa`,`nomor_skib`);

--
-- Indeks untuk tabel `suratketerangan_tidakmampu`
--
ALTER TABLE `suratketerangan_tidakmampu`
  ADD PRIMARY KEY (`nip_camat`);

--
-- Indeks untuk tabel `tampilanlayanan_siskamobile`
--
ALTER TABLE `tampilanlayanan_siskamobile`
  ADD PRIMARY KEY (`kontakpenting_user`);

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
