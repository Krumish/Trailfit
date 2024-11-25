-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2024 at 08:17 PM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(135, 18, 21, 'Rolex Oyster Perpetual Date 34mm Blue Dial', 500000, 1, 'rolex-1.jpg'),
(136, 18, 25, 'Panerai Luminor 1950 44mm 8 Days GMT Stainless Steel / Black', 300000, 1, 'panerai-1.jpg'),
(137, 18, 27, 'Hublot Titanium Classic Fusion Chronograph 45mm', 250000, 1, 'hublot-1.jpg'),
(138, 18, 24, 'Santos de Cartier Watch Large Model', 120000, 1, 'cartier-1.jpg'),
(139, 18, 22, 'Omega Constellation Globemaster', 300000, 1, 'omega-1.jpg');

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(21, 'Rolex Oyster Perpetual Date 34mm Blue Dial', 'The Rolex Oyster Perpetual Date 34 is a classic timepiece that combines simplicity and sophistication. It features a 34mm Oystersteel case, which offers both durability and a polished finish. The striking blue sunray-finished dial adds a touch of elegance, while the signature Cyclops lens magnifies the date display for easy reading.', 500000, 'rolex-1.jpg'),
(22, 'Omega Constellation Globemaster', 'The Omega Constellation Globemaster is a refined and historically inspired timepiece known for its precision and craftsmanship. It features a 39mm stainless steel case with a fluted bezel, reminiscent of classic Omega designs. The blue dial showcases a \"pie-pan\" shape, a nod to the original Constellation models from 1952. Powered by the Co-Axial Master Chronometer caliber 8900, the Globemaster is resistant to magnetic fields and offers exceptional accuracy.', 300000, 'omega-1.jpg'),
(24, 'Santos de Cartier Watch Large Model', 'The Santos de Cartier Large Model is a modern reinterpretation of one of Cartier\'s most iconic designs, originally created in 1904 for aviator Alberto Santos-Dumont. It features a 39.8mm stainless steel case with a square shape and rounded edges, staying true to its classic aviation-inspired style. The silvered opaline dial includes Roman numerals, blued steel sword-shaped hands, and a date display at 6 o\'clock.', 120000, 'cartier-1.jpg'),
(25, 'Panerai Luminor 1950 44mm 8 Days GMT Stainless Steel / Black', 'The Panerai Luminor 1950 8 Days GMT is a robust and versatile watch that blends Italian design with Swiss watchmaking expertise. It features a 44mm stainless steel case with the iconic Luminor crown-protecting bridge, providing a distinctive look and enhanced water resistance. The black sandwich dial has luminous hour markers and hands for optimal readability, along with a second time zone (GMT) indicator and a small seconds subdial at 9 o’clock.', 300000, 'panerai-1.jpg'),
(27, 'Hublot Titanium Classic Fusion Chronograph 45mm', 'The Hublot Titanium Classic Fusion Chronograph is a striking blend of elegance and sportiness. It features a 45mm titanium case, which is both lightweight and durable, enhancing comfort on the wrist. The sunburst black dial showcases a minimalist design with luminous hands and indices for easy readability, alongside chronograph subdials for timing functions. It is powered by Hublot\'s automatic movement, ensuring precise timekeeping.', 250000, 'hublot-1.jpg');

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
(10, 'admin A', 'admin01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'admin'),
(14, 'user A', 'user01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(15, 'user B', 'user02@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(16, 'moses', 'moses@email.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'admin'),
(18, 'kevin', 'kevin@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
