-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2017 at 06:43 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rideout`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `book_id` varchar(100) NOT NULL,
  `ride_id` varchar(100) NOT NULL,
  `journey_id` varchar(100) NOT NULL,
  `seats_book` int(11) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `carowner`
--

CREATE TABLE IF NOT EXISTS `carowner` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `license_no` varchar(30) NOT NULL,
  `ph_no` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `confirm` tinyint(1) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `copassenger`
--

CREATE TABLE IF NOT EXISTS `copassenger` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `ph_no` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `confirm` varchar(30) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `journey`
--

CREATE TABLE IF NOT EXISTS `journey` (
  `journey_id` int(30) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `car_no` varchar(30) NOT NULL,
  `source` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `doj` date NOT NULL,
  `seats_avail` int(11) NOT NULL,
  PRIMARY KEY (`journey_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `journey`
--

INSERT INTO `journey` (`journey_id`, `email`, `car_no`, `source`, `destination`, `doj`, `seats_avail`) VALUES
(1, 'mohan@gmail.com', '1234', 'a', 'b', '1993-08-07', 2),
(2, 'mohan@gmail.com', '0987', 'q', 'd', '2012-12-12', 3),
(3, 'mohan@gmail.com', '1', 'hyderabad', 'utrakhand', '1993-12-13', 3),
(4, 'mohan@gmail.com', '2455', 'q', 'calicut', '2010-10-10', 2),
(5, 'mohan@gmail.com', '0987', 'd', 'b', '0000-00-00', 2),
(7, 'mohan@gmail.com', '2456', 'delhi', 'patna', '1993-08-07', 2),
(8, 'mohan@gmail.com', '2456', 'delhi', 'patna', '1993-08-07', 2),
(9, 'mohan@gmail.com', '2455', 'f', 'b', '0000-00-00', 2),
(10, 'mohan@gmail.com', '0987', 'delhi', 'b', '1993-08-07', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ride`
--

CREATE TABLE IF NOT EXISTS `ride` (
  `ride_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '100',
  `email` varchar(30) NOT NULL,
  `source` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `seats_avail` int(11) NOT NULL,
  `doj` date NOT NULL,
  PRIMARY KEY (`ride_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oauth_provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oauth_provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
