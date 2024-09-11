-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ghost_hacks
CREATE DATABASE IF NOT EXISTS `ghost_hacks` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ghost_hacks`;

-- Dumping structure for table ghost_hacks.apps
CREATE TABLE IF NOT EXISTS `apps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(30) NOT NULL,
  `pversion` varchar(30) NOT NULL,
  `pupdate` varchar(30) NOT NULL,
  `pstatus` varchar(30) NOT NULL,
  `phref` text,
  `ptype` text NOT NULL,
  `token` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table ghost_hacks.apps: ~1 rows (approximately)
REPLACE INTO `apps` (`id`, `pname`, `pversion`, `pupdate`, `pstatus`, `phref`, `ptype`, `token`) VALUES
	(2, 'csharp', '1.0', '', '', NULL, '', 'alpha');

-- Dumping structure for table ghost_hacks.tatus
CREATE TABLE IF NOT EXISTS `tatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tatus` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table ghost_hacks.tatus: ~1 rows (approximately)
REPLACE INTO `tatus` (`id`, `tatus`) VALUES
	(11, 'Online');

-- Dumping structure for table ghost_hacks.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `registered` timestamp NULL DEFAULT NULL,
  `expired` timestamp NULL DEFAULT NULL,
  `UID` varchar(60) DEFAULT NULL,
  `tlstatus` varchar(30) DEFAULT NULL,
  `product` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `reset_limit` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type` varchar(30) NOT NULL,
  `reseller` varchar(30) NOT NULL,
  `credits` int NOT NULL,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `hwid` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ghost_hacks.users: ~4 rows (approximately)
REPLACE INTO `users` (`id`, `username`, `password`, `registered`, `expired`, `UID`, `tlstatus`, `product`, `reset_limit`, `type`, `reseller`, `credits`, `token`, `hwid`) VALUES
	(1, 'rohan@512', 'rohan@512', NULL, NULL, NULL, NULL, 'Injector', '9999999', 'admin', 'BlueTriple4', 9999999, '444_444', NULL),
	(2, 'aryan', '8899', '2024-08-08 18:54:00', '2024-08-30 07:00:00', NULL, 'unband', NULL, NULL, 'cliente', 'BlueTriple4', 0, NULL, 'C8F3C28342B823F2D11758A9EBCE2B16080DE90D'),
	(3, 'aryan_reseller', '8899', '2024-08-08 18:55:00', '2024-11-16 19:55:00', NULL, 'unband', NULL, NULL, 'reseller', 'BlueTriple4', 999, NULL, NULL),
	(4, 'ter', '1', '2024-08-17 01:10:00', '2024-11-25 01:09:00', NULL, 'unband', NULL, NULL, 'reseller', 'BlueTriple4', 999, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
