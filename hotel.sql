-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 08, 2023 at 08:19 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capacity` int(11) NOT NULL DEFAULT '2',
  `price` float NOT NULL,
  `image` varchar(50) COLLATE ucs2_persian_ci NOT NULL,
  `explain` text COLLATE ucs2_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=ucs2 COLLATE=ucs2_persian_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `capacity`, `price`, `image`, `explain`) VALUES
(7, 2, 300, 'images/room2.jpg', ''),
(2, 2, 200, 'images/room4.jpg', 'with bed room'),
(8, 2, 200, 'images/room3.jpg', ''),
(9, 2, 500, 'images/room1.jpg', ''),
(11, 2, 300, 'images/room1.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `room_rezerv`
--

DROP TABLE IF EXISTS `room_rezerv`;
CREATE TABLE IF NOT EXISTS `room_rezerv` (
  `id_rezerv` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `rezerv` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id_rezerv`),
  KEY `room_id` (`room_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2 COLLATE=ucs2_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE ucs2_persian_ci NOT NULL,
  `last_name` varchar(50) COLLATE ucs2_persian_ci NOT NULL,
  `national_code` varchar(50) COLLATE ucs2_persian_ci NOT NULL,
  `email` varchar(50) COLLATE ucs2_persian_ci NOT NULL,
  `phone_number` varchar(50) COLLATE ucs2_persian_ci NOT NULL,
  `password` varchar(50) COLLATE ucs2_persian_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `national_code` (`national_code`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=ucs2 COLLATE=ucs2_persian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `national_code`, `email`, `phone_number`, `password`, `is_admin`) VALUES
(7, 'sima', 'skandari', '123456', 'sima@gmail.com', '123456', '123456', 1),
(6, 'ali', 'shams', '3150629624', 'ali@gmail.com', '09922417276', '123456', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
