-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 02, 2014 at 06:42 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `daneshjoonews`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `text` longtext COLLATE utf8_persian_ci NOT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `email`, `text`, `flag`) VALUES
(1, 'ashkanmatai', 'ashkan.matai@yahoo.com', 'salam test', 1),
(2, 'اشکان مطاعی', 'ashkan.matai@yahoo.com', 'تست', 1),
(3, 'تست', 'frb@yahoo.com', 'تست', 1),
(4, 'تست', 'ashkan.matai@yahoo.com', 'js', 1),

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE IF NOT EXISTS `tbl_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_persian_ci NOT NULL,
  `short_text` text COLLATE utf8_persian_ci NOT NULL,
  `long_text` longtext COLLATE utf8_persian_ci NOT NULL,
  `date` text COLLATE utf8_persian_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `pic` text COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `title`, `short_text`, `long_text`, `date`, `name`, `pic`) VALUES
(1, '1مسابقات شنا', 'شنای قهرمانی جام ملت ها1', 'شنای قهرمانی جام ملت ها1\r\n\r\nشنای قهرمانی جام ملت هاشنای قهرمانی جام ملت ها\r\nشنای قهرمانی جام ملت ها\r\nشنای قهرمانی جام ملت ها\r\nشنای قهرمانی جام ملت ها\r\nشنای قهرمانی جام ملت هاشنای قهرمانی جام ملت ها\r\nشنای قهرمانی جام ملت هار\r\nشنای قهرمانی جام ملت ها\r\nشنای قهرمانی جام ملت هاشنای قهرمانی جام ملت هاشنای قهرمانی جام ملت ها', '13/3/1392', '1اشکان مطاعی', ''),
(2, 'تیم طراحی سایت هگمتانه', 'تیم طراحی سایت هگمتانه           ', '        آدرس وب سایت\r\hegmataneh.ir\r\hegmataneh.com\r\hegmataneh.ir        ', '۱۳۹۲/۱۰/۳۰', 'اشکان مطاعی', ''),
(5, 'تست', 'تست          ', 'تس\r\n        ', '۱۳۹۲/۱۰/۳۰', 'هگمتانه', ''),
(6, 'تست جدید', 'جدی          ', 'جدید        ', '۱۳۹۲/۱۱/۲', 'هگمتانه', ''),
(7, 'تست 2', 'تست          ', '2ت        ', '۱۳۹۲/۱۱/۲', 'هگمتانه', ''),
(8, 'هثذ', '          ', '        ', '۱۳۹۲/۱۱/۲', 'هگمتانه', ''),
(9, 'fvfv', 'fv', 'fv', '۱۳۹۲/۱۱/۲', 'هگمتانه', ''),
(14, 'new11', '10 بهمن تولد هگمتانه22 1                                     1                  sf         ', 'تولد 1221', '۱۳۹۲/۱۱/۶', 'هگمتانه', 'c9f1bdaaabee12d25700ebb322486e75m.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `family` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_persian_ci NOT NULL,
  `level` int(1) NOT NULL,
  `code` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `family`, `username`, `password`, `email`, `level`, `code`) VALUES
(1, 'هگمتانه', '18', 'admin', '123', 'admin@yahoo.com', 1, ''),
(2, 'اشکان  ', 'مطاعی', 'user', '1234', 'user@yahoo.com', 2, ''),
(3, 'ashkan', 'matai', 'ashkan', '1234', 'ashkan.matai@yahoo.com', 2, ''),
(4, 'مهدی', 'شرافت', 'mehdi', '1234', 'mehdi.sherafat@yahoo.com', 2, ''),
(5, 'user', 'user', 'vvvv', '123', 'user@yahoo.com', 2, ''),
(6, 'new', 'new', 'new', 'new', 'new', 1, ''),

