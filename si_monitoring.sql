-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Mar 2023 pada 08.26
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_monitoring`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensis`
--

CREATE TABLE `absensis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_jurusan_id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `pertemuan_ke` int(11) NOT NULL,
  `waktu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telah_diisi` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailabsensis`
--

CREATE TABLE `detailabsensis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswakelas_id` bigint(20) UNSIGNED NOT NULL,
  `absensi_id` bigint(20) UNSIGNED NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gurus`
--

CREATE TABLE `gurus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'foto_profil_guru/defaultprofile.jpg',
  `NIP` bigint(20) NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gurus`
--

INSERT INTO `gurus` (`id`, `user_id`, `foto`, `NIP`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 2, 'foto_profil_guru/defaultprofile.jpg', 634600, 'Samarinda', '2001-12-06', 'Perempuan', 'jl.banana', NULL, NULL),
(2, 4, 'foto_profil_guru/defaultprofile.jpg', 634601, 'Tenggarong', '2001-08-06', 'Laki-laki', 'jl.perjuangan', NULL, NULL),
(3, 7, 'foto_profil_guru/defaultprofile.jpg', 634602, 'bontang', '2001-01-06', 'Laki-laki', 'jl.mawar', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapels`
--

CREATE TABLE `guru_mapels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `guru_mapels`
--

INSERT INTO `guru_mapels` (`id`, `guru_id`, `mapel_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-03-03 01:12:41', '2023-03-03 01:12:41'),
(2, 2, 1, '2023-03-03 01:12:41', '2023-03-03 01:12:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusans`
--

CREATE TABLE `jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jurusans`
--

INSERT INTO `jurusans` (`id`, `nama_jurusan`, `created_at`, `updated_at`) VALUES
(1, 'IPA', '2023-03-03 01:12:40', '2023-03-03 01:12:40'),
(2, 'IPS', '2023-03-03 01:12:40', '2023-03-03 01:12:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tingkat_kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `tingkat_kelas`, `created_at`, `updated_at`) VALUES
(1, 'X', '2023-03-03 01:12:40', '2023-03-03 01:12:40'),
(2, 'XI', '2023-03-03 01:12:40', '2023-03-03 01:12:40'),
(3, 'XII', '2023-03-03 01:12:40', '2023-03-03 01:12:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_jurusans`
--

CREATE TABLE `kelas_jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jurusan_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL DEFAULT 0,
  `guru_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas_jurusans`
--

INSERT INTO `kelas_jurusans` (`id`, `kelas_id`, `jurusan_id`, `jumlah`, `guru_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, '2023-03-03 01:12:40', '2023-03-03 01:12:40'),
(2, 2, 1, 2, NULL, '2023-03-03 01:12:40', '2023-03-03 01:12:40'),
(3, 3, 1, 0, NULL, NULL, NULL),
(4, 1, 2, 0, NULL, NULL, NULL),
(5, 2, 2, 0, NULL, NULL, NULL),
(6, 3, 2, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapels`
--

CREATE TABLE `mapels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_mapel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan_id` bigint(20) UNSIGNED NOT NULL,
  `KKM` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mapels`
--

INSERT INTO `mapels` (`id`, `nama_mapel`, `jurusan_id`, `KKM`, `created_at`, `updated_at`) VALUES
(1, 'Matematika', 1, 75, '2023-03-03 01:12:40', '2023-03-03 01:12:40'),
(2, 'Kimia', 1, 70, '2023-03-03 01:12:40', '2023-03-03 01:12:40'),
(3, 'Fisika', 1, 70, '2023-03-03 01:12:40', '2023-03-03 01:12:40'),
(4, 'Sosiologi', 2, 68, '2023-03-03 01:12:41', '2023-03-03 01:12:41'),
(5, 'Ekonomi', 2, 70, '2023-03-03 01:12:41', '2023-03-03 01:12:41'),
(6, 'Sejarah', 2, 75, '2023-03-03 01:12:41', '2023-03-03 01:12:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_18_121223_create_gurus_table', 1),
(6, '2021_11_19_102219_create_siswas_table', 1),
(7, '2021_12_06_074030_create_kelas_table', 1),
(8, '2021_12_06_081256_create_mapels_table', 1),
(9, '2021_12_06_093500_create_siswa_kelas_table', 1),
(10, '2021_12_06_094751_create_absensis_table', 1),
(11, '2021_12_06_094901_create_detailabsensis_table', 1),
(12, '2021_12_06_101140_create_nilais_table', 1),
(13, '2021_12_09_134508_create_jurusans_table', 1),
(14, '2021_12_09_135549_create_kelas_jurusans_table', 1),
(15, '2021_12_14_002606_create_guru_mapels_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilais`
--

CREATE TABLE `nilais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswakelas_id` bigint(20) UNSIGNED NOT NULL,
  `Tugas_1` int(11) NOT NULL DEFAULT 0,
  `Tugas_2` int(11) NOT NULL DEFAULT 0,
  `Tugas_3` int(11) NOT NULL DEFAULT 0,
  `Tugas_4` int(11) NOT NULL DEFAULT 0,
  `Tugas_5` int(11) NOT NULL DEFAULT 0,
  `UTS` int(11) NOT NULL DEFAULT 0,
  `UAS` int(11) NOT NULL DEFAULT 0,
  `nilai_rapor` double(8,2) NOT NULL DEFAULT 0.00,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `Semester` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilais`
--

INSERT INTO `nilais` (`id`, `siswakelas_id`, `Tugas_1`, `Tugas_2`, `Tugas_3`, `Tugas_4`, `Tugas_5`, `UTS`, `UAS`, `nilai_rapor`, `keterangan`, `mapel_id`, `Semester`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 1, 1, NULL, NULL),
(2, 1, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 2, 1, NULL, NULL),
(3, 1, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 3, 1, NULL, NULL),
(4, 1, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 1, 2, NULL, NULL),
(5, 1, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 2, 2, NULL, NULL),
(6, 1, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 3, 2, NULL, NULL),
(7, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 1, 1, NULL, NULL),
(8, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 2, 1, NULL, NULL),
(9, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 3, 1, NULL, NULL),
(10, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 1, 2, NULL, NULL),
(11, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 2, 2, NULL, NULL),
(12, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 3, 2, NULL, NULL),
(13, 3, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 4, 1, NULL, NULL),
(14, 3, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 5, 1, NULL, NULL),
(15, 3, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 6, 1, NULL, NULL),
(16, 3, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 4, 2, NULL, NULL),
(17, 3, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 5, 2, NULL, NULL),
(18, 3, 0, 0, 0, 0, 0, 0, 0, 0.00, NULL, 6, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `NISN` bigint(20) NOT NULL,
  `tgl_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'foto_profil_siswa/defaultprofile.jpg',
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_wali` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswas`
--

INSERT INTO `siswas` (`id`, `user_id`, `NISN`, `tgl_lahir`, `tempat_lahir`, `jenis_kelamin`, `foto`, `alamat`, `nama_wali`, `created_at`, `updated_at`) VALUES
(1, 3, 123400, '1999-03-04', 'Hutan', 'Laki-laki', 'foto_profil_siswa/defaultprofile.jpg', 'jl.pemuda', 'Banana', '2023-03-03 01:12:41', '2023-03-03 01:12:41'),
(2, 5, 123401, '1999-08-06', 'Samarinda', 'Laki-laki', 'foto_profil_siswa/defaultprofile.jpg', 'jl.Pramuka', 'wali', '2023-03-03 01:12:41', '2023-03-03 01:12:41'),
(3, 6, 123402, '1999-02-06', 'Samarinda', 'Laki-laki', 'foto_profil_siswa/defaultprofile.jpg', 'jl.gelatik', 'a', '2023-03-03 01:12:41', '2023-03-03 01:12:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_kelas`
--

CREATE TABLE `siswa_kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_jurusan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa_kelas`
--

INSERT INTO `siswa_kelas` (`id`, `siswa_id`, `kelas_jurusan_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'aktif', '2023-03-03 01:12:41', '2023-03-03 01:12:41'),
(2, 2, 2, 'aktif', '2023-03-03 01:12:41', '2023-03-03 01:12:41'),
(3, 3, 4, 'aktif', '2023-03-03 01:12:41', '2023-03-03 01:12:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rizani Husyairi', 'admin@gmail.com', 'Admin', NULL, '$2y$10$QdG/KBHNr3tpj3rJZrDDdOa271dwIVusWhnBCGp9W4h4Bu/92OzUS', NULL, '2023-03-03 01:12:39', '2023-03-03 01:12:39'),
(2, 'Juli Fitriani', 'juli@gmail.com', 'Guru', NULL, '$2y$10$wcMYIkCT7xEyvkULnt7VIugoFRnKEnf4IaydBpmOuZhxy5prS6ciS', NULL, '2023-03-03 01:12:39', '2023-03-03 01:12:39'),
(3, 'Ari', 'arik@gmail.com', 'WaliSiswa', NULL, '$2y$10$D/DXJCWI8XaWYmq0jCCGTOuWhoYyPueXZXB0akeGlu7bku32TnNxa', NULL, '2023-03-03 01:12:39', '2023-03-03 01:12:39'),
(4, 'Guru', 'guru@gmail.com', 'Guru', NULL, '$2y$10$lWL5suAUWw/9mkYSY2LMHuBPhbQZ7DA5Ii8Y5qBobArEYO6SYwyFm', NULL, '2023-03-03 01:12:39', '2023-03-03 01:12:39'),
(5, 'Pandaman', 'Pandaman@gmail.com', 'WaliSiswa', NULL, '$2y$10$PUEHDruuKfulvYLhFLjRreemOnfM39k/SlMMCBRuHmz7699iFNgCC', NULL, '2023-03-03 01:12:39', '2023-03-03 01:12:39'),
(6, 'Siswa', 'Siswa@gmail.com', 'WaliSiswa', NULL, '$2y$10$jke3osq3cAf1ikg7grDZSeejM.ayYDDO85hIensH/duphkQUgbAEm', NULL, '2023-03-03 01:12:40', '2023-03-03 01:12:40'),
(7, 'Guru2', 'guru2@gmail.com', 'Guru', NULL, '$2y$10$fI.V6xyKJgyjJOaeOwYcNurQA88II3eeUxMxAEaFTpuU3uhqnJnCu', NULL, '2023-03-03 01:12:40', '2023-03-03 01:12:40');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensis`
--
ALTER TABLE `absensis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detailabsensis`
--
ALTER TABLE `detailabsensis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gurus`
--
ALTER TABLE `gurus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gurus_nip_unique` (`NIP`);

--
-- Indeks untuk tabel `guru_mapels`
--
ALTER TABLE `guru_mapels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas_jurusans`
--
ALTER TABLE `kelas_jurusans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapels`
--
ALTER TABLE `mapels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilais`
--
ALTER TABLE `nilais`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswas_nisn_unique` (`NISN`);

--
-- Indeks untuk tabel `siswa_kelas`
--
ALTER TABLE `siswa_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensis`
--
ALTER TABLE `absensis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `detailabsensis`
--
ALTER TABLE `detailabsensis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gurus`
--
ALTER TABLE `gurus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `guru_mapels`
--
ALTER TABLE `guru_mapels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kelas_jurusans`
--
ALTER TABLE `kelas_jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `mapels`
--
ALTER TABLE `mapels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `nilais`
--
ALTER TABLE `nilais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `siswa_kelas`
--
ALTER TABLE `siswa_kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
