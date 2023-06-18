-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2023 pada 09.55
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
-- Database: `sewa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewaan`
--

CREATE TABLE `penyewaan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `identitas` varchar(50) NOT NULL,
  `hariSewa` date NOT NULL,
  `jamAwal` time NOT NULL,
  `jamAkhir` time NOT NULL,
  `noTelp` int(15) NOT NULL,
  `paket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penyewaan`
--

INSERT INTO `penyewaan` (`id`, `nama`, `identitas`, `hariSewa`, `jamAwal`, `jamAkhir`, `noTelp`, `paket`) VALUES
(1, 'Farikhatun', '30023143241', '2023-06-30', '06:45:00', '11:00:00', 2147483647, '0'),
(2, 'Hayiii', '234568765432', '2023-06-29', '00:00:00', '06:00:00', 2147483647, '3'),
(0, 'yyy', '123467890', '2023-06-19', '11:42:00', '13:44:00', 124576890, ''),
(0, 'yyy', '123467890', '2023-06-19', '11:42:00', '13:44:00', 124576890, ''),
(0, 'yyy', '123467890', '2023-06-19', '11:42:00', '13:44:00', 124576890, ''),
(0, 'yyy', '123467890', '2023-06-19', '11:42:00', '13:44:00', 124576890, ''),
(0, 'hakiki', '12345678', '2023-06-18', '12:00:00', '01:10:00', 876543, '2'),
(0, 'hakiki', '12345678', '2023-06-18', '12:00:00', '01:10:00', 876543, '2'),
(0, 'hakiki', '12345678', '2023-06-18', '12:00:00', '01:10:00', 876543, '2'),
(0, 'hakiki', '12345678', '2023-06-18', '12:00:00', '01:10:00', 876543, '2'),
(0, 'hakiki', '12345678', '2023-06-18', '12:00:00', '01:10:00', 876543, '2'),
(0, 'hakiki', '12345678', '2023-06-19', '08:59:00', '10:01:00', 876543, '2'),
(0, 'hakiki', '12345678', '2023-06-19', '08:59:00', '10:01:00', 876543, '3'),
(0, 'hakiki', '12345678', '2023-06-19', '08:59:00', '10:01:00', 876543, '4'),
(0, 'al', '1234', '2023-06-18', '09:09:00', '10:06:00', 876543, '4'),
(0, 'al', '1234', '2023-06-18', '09:09:00', '10:06:00', 876543, '2'),
(0, 'al', '1234', '2023-06-18', '09:09:00', '10:06:00', 876543, '3'),
(0, 'hakiki', '12345678', '2023-06-18', '10:35:00', '10:38:00', 876543, '1'),
(0, 'kkk', '123', '2023-06-18', '00:01:00', '11:04:00', 1234, '1'),
(0, 'halo', '1234', '2023-06-04', '12:10:00', '15:14:00', 987, '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `registrasi`
--

CREATE TABLE `registrasi` (
  `Id` int(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `registrasi`
--

INSERT INTO `registrasi` (`Id`, `Username`, `Password`, `Email`) VALUES
(1, 'hakiki', 'hakiki', 'hakiki.com'),
(2, 'halo', 'halo', 'halo.com'),
(3, 'aku', '89ccfac87d8d06db06bf3211cb2d69ed', 'aku@aku.com'),
(4, 'bismillah', 'e172dd95f4feb21412a692e73929961e', 'bismillah@bismillah.com'),
(5, 'yyy', 'f0a4058fd33489695d53df156b77c724', 'yyy@yyy.com'),
(6, 'kamu', '48ec8af8df4bf4347d9b1de4ee7bb092', 'kamu@kamu.com'),
(7, 'aaa', '47bce5c74f589f4867dbd57e9ca9f808', 'aaa@aaa.com'),
(8, 'bbb', '08f8e0260c64418510cefb2b06eee5cd', 'bbb@bbb.com'),
(9, 'saya', '20c1a26a55039b30866c9d0aa51953ca', 'saya@saya.com'),
(10, 'ttt', '9990775155c3518a0d7917f7780b24aa', 'ttt@ttt.com'),
(11, 'ccc', '9df62e693988eb4e1e1444ece0578579', 'ccc@ccc.com'),
(12, 'kkk', 'cb42e130d1471239a27fca6228094f0e', 'kkk@kkk.com'),
(13, 'www', '4eae35f1b35977a00ebd8086c259d4c9', 'www@www.com'),
(14, 'rrr', '44f437ced647ec3f40fa0841041871cd', 'rrr@rrr.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `registrasi`
--
ALTER TABLE `registrasi`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `registrasi`
--
ALTER TABLE `registrasi`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
