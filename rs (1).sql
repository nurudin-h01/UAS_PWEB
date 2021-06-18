-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2021 pada 17.10
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `No` int(11) NOT NULL,
  `Nama` text NOT NULL,
  `No_Hp` text NOT NULL,
  `Email` text NOT NULL,
  `Alamat` text NOT NULL,
  `Status` text NOT NULL,
  `Golongan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`No`, `Nama`, `No_Hp`, `Email`, `Alamat`, `Status`, `Golongan`) VALUES
(2, 'Sari', '0823447672342', 'sari@gmail.com', 'Jalan Riau 12', 'Nonaktif', 'Dokter Kandungan'),
(4, 'Budi', '08533826328', 'budi@gmail.com', 'Jalan Jawa 3', 'Aktif', 'Dokter Mata'),
(18, 'Budi Santoso', '082627612773', 'Budi@gmail.com', 'Jalan Sumatra 7', 'Aktif', 'Dokter anak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `No` int(11) NOT NULL,
  `Nama` text NOT NULL,
  `Tanggal` text NOT NULL,
  `Mulai` text NOT NULL,
  `Akhir` text NOT NULL,
  `Pesan` text NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`No`, `Nama`, `Tanggal`, `Mulai`, `Akhir`, `Pesan`, `Status`) VALUES
(1, 'Andi', '15-06-2021', '09:00 AM', '11:00 AM', 'Konsultasi pasien ', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `No_Karyawan` int(11) NOT NULL,
  `Nama` text NOT NULL,
  `Alamat` text NOT NULL,
  `Email` text NOT NULL,
  `No_HP` text NOT NULL,
  `Status` text NOT NULL,
  `Role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`No_Karyawan`, `Nama`, `Alamat`, `Email`, `No_HP`, `Status`, `Role`) VALUES
(1, 'Didi', 'Jalan Banten 8', 'didi@gmail.com', '087347372823', 'Aktif', 'Administrasi'),
(11, 'dandi', 'Jalan Kalimantan 10', 'dandi@gmail.com', '082651265123', 'Satpam', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `No_Pasien` int(11) NOT NULL,
  `Nama` text NOT NULL,
  `Jenis_Kelamin` text NOT NULL,
  `Alamat` text NOT NULL,
  `No_HP` text NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`No_Pasien`, `Nama`, `Jenis_Kelamin`, `Alamat`, `No_HP`, `Status`) VALUES
(2, 'Dini', 'Perempuan', 'jalan Kalimantan 1', '085182712712', 'Pulang'),
(10, 'Budi Santoso', 'Laki-laki', 'Jalan Sumatra 7', '082627612773', 'Dirawat'),
(11, 'arif', 'Laki-Laki', 'Jember', '0821278217', 'Pulang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `No` int(11) NOT NULL,
  `Username` text NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`No`, `Username`, `Password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`No`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`No`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`No_Karyawan`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`No_Pasien`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`No`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dokter`
--
ALTER TABLE `dokter`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `No_Karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `No_Pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
