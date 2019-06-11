-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 07, 2019 at 05:30 PM
-- Server version: 5.6.43-cll-lve
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
-- Database: `ecomtest_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'example 2'),
(3, 'Jeans'),
(4, 'Knit Wear'),
(13, 'Outwear');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_amount` float NOT NULL,
  `order_transaction` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_amount`, `order_transaction`, `order_status`, `order_currency`) VALUES
(28, 345, '34535434', 'Completed', 'USD'),
(29, 2345, '34535436789', 'Completed', 'USD'),
(31, 1056, '8X1441592A9741219', 'Pending', 'USD'),
(32, 346, '20T06825J6920510B', 'Pending', 'USD'),
(33, 346, '20T06825J6920510B', 'Pending', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_cat_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `short_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_cat_id`, `product_price`, `product_quantity`, `product_description`, `short_desc`, `product_image`) VALUES
(4, 'my second product', 2, 100, 9, 'This is my second product description', 'short description', 'owl_family.jpg'),
(6, 'Blue Jeans', 3, 228, 5, 'Jeans description', 'short', 'HeaderBG1.jpg'),
(7, 'Jean shorts', 3, 118, 1, 'asdfabujbfairggargaergae', 'hole', 'HeaderBG3.jpg'),
(8, 'Oversize Sweater', 4, 28, 10, 'Oversize Sweater Description,Oversize Sweater Description,Oversize Sweater Description,Oversize Sweater Description,Oversize Sweater Description', 'Oversize Sweater Description', 'shrug.png'),
(9, 'Cardigan', 4, 1000, 1, 'loooooooong description', 'short desc', 'WorkHard_Emoji.jpg'),
(10, 'Cashmere Coats', 13, 20, 3, 'lllllllllonooooooooasdffg', 'sfarf', 'resumephoto.jpg'),
(11, 'short coat', 13, 100, 50, 'asfawerqwrtqewrgfaewrg', '', 'IMG_6346.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `product_id`, `product_title`, `order_id`, `product_price`, `product_quantity`) VALUES
(17, 2, 'product 2', 23, 299.99, 2),
(18, 1, 'product 1', 24, 24.99, 1),
(20, 4, 'my second product', 26, 100, 2),
(21, 6, 'Blue Jeans', 27, 228, 1),
(22, 4, 'my second product', 28, 100, 1),
(23, 4, 'my second product', 29, 100, 1),
(24, 8, 'Oversize Sweater', 30, 28, 2),
(25, 9, 'Cardigan', 31, 1000, 1),
(26, 7, 'Jean shorts', 32, 118, 1),
(27, 6, 'Blue Jeans', 33, 228, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `user_photo`) VALUES
(10, 'fanyaw', 'fanyaw0514@gmail.com', '123', 'family.jpg'),
(13, 'test2', 'test2@gmail.com', '123', 'Tears_Face_Emoji.jpg'),
(15, 'fweng0315', 'fanyaw@uw.edu', '123', 'PassportPhoto.jpg'),
(18, 'test', 'test@gmail.com', '123', 'owl_family.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
