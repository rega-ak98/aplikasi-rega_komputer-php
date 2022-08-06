-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Agu 2022 pada 13.05
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unas_mart`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Processor'),
(5, 'VGA'),
(7, 'Memory'),
(8, 'Paket PC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `harga` double NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `detail` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ketersediaan_stok` enum('habis','tersedia') CHARACTER SET utf8mb4 DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `nama`, `harga`, `foto`, `detail`, `ketersediaan_stok`) VALUES
(19, 5, 'VGA CARD VURRION ATI RADEON R7 350 4GB DDR5 128BIT ', 1300000, 'XfsXc6D6nI.jpg', ' Specification :\r\n\r\n• Vurrion Type : R7 350\r\n• Memory : 4GB GDDR5\r\n• Memory Clock : 4000 MHz\r\n• Memory Interface : 128-bit\r\n• GPU Clock : 780 MHz\r\n• Standard Display Connectors : DVI-D/ HDMI/ DisplayPort VGA\r\n• Cooling System : Single Fan', ''),
(20, 5, 'NVIDIA Geforce RTX 3070 GPU VGA RTX3070 Graphics Card', 8000000, 'NL6zBeKEfu.jpg', 'MODEL NAME : GeForce RTX™ 3070 VENTUS 3X OC\r\nGRAPHICS PROCESSING UNIT : NVIDIA® GeForce RTX™ 3070\r\nINTERFACE : PCI Express® Gen 4\r\nCORES : 5888 Units\r\nCORE CLOCKS : Boost: 1755 MHz\r\nMEMORY SPEED : 14 Gbps\r\nMEMORY : 8GB GDDR6\r\nMEMORY BUS : 256-bit\r\nOUTPUT : DisplayPort x 3 (v1.4a) / HDMI 2.1 x1\r\nHDCP SUPPORT : Y\r\nPOWER CONSUMPTION : 220W\r\nPOWER CONNECTORS : 8-pin X2\r\nRECOMMENDED PSU : 650W\r\nCARD DIMENSION (MM) : 232 x 124 x 52mm\r\nWEIGHT (CARD / PACKAGE) : 832g / 1255g\r\nDIRECTX VERSION SUPPORT : 12API\r\nOPENGL VERSION SUPPORT : 4.6\r\nMAXIMUM DISPLAYS : 4\r\nVR READY : Y\r\nG-SYNC® TECHNOLOGY : Y\r\nADAPTIVE VERTICAL SYNC : Y\r\nDIGITAL MAXIMUM RESOLUTION : 7680x4320', 'tersedia'),
(21, 7, 'Seagate One Touch Hardisk Eksternal 2TB USB3.0 - Perak', 1100000, 'FqjzlduCPY.png', 'Form Factor: 2.5Inch\r\nInterface: USB3.0\r\nKapasitas: 2TB\r\nSupport OS Windows &amp; Mac Tanpa Perlu Format Ulang\r\nLapisan logam bertekstur sesuai dengan elemen gaya hidup modern.\r\nFitur Auto Backup (Perlu Install Seagate Toolkit)\r\nFitur Password (Perlu Install Seagate Toolkit)\r\nGaransi Resmi 3 Tahun\r\nGaransi Rescue 3 Tahun\r\n\r\nIn The Box:\r\n- HDD One Touch\r\n- Kabel USB3.0\r\n- User Guide', 'tersedia'),
(22, 7, 'Samsung SSD 870 EVO 500GB SATA III Internal SSD SATA3', 830000, 'YHhKD1Hq28.jpg', 'Specifications :\r\n- Product Type : 870 EVO SATA 2.5&quot; SSD\r\n- Capacity : 500GB\r\n- Interface : SATA 6 Gbps Interface\r\n- Compatibility : Windows10/8/7/Server 2003 (32 bit and 64 bit), Vista (SP1 and above), XP (SP2 and above), MAC OSX and Linux\r\n- Dimension (WxHxD) : 3.94&quot; X 2.75 &quot; X 0.27&quot;\r\n- Weight : 89g.\r\n- Performance : Speed Read/write speeds of up to 560/530 MB/s\r\n- Encryption : Class 0 (AES 256) TCG/Opal v2.0, MS eDrive (IEEE1667)\r\n- Type Interface : SATA 6 Gb/s Interface, compatible with SATA 3 Gb/s &amp; SATA 1.5 Gb/s interface\r\n- Usage Application : Client PCs / Laptops\r\n- Sequential Read Speed : Up to 560 MB/s Sequential Read\r\n- Sequential Write Speed : Up to 530 MB/s Sequential Write\r\n- Cache Memory : Samsung 512 MB Low Power DDR4 SDRAM', 'tersedia'),
(23, 1, 'AMD Ryzen 5 5600 6 Core 12 Thread AM4 Processor', 2500000, 'EfwFFswEgo.jpg', 'SPECIFICATION :\r\nPlatform\r\nDesktop\r\nMarket Segment\r\nMainstream Desktop\r\nProduct Family\r\nAMD Ryzen™ Processors\r\nProduct Line\r\nAMD Ryzen™ 5 Desktop Processors\r\nConsumer Use\r\nYes\r\nRegional Availability\r\nGlobal, China, NA, EMEA, APJ, LATAM\r\nFormer Codename\r\n&quot;Vermeer&quot;\r\nArchitecture\r\n&quot;Zen 3&quot;\r\n# of CPU Cores\r\n6', 'tersedia'),
(24, 1, 'Processor Intel Core I5-11400F Box 2.6GHz LGA1200 - Intel I5 11400F', 2190000, '6XtYxj1H5g.jpg', 'Spesifikasi CPU\r\nJumlah Inti : 6\r\nJumlah Untaian : 12\r\nFrekuensi Turbo Maks : 4.40 GHz\r\nIntel® Turbo Boost Technology 2.0 Frequency‡ : 4.40 GHz\r\nFrekuensi Dasar Prosesor : 2.60 GHz\r\nCache : 12 MB Intel® Smart Cache\r\nKecepatan Bus : 8 GT/s\r\nTDP : 65 W', 'tersedia'),
(25, 8, 'BOX V33.0 GeForce RTX 3060 - Paket PC Rakitan', 17000000, '4BERwz4hYf.png', 'SPESIFIKASI :\r\nGRAPHIC : NVIDIA GEFORCE RTX 3060\r\nPROCESSOR : Ryzen 5 5600X\r\nCHIPSET : AMD B550M\r\nMEMORY : PC25600 3200 MHZ 2X8GB RGB\r\nSTORAGE : SSD NVME 512GB + HDD 2TB 7200 RPM\r\nPOWER SUPPLY : 600W 80+ GOLD CERTIFIED\r\nCOOLING SYSTEM : JONSBO CR-1000GT ARGB + 2 BUAH 12CM ARGB FAN + 1 BUAH 12CM SYSTEM FAN\r\n\r\n\r\nBENEFIT:\r\n-Gratis biaya rakit.\r\n-Gratis biaya instalasi OS. (hanya OS original).\r\n-Komponen yang ditawarkan adalah seri terbaru di kelasnya', 'tersedia'),
(26, 8, 'BOX V43.0 GeForce RTX 3070 - Paket PC Rakitan', 25000000, 'CmMjztadxz.png', 'SPESIFIKASI :\r\nGRAPHIC : NVIDA GEFORCE RTX 3070\r\nPROCESSOR : AMD RYZEN 5800X\r\nCHIPSET : AMD B550\r\nMEMORY : PC25600 3200 MHZ 2X16GB RGB\r\nSTORAGE : SSD NVME 512GB + HDD 2TB 7200 RPM\r\nPOWER SUPPLY : 850W 80+ GOLD CERTIFIED\r\nCOOLING SYSTEM : DEEPCOOL GAMMAXX L240 ARGB + 3 BUAH 12CM ARGB FAN + 1 BUAH 14CM SYSTEM FAN\r\n\r\n\r\nBENEFIT:\r\n-Gratis biaya rakit.\r\n-Gratis biaya instalasi OS. (hanya OS original).\r\n-Komponen yang ditawarkan adalah seri terbaru di kelasnya', 'tersedia'),
(27, 8, 'BOX V11.2 GeForce GTX 1050 Ti - Paket PC Rakitan', 7500000, 'Ghd1Bn25PS.png', 'SPESIFIKASI :\r\nGRAPHIC : NVIDIA GEFORCE GTX 1050 Ti\r\nPROCESSOR : INTEL CORE I3-10105F\r\nCHIPSET : INTEL H410M\r\nMEMORY : PC21330 2666 MHZ 2X8GB\r\nSTORAGE : SSD 256GB\r\nPOWER SUPPLY : 400W 80+ BRONZE CERTIFIED\r\nCOOLING SYSTEM : 4 BUAH 12CM RGB FAN', 'tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2a$12$vr9EL/jYwA32lHeQaeMOjuwmkQE.envjA2.kj2zCxfWQ3745NBCWm');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`(191)),
  ADD KEY `kategori_produk` (`kategori_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `kategori_produk` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
