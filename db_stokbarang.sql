-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Jan 2021 pada 04.29
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_stokbarang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `kode_barang` varchar(7) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `tanggal_update_terakhir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `kode_barang`, `nama_barang`, `stok`, `tanggal_update_terakhir`) VALUES
(1, 'L1485CY', 'ABC Kecap Manis', 11, '2021-01-31'),
(2, 'O0112DO', 'Sania Minyak Goreng', 6, '2021-01-30'),
(3, 'K3012TH', 'Indomie Ayam Bawang', 7, '2021-01-30'),
(4, 'K2711SW', 'Indomie Goreng', 13, '2021-01-30'),
(5, 'W0197YB', 'Mie Sakura', 8, '2021-01-30'),
(6, 'N1812NN', 'Indofood Sambal Bangkok', 5, '2021-01-30'),
(7, 'C1501MN', 'Lays  Rasa Rumput Laut', 20, '2021-01-30'),
(8, 'H2303RJ', 'ABC Sardines Tomat', 23, '2021-01-30'),
(9, 'N1308JM', 'Chitato Sapi Panggang', 18, '2021-01-30'),
(10, 'J2711JK', 'Biskuat', 9, '2021-01-31'),
(11, 'L0976ZN', 'Nuvo Hand Sanitizer', 3, '2021-01-31'),
(12, 'X4532ZN', 'Sunlight', 40, '2021-01-31'),
(13, 'W1230WX', 'Pepsodent', 23, '2021-01-31'),
(14, 'G2345TY', 'Nuvo Sabun', 12, '2021-01-31'),
(15, 'G5745RT', 'Gerry Malkist', 23, '2021-01-31'),
(16, 'J4567CH', 'Ciptadent', 45, '2021-01-31'),
(17, 'R4567RT', 'Roma Kelapa', 12, '2021-01-31'),
(18, 'Y8906UT', 'Masker', 8, '2021-01-31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(25) NOT NULL,
  `role` enum('Staff Gudang','Manajer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'staffgudang', 'staffgudang', 'Staff Gudang'),
(2, 'manajer', 'manajer', 'Manajer'),
(3, 'yoshi', 'treasure', 'Staff Gudang'),
(4, 'ajun', 'teume', 'Staff Gudang'),
(5, 'ruto', 'uwoos', 'Manajer');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
