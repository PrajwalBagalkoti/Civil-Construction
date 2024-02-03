-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 30, 2024 at 12:16 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cost_estimation`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_labour`
--

CREATE TABLE IF NOT EXISTS `add_labour` (
  `labour_head` varchar(50) NOT NULL,
  `city` varchar(65) NOT NULL,
  `address` varchar(60) NOT NULL,
  `no_of_workers` varchar(60) NOT NULL,
  `mobile_no` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book_request`
--

CREATE TABLE IF NOT EXISTS `book_request` (
  `house_id` varchar(50) NOT NULL,
  `cost` varchar(59) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `book_date1` varchar(50) NOT NULL,
  `booking_status` varchar(50) NOT NULL,
  `sale_status` varchar(56) NOT NULL,
  `contractor` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contractor_info`
--

CREATE TABLE IF NOT EXISTS `contractor_info` (
  `contractor_name` varchar(50) NOT NULL,
  `experience` varchar(60) NOT NULL,
  `city` varchar(70) NOT NULL,
  `address` varchar(70) NOT NULL,
  `contact` varchar(70) NOT NULL,
  `photo` varchar(79) NOT NULL,
  `email` varchar(79) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contractor_request`
--

CREATE TABLE IF NOT EXISTS `contractor_request` (
  `request_by` varchar(56) NOT NULL,
  `contractor` varchar(70) NOT NULL,
  `description` varchar(70) NOT NULL,
  `contact` varchar(70) NOT NULL,
  `cust_id` varchar(70) NOT NULL,
  `request_date` varchar(70) NOT NULL,
  `status` varchar(70) NOT NULL,
  `cost_estimation` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(59) NOT NULL,
  `password` varchar(69) NOT NULL,
  `utype` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `utype`) VALUES
('admin', '963963', 'admin'),
('admin', '963963', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `market_price`
--

CREATE TABLE IF NOT EXISTS `market_price` (
  `raw_material` varchar(50) NOT NULL,
  `company_name` varchar(69) NOT NULL,
  `uom` varchar(67) NOT NULL,
  `cost` varchar(60) NOT NULL,
  `size` varchar(60) NOT NULL,
  `location` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `fname` varchar(40) NOT NULL,
  `lname` varchar(56) NOT NULL,
  `city` varchar(56) NOT NULL,
  `address` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `contact` varchar(70) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`fname`, `lname`, `city`, `address`, `email`, `contact`, `password`) VALUES
('nitya', 'p', 'vidyanagar', 'hubli', 'nity123@gmail.com', '9876543207', '909090'),
('nitya', 'p', 'vidyanagar', 'hubli', 'nity123@gmail.com', '9876543207', '909090');

-- --------------------------------------------------------

--
-- Table structure for table `sale_house`
--

CREATE TABLE IF NOT EXISTS `sale_house` (
  `house_type` varchar(50) NOT NULL,
  `area` varchar(59) NOT NULL,
  `city` varchar(60) NOT NULL,
  `address` varchar(60) NOT NULL,
  `facilities` varchar(69) NOT NULL,
  `photo` varchar(76) NOT NULL,
  `cost` varchar(60) NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `sale_status` varchar(79) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_provider`
--

CREATE TABLE IF NOT EXISTS `service_provider` (
  `service_type` varchar(50) NOT NULL,
  `sp_name` varchar(69) NOT NULL,
  `city` varchar(69) NOT NULL,
  `addres` varchar(70) NOT NULL,
  `pincode` varchar(70) NOT NULL,
  `contact` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uploadimage`
--

CREATE TABLE IF NOT EXISTS `uploadimage` (
  `name` varchar(50) NOT NULL,
  `image` varchar(59) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `upload_blue_print`
--

CREATE TABLE IF NOT EXISTS `upload_blue_print` (
  `construction_type` int(11) NOT NULL,
  `home_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
