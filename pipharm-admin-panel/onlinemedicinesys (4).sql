-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2024 at 05:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinemedicinesys`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(70) NOT NULL,
  `last_name` varchar(70) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `admin_img` varchar(200) NOT NULL,
  `admin_type` varchar(20) NOT NULL,
  `admin_pass` text NOT NULL,
  `domain` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `admin_email`, `phone`, `admin_img`, `admin_type`, `admin_pass`, `domain`) VALUES
(8, 'Papiya', 'Sultana', 'papiyasultana@gmail.com', '01456789123', '1706626069.jpg', 'admin', '$2y$10$SCF.VW8w74ruqc102jJBYOpXGhBwNxPDSZfF8RKBYzuoEISBfYHhi', NULL),
(19, 'test', 'admin', 'testadmin@gmail.com', '01614756856', '1706281135.jpg', 'admin', '$2y$10$zOfDdxEFCuOR1zso.2BYsenfyo1bBoeS72HduuhGvWrCFBKGPdrR2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cartitem`
--

CREATE TABLE `cartitem` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float(7,2) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `pharmacy_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cartitem`
--

INSERT INTO `cartitem` (`id`, `prod_id`, `qty`, `price`, `cust_id`, `pharmacy_id`) VALUES
(48, 1825, 1, 2.00, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_image` varchar(30) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `cat_image`, `slug`, `admin_id`, `is_featured`, `created_date`) VALUES
(217, 'Medicine & Treatment100', '1693772190.jpg', 'medicine-&-treatment', 1, 0, '2023-12-30 15:24:59'),
(218, 'Vitamnis & Supliments', '1693772239.jpg', 'vitamnis-&-supliments', 1, 0, '2023-12-30 15:25:02'),
(219, 'Beauty & Health', '1693772269.jpg', 'beauty-&-health', 1, 0, '2023-12-30 15:25:06'),
(220, 'Diabetes & Blood Pressure', '1693772327.jpg', 'diabetes-&-blood-pressure', 1, 0, '2023-12-30 15:25:09'),
(221, 'Covid-19', '1693772362.jpg', 'covid-19', 1, 0, '2023-12-30 15:25:13'),
(222, 'General Drugs', '1693772399.jpg', 'general-drugs', 1, 0, '2023-12-30 15:25:17'),
(223, 'Skin Care', '1693772487.jpg', 'skin-care', 1, 0, '2023-12-30 15:25:20'),
(224, 'Others', '1693772588.jpg', 'others', 1, 0, '2023-12-30 15:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL,
  `order_code` varchar(25) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subTotal` decimal(11,2) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `order_code`, `prod_id`, `qty`, `subTotal`, `created_date`) VALUES
