-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2018 at 02:22 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `hsn_code` int(11) NOT NULL,
  `deleted` int(1) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `hsn_code`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'CD ROM 1', 85467, 1, '2018-08-21 15:49:48', '2018-08-28 19:52:03', '2018-09-17 14:40:28', 1, 1, 1),
(2, 'hard drive ssd', 85466, 0, '2018-08-21 15:54:49', '2018-08-28 20:19:09', '0000-00-00 00:00:00', 1, 1, 0),
(3, 'Intel i5 gen 7', 454654, 0, '2018-08-24 15:05:10', '2018-08-29 17:22:09', '0000-00-00 00:00:00', 1, 1, 0),
(4, 'intel i7 8th gen processor', 454545, 1, '2018-08-24 15:05:46', '0000-00-00 00:00:00', '2018-08-24 17:09:18', 1, 0, 1),
(5, 'Keyboard', 58694, 0, '2018-09-17 14:14:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(6, 'CD ROM', 45697, 0, '2018-09-17 14:37:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(7, 'Mouse', 45896, 0, '2018-09-17 14:37:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_contact` varchar(10) NOT NULL,
  `gst_no` varchar(255) NOT NULL,
  `deleted` int(1) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_address`, `customer_email`, `customer_contact`, `gst_no`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(2, 'Chirag', 'Sachdev Nagar-2,C-block rad,Ulhasnagar-3', 'chirag@gmail.com', '8390166525', '55555', 0, '2018-09-04 18:34:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(3, 'Dhiraj', 'Ulhasnagar-1', 'dhiraj@gmail.com', '9168317739', '121212', 0, '2018-09-04 19:41:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(4, 'Latika', 'Ulhasnagar-3', 'lats@gmail.com', '709765456', '77777', 1, '2018-09-04 19:42:58', '0000-00-00 00:00:00', '2018-09-04 20:01:34', 1, 0, 1),
(5, 'Latika', 'Ulhasnagar-3', 'lats@gmail.com', '2000191828', '77777', 0, '2018-09-04 20:02:10', '2018-09-04 20:54:08', '0000-00-00 00:00:00', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `employee_contact` varchar(255) NOT NULL,
  `employee_email` varchar(255) NOT NULL,
  `employee_address` text NOT NULL,
  `employee_type` int(11) NOT NULL,
  `employee_password` varchar(255) NOT NULL,
  `deleted` int(1) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `employee_contact`, `employee_email`, `employee_address`, `employee_type`, `employee_password`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Chirag', '8390166525', 'chirag@gmail.com', 'daihaif\r\nfaofafji\r\nfaa', 1, '$2y$10$HKy35ndPwQOBeTmC5BTo4.SpkZNbLmP/XgnC/CojVEn5A7yEFiYD2', 0, '2018-08-17 12:26:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gst`
--

CREATE TABLE `gst` (
  `hsn_code` int(11) NOT NULL,
  `gst_rate` float NOT NULL,
  `wef` date NOT NULL,
  `deleted` int(1) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gst`
--

INSERT INTO `gst` (`hsn_code`, `gst_rate`, `wef`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `deleted_by`, `updated_by`) VALUES
(85467, 12, '2018-08-21', 0, '2018-08-21 15:49:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(85466, 12, '2018-08-21', 0, '2018-08-21 15:54:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(845678, 12, '2018-08-23', 0, '2018-08-21 16:04:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0),
(454654, 18, '2018-08-24', 0, '2018-08-24 15:05:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(454545, 18, '2018-08-24', 0, '2018-08-24 15:05:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(58694, 18, '2018-09-17', 0, '2018-09-17 14:14:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(45697, 7, '2018-09-17', 0, '2018-09-17 14:37:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(45896, 12, '2018-09-17', 0, '2018-09-17 14:37:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `eoq` int(5) NOT NULL,
  `deleted` int(1) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sale_quantity` int(1) NOT NULL,
  `discount` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_mode`
--

CREATE TABLE `payment_mode` (
  `paymode` int(11) NOT NULL,
  `paymode_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `eoq` int(11) NOT NULL DEFAULT '0',
  `additional_specification` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_extension` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `eoq`, `additional_specification`, `category_id`, `image_extension`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Ram', 0, '', 1, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-09-18 19:56:50', 1, 0, 1),
(2, '', 0, '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(3, '', 0, '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(4, 'RAM', 0, 'Hiii', 1, 'jpg', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(5, 'Drive ', 3, 'Nice', 2, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(6, 'Logitech keyboard', 5, 'Niceeeee', 5, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(8, 'i5 processor', 3, 'Niceeee!!!', 3, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(9, 'New Keyboard', 8, 'Bad', 5, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(10, 'i5 fast processor', 9, 'Bad', 3, 'jpg', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(11, 'Super Fast Drive!!!!! ', 2, 'Very Nice', 2, 'jpg', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_sale_rate`
--

CREATE TABLE `product_sale_rate` (
  `product_id` int(11) NOT NULL,
  `rate_of_sale` int(11) NOT NULL,
  `wef` date NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sale_rate`
--

INSERT INTO `product_sale_rate` (`product_id`, `rate_of_sale`, `wef`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 5000, '2018-09-11', 1, '2018-09-11 21:37:55', '0000-00-00 00:00:00', '2018-09-18 19:56:50', 1, 0, 1),
(4, 5000, '2018-09-17', 0, '2018-09-17 12:23:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(5, 2500, '2018-09-17', 0, '2018-09-17 14:13:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(6, 3000, '2018-09-17', 0, '2018-09-17 14:17:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(7, 4000, '2018-09-17', 0, '2018-09-17 14:18:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(8, 4000, '2018-09-17', 0, '2018-09-17 14:18:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(9, 8000, '2018-09-17', 0, '2018-09-17 14:25:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(10, 50000, '2018-09-18', 0, '2018-09-18 19:05:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(11, 1500, '2018-09-18', 0, '2018-09-18 20:06:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_supplier`
--

CREATE TABLE `product_supplier` (
  `product_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_supplier`
--

INSERT INTO `product_supplier` (`product_id`, `supplier_id`) VALUES
(1, 2),
(4, 2),
(5, 2),
(6, 4),
(6, 5),
(7, 2),
(7, 4),
(8, 2),
(8, 4),
(9, 4),
(9, 5),
(10, 2),
(10, 5),
(11, 4);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchase_id` int(11) NOT NULL,
  `date_of_purchase` date NOT NULL,
  `gst_type` int(11) NOT NULL,
  `deleted` int(1) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product`
--

CREATE TABLE `purchase_product` (
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rate_of_purchase` int(11) NOT NULL,
  `quantity_purchased` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_supplier`
--

CREATE TABLE `purchase_supplier` (
  `purchase_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `employee_type` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `access_rights` text NOT NULL,
  `deleted` int(1) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_of_sale` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `paymode` int(11) NOT NULL,
  `cheque_number` int(11) NOT NULL,
  `cheque_date` int(11) NOT NULL,
  `bank_name` int(11) NOT NULL,
  `deleted` int(1) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(11) NOT NULL,
  `gst-type` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `currency_append_mode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_address` text NOT NULL,
  `supplier_contact` varchar(10) NOT NULL,
  `supplier_email` varchar(255) NOT NULL,
  `gst_no` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_contact`, `supplier_email`, `gst_no`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '', '', '', '', '', 1, '2018-09-11 18:20:34', '0000-00-00 00:00:00', '2018-09-11 18:29:04', 1, 0, 1),
(2, 'Dhiraj', 'Rahul palace,Unr-1', '916837739', 'dhiraj2727@gmail.com', '77777', 0, '2018-09-11 18:27:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(4, 'Lats', 'UNR-3', '7030341030', 'lats@yahoo.com', '77778', 0, '2018-09-17 14:16:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(5, 'Varun', 'UNR-2', '8771820986', 'varunjhd@gmail.com', '14523', 0, '2018-09-17 14:16:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`sale_id`,`product_id`);

--
-- Indexes for table `payment_mode`
--
ALTER TABLE `payment_mode`
  ADD PRIMARY KEY (`paymode`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_sale_rate`
--
ALTER TABLE `product_sale_rate`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_supplier`
--
ALTER TABLE `product_supplier`
  ADD PRIMARY KEY (`product_id`,`supplier_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `purchase_product`
--
ALTER TABLE `purchase_product`
  ADD PRIMARY KEY (`purchase_id`,`product_id`);

--
-- Indexes for table `purchase_supplier`
--
ALTER TABLE `purchase_supplier`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`employee_type`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `gst_no` (`gst_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_mode`
--
ALTER TABLE `payment_mode`
  MODIFY `paymode` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_sale_rate`
--
ALTER TABLE `product_sale_rate`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
