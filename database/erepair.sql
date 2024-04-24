-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27 Des 2022 pada 05.18
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `erepair`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL,
  `username_admin` varchar(100) NOT NULL,
  `password_admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username_admin`, `password_admin`) VALUES
(1, 'admin', 'admin'),
(2, 'athallah', '123masuk'),
(3, 'aulia', '123masuk'),
(4, 'laras', '123masuk'),
(5, 'yefi', '123masuk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`id_user` int(11) NOT NULL,
  `email_pemesan` varchar(100) NOT NULL,
  `password_pemesan` varchar(100) NOT NULL,
  `nama_pemesan` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=16 ;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_user`, `email_pemesan`, `password_pemesan`, `nama_pemesan`) VALUES
(1, 'coba@email.com', '123masuk', 'coba'),
(2, 'pengguna@email.com', 'pengguna', 'Pengguna'),
(9, 'taylor@swift.com', 'taylorcantik', 'Taylor Swift'),
(10, 'zainjm@mail.com', '123masuk', 'Zayn Malik'),
(11, 'gghadid@email.com', 'gguhuy', 'Gigi Hadid'),
(12, 'niall@gtg.com', 'niallea', 'Niall Horan'),
(13, 'bieber@j.com', 'jbjerry', 'Justin Bieber'),
(14, 'arianagrande@mail.com', 'Ariana1', 'Ariana Grande'),
(15, 'taylor.swift@email.com', '123masuk', 'Taylor Swift');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mekanik`
--

CREATE TABLE IF NOT EXISTS `mekanik` (
  `id_mekanik` int(11) NOT NULL,
  `nama_mekanik` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mekanik`
--

INSERT INTO `mekanik` (`id_mekanik`, `nama_mekanik`) VALUES
(1, 'Shawn Mendes'),
(2, 'Harry Styles');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
`id_pemesanan` int(11) NOT NULL,
  `jenis_jasa` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `nama_pemesan` varchar(100) NOT NULL,
  `telepon_pemesan` int(15) NOT NULL,
  `alamat_pemesan` varchar(100) NOT NULL,
  `keluhan_pemesan` varchar(500) NOT NULL,
  `biaya_transport` int(11) NOT NULL,
  `biaya_jasa` int(100) NOT NULL,
  `biaya_tambahan` int(100) NOT NULL,
  `total_biaya` int(100) NOT NULL,
  `keterangan` varchar(1000) NOT NULL,
  `mekanik` varchar(1000) NOT NULL,
  `status_pemesanan` varchar(100) NOT NULL DEFAULT 'Pesanan Diterima'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=19 ;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `jenis_jasa`, `id_user`, `tanggal_pemesanan`, `nama_pemesan`, `telepon_pemesan`, `alamat_pemesan`, `keluhan_pemesan`, `biaya_transport`, `biaya_jasa`, `biaya_tambahan`, `total_biaya`, `keterangan`, `mekanik`, `status_pemesanan`) VALUES
(13, 'Service Mobil', 1, '2021-06-05', 'coba', 2147483647, 'Jl. Mawar No. 28', 'Ban bocor, perlu ditambal', 9000, 20000, 40000, 69000, ' Ganti Ban Dalam', 'Shawn Mendes', 'selesai'),
(14, 'Service Handphone', 13, '2021-06-05', 'Justin Bieber', 2147483647, 'Jl. Imajinasi No 99', 'Hp rusak karena kebanyakan notifikasi, efek orang ganteng', 9000, 0, 0, 0, '', '', 'Pesanan Diterima'),
(15, 'Service Mobil', 13, '2021-06-05', 'Justin Bieber', 2147483647, 'Jl. Imajinasi No. 99', 'Mobil tidak bisa menyala', 9000, 0, 0, 0, '', '', 'Pesanan Diterima'),
(16, 'Service Handphone', 14, '2021-06-07', 'Ariana Grande', 2147483647, 'Jl. Kenangan No 100', 'Rusak layar', 9000, 100000, 50000, 159000, ' Beli layar baru', 'Shawn Mendes', 'selesai'),
(17, 'Service Motor', 15, '2021-06-07', 'Taylor Swift', 2147483647, 'Jl. Raya Apel No 5', 'ban bocor', 10000, 0, 0, 0, '', '', 'Pesanan Diterima'),
(18, 'Service Mobil', 15, '2021-06-07', 'Taylor Swift', 123456789, 'Jl. bunga', 'ban pecah', 9000, 50000, 60000, 119000, ' Ganti Ban', 'Harry Styles', 'selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `kategori_produk` varchar(100) NOT NULL,
  `bt_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `kategori_produk`, `bt_produk`, `foto_produk`, `deskripsi_produk`) VALUES
(1, 'Service Motor', 'transportasi', 10000, 'motor.png', 'Melayani servis dengan kerusakan ringan, sedang dan berat.'),
(2, 'Service Mobil', 'transportasi', 9000, 'mobil.png', 'Melayani servis dengan kerusakan ringan, sedang dan berat.'),
(3, 'Service Handphone', 'elektronik', 9000, 'hp.png', 'Melayani servis dengan kerusakan ringan, sedang dan berat.'),
(4, 'Servis Komputer', 'elektronik', 9000, 'pc.png', 'Melayani servis dengan kerusakan ringan, sedang dan berat.'),
(5, 'Servis Mesin Cuci', 'rumah tangga', 9000, 'mesincuci.png', 'Melayani servis dengan kerusakan ringan, sedang dan berat.'),
(6, 'Service Blender', 'rumah tangga', 9000, 'blender.png', 'Melayani servis dengan kerusakan ringan, sedang dan berat.'),
(7, 'Service Setrika', 'rumah tangga', 9000, 'setrika.png', 'Melayani servis dengan kerusakan ringan, sedang dan berat.'),
(8, 'Service AC', 'elektronik', 9000, 'ac.png', 'Melayani service AC dengan kerusakan ringan, sedang dan berat'),
(9, 'Service Kipas', 'Elektronik', 9000, 'kipas.png', 'Melayani Service Kipas dengan segala kerusakan.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `mekanik`
--
ALTER TABLE `mekanik`
 ADD PRIMARY KEY (`id_mekanik`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
 ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
 ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
