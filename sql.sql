-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2020 at 05:26 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` varchar(5) NOT NULL,
  `cat_name` varchar(10) NOT NULL,
  `cat_note` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_note`) VALUES
('10', 'Underwears', 'klevin klain only available'),
('20', 'Tshirts', ''),
('30', 'boots', 'only nikes and adidas'),
('40', 'jeans', 'craiser jeans, and desiel'),
('50', 'leather', ''),
('60', 'hats', 'Hip hop hats');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` varchar(10) NOT NULL,
  `cust_name` varchar(10) NOT NULL,
  `last_name` varchar(10) NOT NULL,
  `addrres` varchar(10) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `country` varchar(12) NOT NULL,
  `cust_birthday` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `cust_name`, `last_name`, `addrres`, `postal_code`, `city`, `country`, `cust_birthday`) VALUES
('1', 'ayman', 'saada', '20', '2548', 'shefaamr', 'israel', '2020-07-17'),
('11', 'alex', 'Futkiste', 'Obere ', '12109', 'paris', 'France', '1900-20-29'),
('2', 'Alfreds', 'Futterkist', 'Obere Str.', '12209', 'Berlin', 'Germany', '2000-10-29'),
('3', 'Berglunds', 'snabbköp', '120 Hanove', 'WA1 1D', 'London', 'UK', '1980-09-10'),
('4', 'Consolidat', 'Holdings', 'Gardens 12', 'WX1 6LT', 'London', 'UK', '1900-05-26'),
('5', 'Dumonde', 'entier', '67, rue de', '44000', 'Nantes', 'France', NULL),
('6', 'Comércio', 'Mineiro', 'Lusíadas, ', '5432-043', 'São Paulo', 'France', NULL),
('7', 'moshe', 'alfred', 'hadar', '5464', 'haifa', 'israel', '1999-02-25'),
('8', 'shahar', 'bengar', '20d', 'ash-20', 'haifa', 'israel', NULL),
('9', 'oday', 'nasrawi', 'fd3', '2461', 'nazarerth', 'israel', '1999-10-29');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employe_id` varchar(5) NOT NULL,
  `employe_name` varchar(10) NOT NULL,
  `employe_lastname` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `phone_number` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employe_id`, `employe_name`, `employe_lastname`, `Email`, `phone_number`) VALUES
('01', 'Nancy', 'Davolio', 'nancy@gmail.com', '05264832'),
('02', 'Fuller', 'Andrew', 'fuller@gmail.com', '052469715'),
('03', 'Leverling', 'Janet', 'levrling@gmail.com', '052487931'),
('04', 'Peacock', 'Margaret	', 'peacock@gmail.com', '05597468'),
('05', 'Buchana', 'Steven', 'steven@gmail.com', '05048762'),
('06', 'Suyama	', 'Michael', 'micheael@gmail.com', '05054796'),
('07', 'King', 'Robert', 'robert@gmail.com', '05846987'),
('08', 'Callahan', 'Laura', 'callahan@gmail.com', '05258746'),
('09', 'West', 'Adam	', 'adam@gmail.com', '05897468'),
('11', 'Dodsworth', 'Anne	', 'anne@gmail.com', '05223486');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` varchar(5) NOT NULL,
  `order_id` varchar(5) NOT NULL,
  `product_id` varchar(5) NOT NULL,
  `Amount` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `order_id`, `product_id`, `Amount`) VALUES
('100', '123', '12', '1'),
('101', '124', '13', '2'),
('102', '125', '14', '1'),
('103', '126', '15', '6'),
('104', '127', '16', '1'),
('105', '128', '17', '4'),
('106', '129', '12', '1'),
('107', '131', '13', '5'),
('108', '132', '14', '1'),
('109', '133', '15', '2');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` varchar(5) NOT NULL,
  `cust_id` varchar(5) NOT NULL,
  `employe_id` varchar(5) NOT NULL,
  `order_date` datetime NOT NULL,
  `notes` varchar(30) DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `cust_id`, `employe_id`, `order_date`, `notes`, `delivery_date`) VALUES
('123', '1', '01', '2020-02-11 16:45:22', 'to dilever it fast', '2020-03-11 18:45:22'),
('124', '2', '02', '2020-01-23 16:45:22', NULL, NULL),
('125', '3', '03', '2020-03-12 16:45:22', 'it a big order', '2020-05-12 16:15:22'),
('126', '4', '04', '2020-07-28 16:45:22', NULL, NULL),
('127', '5', '05', '2020-04-01 16:45:22', 'dilver at home', '2020-12-11 14:45:12'),
('128', '6', '06', '2020-08-03 16:45:22', NULL, NULL),
('129', '7', '07', '2020-10-06 16:45:22', 'delivere at work', '2020-05-09 19:45:23'),
('131', '8', '08', '2020-10-08 16:45:22', NULL, NULL),
('132', '9', '09', '2020-10-10 16:45:22', 'to be protected', NULL),
('133', '11', '11', '2020-09-13 16:45:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` varchar(5) NOT NULL,
  `product_name` varchar(10) NOT NULL,
  `cat_id` varchar(5) NOT NULL,
  `product_price` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `cat_id`, `product_price`) VALUES
('12', 'piere card', '20', '50.25'),
('13', 'craiser', '40', '60.50'),
('14', 'adidas', '60', '20.99'),
('15', 'puma', '30', '30.50'),
('16', 'leatherjac', '50', '68.10'),
('17', 'klevin kla', '10', '15.80'),
('321', 'levis', '20', '30.30'),
('323', 'castro', '10', '40.50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employe_id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `employe_id` (`employe_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`employe_id`) REFERENCES `employees` (`employe_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