(3, 'ORD@10-5-1702823925', 1815, 3, 3.00, '2024-01-27 11:04:47'),
(4, 'ORD@10-5-1702823925', 1817, 3, 6.00, '2024-01-27 11:04:47'),
(7, 'ORD@10-5-1704983802', 1815, 3, 3.00, '2024-01-27 11:04:47'),
(8, 'ORD@10-5-1704983802', 1817, 3, 6.00, '2024-01-27 11:04:47'),
(9, 'ORD@10-5-1705323326', 1815, 1, 2.00, '2024-01-27 11:04:47'),
(10, 'ORD@10-5-1705323461', 1815, 1, 2.00, '2024-01-27 11:04:47'),
(11, 'ORD@11-5-1706793806', 1825, 15, 30.00, '2024-02-01 13:23:26'),
(12, 'ORD@11-5-1706795218', 1825, 4, 8.00, '2024-02-01 13:46:58'),
(13, 'ORD@11-5-1706795316', 1825, 1, 2.00, '2024-02-01 13:48:36'),
(14, 'ORD@11-5-1706795403', 1839, 1, 0.00, '2024-02-01 13:50:03'),
(15, 'ORD@11-5-1706798256', 1825, 1, 2.00, '2024-02-01 14:37:36'),
(16, 'ORD@11-5-1706798398', 1825, 1, 2.00, '2024-02-01 14:39:58'),
(17, 'ORD@11-5-1706798487', 1837, 1, 20.00, '2024-02-01 14:41:27'),
(18, 'ORD@11-5-1706798526', 1825, 1, 2.00, '2024-02-01 14:42:06'),
(19, 'ORD@11-5-1706799637', 1825, 1, 2.00, '2024-02-01 15:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_code` varchar(25) NOT NULL,
  `pharmacy_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `total_items` int(11) NOT NULL,
  `sale_amount` decimal(11,2) NOT NULL,
  `tax` decimal(11,2) NOT NULL,
  `shipping_cost` decimal(11,2) NOT NULL,
  `shipping_address` varchar(200) NOT NULL,
  `delivery_option` varchar(255) NOT NULL,
  `delivery_status` varchar(20) NOT NULL,
  `order_status` varchar(25) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `order_type` varchar(200) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `pharmacy_id`, `cust_id`, `contact_no`, `total_items`, `sale_amount`, `tax`, `shipping_cost`, `shipping_address`, `delivery_option`, `delivery_status`, `order_status`, `payment_method`, `order_type`, `created_date`) VALUES
(3, 'ORD@10-5-1704983802', 5, 11, '', 2, 9.00, 0.00, 0.00, '', '', 'packaging', 'approved', 'card', 'online', '2024-01-27 11:08:33'),
(4, 'ORD@10-5-1705323326', 5, 11, '', 1, 2.00, 0.00, 0.00, '', '', 'pending', 'pending', 'card', 'online', '2024-01-27 11:08:33'),
(5, 'ORD@10-5-1705323461', 5, 11, '', 1, 2.00, 0.00, 0.00, '', '', 'completed', 'completed', 'card', 'online', '2024-02-01 05:52:58'),
(6, 'ORD@11-5-1706793806', 5, 11, '', 1, 30.00, 0.00, 0.00, '', '', 'pending', 'pending', 'card', 'online', '2024-02-01 13:23:26'),
(7, 'ORD@11-5-1706795218', 5, 11, '', 1, 8.00, 0.00, 0.00, '', '', 'pending', 'pending', 'card', 'online', '2024-02-01 13:46:58'),
(8, 'ORD@11-5-1706795316', 5, 11, '', 1, 2.00, 0.00, 0.00, '', '', 'pending', 'pending', 'card', 'online', '2024-02-01 13:48:36'),
(9, 'ORD@11-5-1706795403', 5, 11, '', 1, 0.00, 0.00, 0.00, '', '', 'pending', 'pending', 'card', 'online', '2024-02-01 13:50:03'),
(10, 'ORD@11-5-1706798256', 5, 11, '', 1, 2.00, 0.00, 0.00, '', '', 'pending', 'pending', 'card', 'online', '2024-02-01 14:37:36'),
(11, 'ORD@11-5-1706798398', 5, 11, '', 1, 2.00, 0.00, 0.00, '', '', 'pending', 'pending', 'card', 'online', '2024-02-01 14:39:58'),
(12, 'ORD@11-5-1706798487', 5, 11, '', 1, 20.00, 0.00, 0.00, '', '', 'pending', 'pending', 'card', 'online', '2024-02-01 14:41:27'),
(13, 'ORD@11-5-1706798526', 5, 11, '', 1, 2.00, 0.00, 0.00, '', '', 'pending', 'pending', 'card', 'online', '2024-02-01 14:42:06'),
(14, 'ORD@11-5-1706799637', 5, 11, '', 1, 2.00, 0.00, 0.00, '', '', 'pending', 'pending', 'card', 'online', '2024-02-01 15:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_address`
--

CREATE TABLE `pharmacy_address` (
  `address_id` int(11) NOT NULL,
  `pharmacy_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `zip_code` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pharmacy_address`
--

INSERT INTO `pharmacy_address` (`address_id`, `pharmacy_id`, `address`, `country`, `zip_code`, `state`, `city`, `latitude`, `longitude`, `created_at`) VALUES
(1, 5, 'street', 'country', 'zipcode', 'state', 'city', 23.764470999086, 90.38846974291, '2024-01-27 14:34:32'),
(3, 7, ' ', ' ', ' ', ' ', ' ', 0, 0, '2024-01-20 14:46:20'),
(4, 8, ' ', ' ', ' ', ' ', ' ', 0, 0, '2024-01-20 14:55:19'),
(5, 9, ' ', ' ', ' ', ' ', ' ', 23.876419798004, 90.213371543172, '2024-01-25 14:49:11'),
(6, 10, ' ', ' ', ' ', ' ', ' ', 0, 0, '2024-02-07 21:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_admin`
--

CREATE TABLE `pharmacy_admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `admin_email` varchar(250) NOT NULL,
  `admin_phone` varchar(15) NOT NULL,
  `admin_pass` text NOT NULL,
  `admin_type` varchar(255) NOT NULL,
  `admin_img` text NOT NULL,
  `shop_name` varchar(250) NOT NULL,
  `shop_image` text NOT NULL,
  `brand_logo` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pharmacy_admin`
--

INSERT INTO `pharmacy_admin` (`id`, `first_name`, `last_name`, `admin_email`, `admin_phone`, `admin_pass`, `admin_type`, `admin_img`, `shop_name`, `shop_image`, `brand_logo`, `status`, `rating`, `created_by`, `created_at`) VALUES
(5, 'mahi3', 'alam', 'mahialam@gmail.com', '01614756856', '$2y$10$ECd.lbIU63.plJhvH3zhbeEVd6LV/LN/FYloBQ8r/6bVANKzZ6Zdm', 'pharmacy', '1706624084.png', 'Moon Prama', 'BNR1705237468.jpg', 'LG1705237657.png', 'active', 0, 8, '2024-02-01 05:09:19'),
(9, 'araf', 'yeasin', 'arafyeasin12@gmail.com', '', '$2y$10$ECd.lbIU63.plJhvH3zhbeEVd6LV/LN/FYloBQ8r/6bVANKzZ6Zdm', 'pharmacy', ' ', 'araf ray', ' ', ' ', 'active', 0, 0, '2024-02-07 20:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prd_id` int(11) NOT NULL,
  `prd_image` varchar(300) DEFAULT NULL,
  `prd_name` varchar(100) NOT NULL,
  `prd_cat_id` int(11) NOT NULL,
  `prd_sub_cat_id` int(11) NOT NULL,
  `prd_price` decimal(11,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `prd_description` varchar(400) DEFAULT NULL,
  `slug` varchar(200) NOT NULL,
  `prd_status` varchar(30) DEFAULT NULL,
  `pharmacy_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prd_id`, `prd_image`, `prd_name`, `prd_cat_id`, `prd_sub_cat_id`, `prd_price`, `quantity`, `prd_description`, `slug`, `prd_status`, `pharmacy_id`, `created_date`) VALUES
(1815, '1693847535-0assortment-colorful-pills.jpg', 'Napa2', 217, 4, 2.00, 0, '<p>this is the description</p>', 'napa', 'Out Of Stock', 5, '2024-01-11 14:42:23'),
(1817, '1695141844-0electricity-transmission-pylon-silhouetted-against-blue-sky-d.jpg', 'Ace', 217, 5, 2.00, 0, '<p>asdasdasd</p>', 'ace', 'In Stock', 5, '2023-12-03 13:32:48'),
(1818, '1704989093-0electricity-high-voltage-pole-sky.jpg', 'Acewe', 218, 4, 0.00, 0, '<p>wewewe</p>', 'acewe', 'In Stock', 5, '2024-01-11 16:04:53'),
(1822, '1693847535-0assortment-colorful-pills.jpg', 'Napa2', 217, 4, 2.00, 0, '<p>this is the description</p>', 'napa', 'Out Of Stock', 5, '2024-01-11 14:42:23'),
(1823, '1695141844-0electricity-transmission-pylon-silhouetted-against-blue-sky-d.jpg', 'Ace', 217, 5, 2.00, 0, '<p>asdasdasd</p>', 'ace', 'In Stock', 5, '2023-12-03 13:32:48'),
(1824, '1704989093-0electricity-high-voltage-pole-sky.jpg', 'Acewe', 218, 4, 0.00, 0, '<p>wewewe</p>', 'acewe', 'In Stock', 5, '2024-01-11 16:04:53'),
(1825, '1693847535-0assortment-colorful-pills.jpg', 'Napa2', 217, 4, 2.00, 8, '<p>this is the description</p>', 'napa', 'Out Of Stock', 5, '2024-02-02 14:26:24'),
(1826, '1695141844-0electricity-transmission-pylon-silhouetted-against-blue-sky-d.jpg', 'Ace', 217, 5, 2.00, 0, '<p>asdasdasd</p>', 'ace', 'In Stock', 5, '2023-12-03 13:32:48'),
(1827, '1704989093-0electricity-high-voltage-pole-sky.jpg', 'Acewe', 218, 4, 0.00, 0, '<p>wewewe</p>', 'acewe', 'In Stock', 5, '2024-01-11 16:04:53'),
(1828, '1693847535-0assortment-colorful-pills.jpg', 'Napa2', 217, 4, 2.00, 0, '<p>this is the description</p>', 'napa', 'Out Of Stock', 5, '2024-01-11 14:42:23'),
(1829, '1695141844-0electricity-transmission-pylon-silhouetted-against-blue-sky-d.jpg', 'Ace', 217, 5, 2.00, 0, '<p>asdasdasd</p>', 'ace', 'In Stock', 5, '2023-12-03 13:32:48'),
(1830, '1704989093-0electricity-high-voltage-pole-sky.jpg', 'Acewe', 218, 4, 0.00, 0, '<p>wewewe</p>', 'acewe', 'In Stock', 5, '2024-01-11 16:04:53'),
(1831, '1705493574-0electricity-high-voltage-pole-sky.jpg', 'Ace1', 218, 4, 10.00, 0, '<p>sas</p>', 'ace1', 'Out Of Stock', 5, '2024-01-17 12:12:54'),
(1832, '1705493697-0pexels-guilherme-rossi-1686862.jpg', 'Ace2', 217, 4, 10.00, 0, '<p>sdffs</p>', 'ace2', 'In Stock', 5, '2024-01-17 12:14:57'),
(1833, '1705493722-0pexels-johannes-plenio-1133500 (1).jpg', 'Ace3', 217, 4, 10.00, 0, '<p>asd</p>', 'ace3', 'In Stock', 5, '2024-01-17 12:15:22'),
(1834, '1705493873-0Capture.PNG', 'Ace4', 218, 4, 10.00, 0, '<p>asdfsad</p>', 'ace4', 'In Stock', 5, '2024-01-17 12:17:53'),
(1835, '1705493918-0Main System (1).jpg', 'Ace5', 219, 4, 10.00, 0, '<p>saas</p>', 'ace5', 'In Stock', 5, '2024-01-17 12:18:38'),
(1837, '1706538884.png', 'test new product', 220, 0, 20.00, 10, '<p>asda</p>', 'test-new-product', 'Out Of Stock', 5, '2024-02-13 14:23:54'),
(1839, '1706538916.png', 'test new product23', 217, 4, 0.00, 120, '<p><br data-cke-filler=\"true\"></p>', 'test-new-product23', 'In Stock', 5, '2024-01-29 14:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slider_name` varchar(200) NOT NULL,
  `slider_image` varchar(300) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slider_name`, `slider_image`, `slug`, `admin_id`, `created_date`) VALUES
(3, 'slider12', '1696259006.jpg', 'slider1', 5, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `store_name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `store_location` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `banner` varchar(50) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `store_name`, `phone`, `store_location`, `email`, `logo`, `banner`, `admin_id`, `created_at`) VALUES
(7, 'Food Coral', '147258369', 'Houston', 'info@food-coral.com', 'LG1677838705.png', 'BNR1677838705.jpg', 1, '2023-05-16 07:41:31'),
(8, 'Food Lover', '147258369', 'Houston', 'info@food-lover.store', 'LG1677838705.png', 'BNR1677838705.jpg', 2, '2023-05-16 07:41:22'),
(9, 'store name', '01614756856', 'location', 'storeemail@gmail.com', 'LG1695653186.png', 'BNR1695653186.jpg', 5, '2023-09-25 14:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `sub_category_name` varchar(255) NOT NULL,
  `sub_category_image` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `pharmacy_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `sub_category_name`, `sub_category_image`, `slug`, `category_id`, `pharmacy_id`, `created_date`) VALUES
(4, 'Sub Category 1', '1693774625.png', 'sub-category-1', 217, 5, '2023-12-29 12:21:03'),
(5, 'Sub Category 2', '1695141514.png', 'sub-category-2', 217, 5, '2023-12-29 12:20:50'),
(6, 'new subcategory1', '1707832911.png', 'new-subcategory', 217, 5, '2024-02-13 14:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `image` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `password`, `image`, `type`, `status`, `created_at`) VALUES
(10, 'Test User', 'testuser@gmail.com', '', 'testuser123', '1705681373.jpg', 'Bronze', 'active', '2024-01-30 16:28:29'),
(11, 'araf', 'arafyeasin@gmail.com', '', 'f85dsz41', '', 'Bronze', 'active', '2024-02-02 14:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `house_name` varchar(250) NOT NULL,
  `street` varchar(250) NOT NULL,
  `post_office` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`address_id`, `user_id`, `house_name`, `street`, `post_office`, `city`, `latitude`, `longitude`, `created_at`) VALUES
(2, 10, 'Mirpur 12', 'road no 23', '1216', 'Dhaka', 23.794995108406, 90.373256359873, '2024-01-19 14:57:13'),
(3, 11, '', '', '', '', 23.825973330726, 90.363535895511, '2024-01-25 15:54:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartitem`
--
ALTER TABLE `cartitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_address`
--
ALTER TABLE `pharmacy_address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `pharmacy_admin`
--
ALTER TABLE `pharmacy_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prd_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cartitem`
--
ALTER TABLE `cartitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pharmacy_address`
--
ALTER TABLE `pharmacy_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pharmacy_admin`
--
ALTER TABLE `pharmacy_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1840;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
