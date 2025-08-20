-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2025 at 04:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atozfootwear`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(3) NOT NULL,
  `images` varchar(255) NOT NULL,
  `title` varchar(30) NOT NULL,
  `size` varchar(5) NOT NULL,
  `price` float(10,2) NOT NULL,
  `qty` int(3) NOT NULL,
  `total` float(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `images`, `title`, `size`, `price`, `qty`, `total`) VALUES
(1, 'SC0322G-BKGY-1.webp', 'Nike Running', '0', 1200.00, 1, 1200.00),
(1, 'SC0322G-BKGY-1.webp', 'Nike Running', 'M', 1200.00, 4, 4800.00),
(1, 'SC0322G-BKGY-1.webp', 'Nike Running', 'M', 1200.00, 4, 4800.00),
(111, 'SD0844G-PWGB-1.webp', '12', 'S', 0.00, 100, 0.00),
(111, 'SD0844G-PWGB-1.webp', '12', 'S', 0.00, 100, 0.00),
(1, 'SC0322G-BKGY-1.webp', 'Nike Running', 'S', 1200.00, 1, 1200.00),
(1, 'SC0322G-BKGY-1.webp', 'Nike Running', 'S', 1200.00, 1, 1200.00),
(1, 'SC0322G-BKGY-1.webp', 'Nike Running', 'S', 1200.00, 1, 1200.00),
(1, 'SC0322G-BKGY-1.webp', 'Nike Running', 'M', 1200.00, 1, 1200.00),
(1, 'kids_1.webp', 'Kids', 'M', 1200.00, 1, 1200.00),
(1, 'SC0322G-BKGY-1.webp', 'Nike Running', 'S', 1200.00, 1, 1200.00);

-- --------------------------------------------------------

--
-- Table structure for table `check_out`
--

CREATE TABLE `check_out` (
  `p_id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `size` varchar(5) NOT NULL,
  `price` float(10,2) NOT NULL,
  `qty` int(3) NOT NULL,
  `address` varchar(200) NOT NULL,
  `total` float(10,2) NOT NULL,
  `payment_method` varchar(200) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `check_out`
--

INSERT INTO `check_out` (`p_id`, `images`, `p_name`, `size`, `price`, `qty`, `address`, `total`, `payment_method`, `status`) VALUES
(1, 'SC0322G-BKGY-1.webp', 'Nike Running', '0', 1200.00, 1, 'collage road,junagadh', 1200.00, 'Cash on Delivery', 'done'),
(2, 'SC0322G-BKGY-1.webp', 'Nike Running', '0', 1200.00, 1, 'Shobhavadala lashkar', 1200.00, 'Cash on Delivery', 'done'),
(3, 'SC0322G-BKGY-1.webp', 'Nike Running', '0', 1200.00, 1, '12,collage road,junagadh', 1200.00, 'Cash on Delivery', 'done'),
(4, 'SC0322G-BKGY-1.webp', 'Nike Running', '0', 1200.00, 1, '12,collage road,junagadh', 1200.00, 'Cash on Delivery', 'done'),
(5, 'SD0844G-PWGB-1.webp', '12', 'S', 0.00, 100, 'qw', 0.00, 'Cash on Delivery', ''),
(6, 'SC0322G-BKGY-1.webp', 'Nike Running', '0', 1200.00, 1, 'da', 1200.00, 'Cash on Delivery', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Mobile_No` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile_No`) VALUES
('', '', 0),
('', '', 0),
('', '', 0),
('Chauhan je', 'chauhanjenish2@gmail.com', 1234567890),
('Chauhan je', 'chauhanjenish2@gmail.com', 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `female_product`
--

CREATE TABLE `female_product` (
  `p_id` int(3) NOT NULL,
  `title` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `description` varchar(30) NOT NULL,
  `price` float(10,2) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `female_product`
--

INSERT INTO `female_product` (`p_id`, `title`, `category`, `description`, `price`, `images`) VALUES
(101, 'this is fe', 'female', 'This is test', 1500.00, 'women_4.webp');

-- --------------------------------------------------------

--
-- Table structure for table `kids_product`
--

CREATE TABLE `kids_product` (
  `p_id` int(3) NOT NULL,
  `title` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `description` varchar(30) NOT NULL,
  `price` float(10,2) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kids_product`
--

INSERT INTO `kids_product` (`p_id`, `title`, `category`, `description`, `price`, `images`) VALUES
(2, 'best', 'Athleisure', 'best running shoes', 1000.00, 'kids_1.webp');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Password` varchar(6) NOT NULL,
  `Type` varchar(10) NOT NULL DEFAULT 'client'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `Name`, `Password`, `Type`) VALUES
(1, 'Admin', '12345', 'Admin'),
(2, 'Chauhan jenish', '123456', 'client'),
(3, 'chauhan ', '123456', 'client'),
(4, 'jenish', '123456', 'client');

-- --------------------------------------------------------

--
-- Table structure for table `male_product`
--

CREATE TABLE `male_product` (
  `p_id` int(3) NOT NULL,
  `title` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `description` varchar(30) NOT NULL,
  `price` float(10,2) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `male_product`
--

INSERT INTO `male_product` (`p_id`, `title`, `category`, `description`, `price`, `images`) VALUES
(0, 'best', 'Casuals', 'ssfonvd', 1500.00, 'SC0322G-BKGY-1.webp');

-- --------------------------------------------------------

--
-- Table structure for table `review_data`
--

CREATE TABLE `review_data` (
  `Name` varchar(30) NOT NULL,
  `Mobile_No` int(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Message` varchar(50) NOT NULL,
  `Review` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `user_id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Password` varchar(6) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Mobile_No` int(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Type` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signin`
--

INSERT INTO `signin` (`user_id`, `Name`, `Password`, `Address`, `Mobile_No`, `Email`, `Gender`, `Type`) VALUES
(1, 'Admin', '12345', '', 0, '', '', 'Admin'),
(2, 'Chauhan jenish', '123456', 'Shobhavadala lashkar', 1234567890, 'chauhanjenish2@gmail.com', 'male', 'user'),
(3, 'chauhan ', '123456', 'Shobhavadala lashkar', 1234567890, 'chauhanjenish2006@gmail.com', 'male', 'user'),
(4, 'jenish', '123456', 'Shobhavadala lashkar', 1234567890, 'chauhan@gmail.com', 'male', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `treading_product`
--

CREATE TABLE `treading_product` (
  `p_id` int(3) NOT NULL,
  `title` varchar(20) NOT NULL,
  `category` varchar(10) NOT NULL,
  `description` varchar(30) NOT NULL,
  `price` float(10,2) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treading_product`
--

INSERT INTO `treading_product` (`p_id`, `title`, `category`, `description`, `price`, `images`) VALUES
(203, 'Update test', 'male', 'This is best ', 1200.00, 'lofer_1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `check_out`
--
ALTER TABLE `check_out`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `female_product`
--
ALTER TABLE `female_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `kids_product`
--
ALTER TABLE `kids_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `male_product`
--
ALTER TABLE `male_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `treading_product`
--
ALTER TABLE `treading_product`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `check_out`
--
ALTER TABLE `check_out`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `female_product`
--
ALTER TABLE `female_product`
  MODIFY `p_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `kids_product`
--
ALTER TABLE `kids_product`
  MODIFY `p_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `signin`
--
ALTER TABLE `signin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `treading_product`
--
ALTER TABLE `treading_product`
  MODIFY `p_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
