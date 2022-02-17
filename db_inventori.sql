-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.22-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_inventori
DROP DATABASE IF EXISTS `db_inventori`;
CREATE DATABASE IF NOT EXISTS `db_inventori` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_inventori`;

-- Dumping structure for table db_inventori.barang
DROP TABLE IF EXISTS `barang`;
CREATE TABLE IF NOT EXISTS `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(80) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_inventori.barang: ~1 rows (approximately)
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT IGNORE INTO `barang` (`id`, `kode_barang`, `nama_barang`, `stok`, `satuan`) VALUES
	(3, '80488224', 'Dancow', 12, 'pcs');
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;

-- Dumping structure for table db_inventori.customer
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_inventori.customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table db_inventori.data_toko
DROP TABLE IF EXISTS `data_toko`;
CREATE TABLE IF NOT EXISTS `data_toko` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_toko` varchar(80) DEFAULT NULL,
  `nama_pemilik` varchar(80) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_inventori.data_toko: ~1 rows (approximately)
/*!40000 ALTER TABLE `data_toko` DISABLE KEYS */;
INSERT IGNORE INTO `data_toko` (`id`, `nama_toko`, `nama_pemilik`, `no_telepon`, `alamat`) VALUES
	(1, 'Toko Maju terus pantang mundur', 'Kripik Indomart', '081381100046', 'Jalan panjang menuju langit biru');
/*!40000 ALTER TABLE `data_toko` ENABLE KEYS */;

-- Dumping structure for table db_inventori.detail_keluar
DROP TABLE IF EXISTS `detail_keluar`;
CREATE TABLE IF NOT EXISTS `detail_keluar` (
  `no_keluar` varchar(25) DEFAULT NULL,
  `nama_barang` varchar(80) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_inventori.detail_keluar: ~0 rows (approximately)
/*!40000 ALTER TABLE `detail_keluar` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_keluar` ENABLE KEYS */;

-- Dumping structure for table db_inventori.detail_terima
DROP TABLE IF EXISTS `detail_terima`;
CREATE TABLE IF NOT EXISTS `detail_terima` (
  `no_terima` varchar(25) DEFAULT NULL,
  `nama_barang` varchar(80) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_inventori.detail_terima: ~0 rows (approximately)
/*!40000 ALTER TABLE `detail_terima` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_terima` ENABLE KEYS */;

-- Dumping structure for table db_inventori.penerimaan
DROP TABLE IF EXISTS `penerimaan`;
CREATE TABLE IF NOT EXISTS `penerimaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_terima` varchar(25) DEFAULT NULL,
  `tgl_terima` varchar(25) DEFAULT NULL,
  `jam_terima` varchar(10) DEFAULT NULL,
  `nama_supplier` varchar(80) DEFAULT NULL,
  `nama_petugas` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `no_terima` (`no_terima`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_inventori.penerimaan: ~0 rows (approximately)
/*!40000 ALTER TABLE `penerimaan` DISABLE KEYS */;
/*!40000 ALTER TABLE `penerimaan` ENABLE KEYS */;

-- Dumping structure for table db_inventori.pengeluaran
DROP TABLE IF EXISTS `pengeluaran`;
CREATE TABLE IF NOT EXISTS `pengeluaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_keluar` varchar(25) DEFAULT NULL,
  `tgl_keluar` varchar(25) DEFAULT NULL,
  `jam_keluar` varchar(10) DEFAULT NULL,
  `nama_customer` varchar(80) DEFAULT NULL,
  `nama_petugas` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `no_keluar` (`no_keluar`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_inventori.pengeluaran: ~0 rows (approximately)
/*!40000 ALTER TABLE `pengeluaran` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengeluaran` ENABLE KEYS */;

-- Dumping structure for table db_inventori.pengguna
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE IF NOT EXISTS `pengguna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_inventori.pengguna: ~1 rows (approximately)
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;
INSERT IGNORE INTO `pengguna` (`id`, `kode`, `nama`, `username`, `password`) VALUES
	(1, 'PGN17', 'Administrator', 'admin', 'admin');
/*!40000 ALTER TABLE `pengguna` ENABLE KEYS */;

-- Dumping structure for table db_inventori.petugas
DROP TABLE IF EXISTS `petugas`;
CREATE TABLE IF NOT EXISTS `petugas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_inventori.petugas: ~1 rows (approximately)
/*!40000 ALTER TABLE `petugas` DISABLE KEYS */;
INSERT IGNORE INTO `petugas` (`id`, `kode`, `nama`, `username`, `password`) VALUES
	(4, 'PETUGAS - 38', 'petugas01', 'PTGS38', 'petugas01');
/*!40000 ALTER TABLE `petugas` ENABLE KEYS */;

-- Dumping structure for table db_inventori.supplier
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_inventori.supplier: ~1 rows (approximately)
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT IGNORE INTO `supplier` (`id`, `kode`, `nama`, `email`, `telepon`, `alamat`) VALUES
	(2, 'SPL501', 'MAJU KOMPUTER', 'majukomputer@web.com', '085855312455', 'Jl. maju Komputer');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
