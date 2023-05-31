-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 11:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(61, 6, 'BTS_Book', 600, 1, 'bts_book.jpg'),
(62, 6, 'red_queen', 22, 1, 'red_queen.jpg'),
(66, 3, 'Nightshade', 199, 1, 'nightshade.jpg'),
(69, 3, 'The girl of ink and stars', 345, 1, 'the_girl_of_ink_and_stars.jpg'),
(70, 3, 'python', 370, 1, 'python.jpg'),
(71, 3, 'free fall', 399, 1, 'freefall.jpg'),
(75, 3, 'Holy_ghosts', 229, 1, 'holy_ghosts.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(10, 3, 'M.Ganga Bhavani', 'bhavani@gmail.com', '8501931663', 'your book store was nice'),
(11, 3, 'Bhavani', 'Kesanasuresh95@gmail.com', '8741418927', 'thought provokig'),
(12, 6, 'Aswin', 'aswin@gmail.com', '1234567890', 'poiuytrewqasdfghjkl,mnbvcxz'),
(13, 3, 'Bhavani', 'srinadh@gmail.com', '34567890', 'i want some theory books');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(12, 3, 'srinadh', '2345698989', 'srinadh@gmail.com', 'credit card', 'flat no. 6, 3rfcvbjfhn, nzm, india - 9876', ', BTS_Book (1) , queen_fire (1) ', 777, '03-May-2023', 'pending'),
(13, 8, 'Mannem. Ganga Bhavani', '3456789098', '211801380015@cutmap.ac.in', 'cash on delivery', 'flat no. 4, jkhbdrdfghjk, ap, India - 098765', ', BTS_Book (1) ', 600, '04-May-2023', 'pending'),
(14, 8, 'srinadh', '234567899', 'srinadh@gmail.com', 'paypal', 'flat no. 5, y765467hgv, guntur, india - 0976', ', a place called home (1) ', 189, '04-May-2023', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'BTS_Book', 600, 'bts_book.jpg'),
(2, 'bash_and_lucy-2', 200, 'bash_and_lucy-2.jpg'),
(3, 'queen_fire', 177, 'queen_fire.jpg'),
(4, 'darknet', 169, 'darknet.jpg'),
(5, 'Nightshade', 199, 'nightshade.jpg'),
(6, 'red_queen', 229, 'red_queen.jpg'),
(7, 'Holy_ghosts', 229, 'holy_ghosts.jpg'),
(8, 'The_India_Story', 369, 'The_India_Story.jpg'),
(9, 'a place called home', 189, 'a_place.jpg'),
(10, 'the boy who wrotes indian constitution', 299, 'constitution.jpg'),
(13, 'a girl to remember', 175, 'a girl to remember.jpg'),
(14, 'The girl of ink and stars', 345, 'the_girl_of_ink_and_stars.jpg'),
(15, 'free fall', 399, 'freefall.jpg'),
(16, 'boring girls a novel', 300, 'boring_girls_a_novel.jpg'),
(17, 'economic', 30, 'economic.jpg'),
(18, 'c language', 445, 'C Programming Language.jpg'),
(19, 'python', 370, 'python.jpg'),
(20, 'introduction to algorithms', 360, 'Introduction to Algorithms.jpg'),
(21, 'eloquent javascript', 299, 'Eloquent JavaScript.jpg'),
(22, 'effective java', 699, 'Effective Java.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Bhavani', 'bhavani@gmail.com', '18f3d1ca1132b3c1957602761b533132', 'user'),
(2, 'Bhavani', 'Kesanasuresh95@gmail.com', '18f3d1ca1132b3c1957602761b533132', 'user'),
(3, 'admin', 'admin@gmail.com', '71934b60ae13ac658efc35ed4055a934', 'user'),
(4, 'admin1', 'admin1@gmail.com', '0cc6934d7ff02e0593893fb25174ac99', 'admin'),
(5, 'rishitha', 'rishi@gmail.com', '51cda764b2ad839fe089cd46ba937716', 'user'),
(6, 'indu', 'indu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(7, 'srinadh', 'srinadh@gmail.com', '0cce30942325ef8709e75d1b9b3ef78d', 'user'),
(8, 'Mannem. Ganga Bhavani', '211801380015@cutmap.ac.in', '13ccdefe856844c66b2aa049f2c554a6', 'user'),
(9, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
