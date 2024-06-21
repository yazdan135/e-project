-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 10:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand_name`) VALUES
(7, 'st London'),
(8, 'missrose'),
(9, 'sana zara'),
(10, 'Vogue world'),
(11, 'tiffany and co'),
(12, 'tesoro');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `role_id_FK` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `role_id_FK`, `name`, `email`, `password`, `address`, `contact`, `dob`) VALUES
(7, 18, 'ayaan', 'ayaan@gmail.com', '123', 'nazimabad', '03122741670', '2009-12-12'),
(8, 18, 'anas', 'anas@gmail.com', '123', 'saima arabian villas', '03122718700', '2005-12-12'),
(9, 18, 'sufyan', 'sufyan@gmail.com', '123', 'gulsan', '03122741670', '2009-12-12'),
(10, 18, 'hadi', 'hadi@gmail.com', '123', 'malir', '03122718700', '2013-12-12'),
(11, 18, 'mustafa', 'mustafa@gmail.com', '123', 'landhi', '03122741670', '1222-12-12'),
(12, 18, 'mujtaba', 'mujtaba@gmail.com', '123', 'five star', '03122718700', '1212-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `main_category`
--

CREATE TABLE `main_category` (
  `id` int(11) NOT NULL,
  `main_category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_category`
--

INSERT INTO `main_category` (`id`, `main_category_name`) VALUES
(4, 'Cosmetic'),
(6, 'jewellery');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `client_id_FK` int(255) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `order_type` int(11) NOT NULL COMMENT '	1= pickup,2= deliver',
  `amount` int(20) NOT NULL,
  `status` varchar(255) NOT NULL COMMENT '	0 = pending, 1= Packed, 2 = Out for Delivery, 3=Delivered, 4=cancelled',
  `paid` varchar(100) NOT NULL,
  `date_create` datetime NOT NULL DEFAULT current_timestamp(),
  `date_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id_FK` int(30) NOT NULL,
  `product_id_FK` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `brand_id_FK` int(11) NOT NULL,
  `sub_category_id_FK` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `brand_id_FK`, `sub_category_id_FK`, `product_name`, `description`, `price`, `product_image`) VALUES
(6, 7, 10, 'lipstick', 'Creamy color with flattering pigments in a lip-loving, comfortable formula', 1499, 'Creamy color with flattering pigments in a lip-loving, comfortable formula(lipstick).webp'),
(7, 7, 10, 'lipstick', 'Creamy color with flattering pigments in a lip-loving, comfortable formula', 1499, 'lipstick(2).webp'),
(8, 7, 10, 'lipstick', 'Creamy color with flattering pigments in a lip-loving, comfortable formula', 1499, 'lipstick(3).webp'),
(9, 7, 10, 'lipstick', 'Creamy color with flattering pigments in a lip-loving, comfortable formula', 1499, 'lipstick(4).webp'),
(10, 8, 10, 'foundation', 'Kryolan - TV Paint Stick', 1999, 'Kryolan - TV Paint Stick(foundation 1).webp'),
(11, 8, 10, 'foundation', 'Kryolan - TV Paint Stick', 1999, '(foundation 2).webp'),
(12, 8, 10, 'foundation', 'Kryolan - TV Paint Stick', 1999, 'foundation (3).webp'),
(13, 8, 10, 'foundation', 'Kryolan - TV Paint Stick', 1999, 'foundation (4).webp'),
(14, 7, 10, 'lipstick (liquid)', 'Velvet Reign Matte Liquid Lipstick', 1299, 'Velvet Reign Matte Liquid Lipstick(liquid lipstick 1).webp'),
(15, 7, 10, 'lipstick (liquid)', 'Velvet Reign Matte Liquid Lipstick', 1299, 'liquid lipstick (2).webp'),
(16, 8, 10, 'lipstick (liquid)', 'Velvet Reign Matte Liquid Lipstick', 1299, 'liquid lipstick (3).webp'),
(17, 8, 10, 'lipstick (liquid)', 'Velvet Reign Matte Liquid Lipstick', 1299, 'lipstick(4).webp'),
(18, 9, 11, 'serum', 'MULTI-ACTION NIGHT REPAIR FACE SERUM - 30 ML ', 2999, 'MULTI-ACTION NIGHT REPAIR FACE SERUM - 30 ML (serum 1).webp'),
(19, 9, 11, 'serum', 'MULTI-ACTION NIGHT REPAIR FACE SERUM - 30 ML ', 2999, 'serum (2).webp'),
(20, 9, 11, 'serum', 'MULTI-ACTION NIGHT REPAIR FACE SERUM - 30 ML ', 2999, 'serum (4).webp'),
(21, 9, 11, 'serum', 'MULTI-ACTION NIGHT REPAIR FACE SERUM - 30 ML ', 2999, 'serum(3).webp'),
(22, 9, 11, 'blush', 'BEAUTY BLUSH PERSIAN PLUM-30ML', 2499, 'BEAUTY BLUSH PERSIAN PLUM-30ML (blush 1).webp'),
(23, 9, 11, 'blush', 'BEAUTY BLUSH PERSIAN PLUM-30ML', 2499, 'blush (2).webp'),
(24, 9, 11, 'blush', 'BEAUTY BLUSH PERSIAN PLUM-30ML', 2499, 'blush (3).webp'),
(25, 9, 11, 'blush', 'BEAUTY BLUSH PERSIAN PLUM-30ML', 2499, 'blush (4).webp'),
(26, 10, 12, 'braclet', 'golden  24k (5 tola)', 6000000, 'bracelet 1.jpg'),
(27, 10, 12, 'braclet', 'golden  24k (3 tola)', 4000000, 'bracelet 3.jpeg'),
(28, 10, 12, 'braclet', 'silver braclet', 2000000, 'bracelet 2.jpeg'),
(29, 10, 12, 'braclet', 'silver braclet', 3000000, 'bracelet 4.jpeg'),
(30, 11, 12, 'ring', 'golden ring 24k (2 tola)', 4000000, 'ring 4.jpg'),
(31, 11, 12, 'ring', 'silver ring with daimond', 10000000, 'ring 3.jpeg'),
(32, 11, 12, 'ring', 'silver ring', 1000000, 'ring 2.jpeg'),
(33, 11, 12, 'ring', 'silver ring with nayab stone', 1200000, 'ring 1.jpeg'),
(34, 12, 13, 'necklace', 'golden necklace 24k (10 tola)', 1500000, 'necklace 2.jpeg'),
(35, 12, 13, 'necklace', 'golden necklace 24k (7 tola)', 1000000, 'necklace 4.jpeg'),
(36, 12, 13, 'necklace', 'daimond necklace pure (72 small daimond)', 100000000, 'necklace 1.jpeg'),
(37, 12, 13, 'necklace', 'silver necklace pure (20 nayab stone)', 120000, 'necklace 3.jpeg'),
(38, 12, 13, 'pendant', 'pendant with etasco desing duck', 80000, 'pendant 1.jpg'),
(39, 12, 13, 'pendant', 'pendant with etasco pure daimond', 800000, 'pendant 2.jpg'),
(40, 12, 13, 'pendant', 'pendant with etasco pure nayab stone', 200000, 'pendant 3.jpeg'),
(41, 12, 13, 'pendant', 'pendant with etasco pure nayab duck', 20000, 'pendant 4.jpg'),
(42, 12, 13, 'earing', 'earing with pure daimond ', 3000000, 'ear ring 2.jpg'),
(43, 12, 13, 'earing', 'earing with pure nayab daimond', 300000, 'ear ring 1.jpg'),
(44, 12, 13, 'earing', 'earing with pure nayab red stone', 300000, 'ear ring 3jpeg.jpeg'),
(45, 12, 13, 'earing', 'earing with pure nayab vogue stone', 300000, 'ear ring 4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_name`) VALUES
(17, 'admin'),
(18, 'client');

-- --------------------------------------------------------

--
-- Table structure for table `sub_cateory`
--

CREATE TABLE `sub_cateory` (
  `id` int(11) NOT NULL,
  `main_category_id_FK` int(11) NOT NULL,
  `sub_category_name` varchar(255) NOT NULL,
  `sub_category_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_cateory`
--

INSERT INTO `sub_cateory` (`id`, `main_category_id_FK`, `sub_category_name`, `sub_category_image`) VALUES
(10, 4, 'makup', ''),
(11, 4, 'skin care', ''),
(12, 6, 'wareable', ''),
(13, 6, 'hangable', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `role_id_FK` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `role_id_FK`, `username`, `email`, `password`) VALUES
(10, 17, 'muhammad yazdan', 'muhammadyazdan375@gmail.com', '123'),
(11, 17, 'rizwan khan', 'rizwan@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` int(255) NOT NULL,
  `password` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `password`) VALUES
(0, 123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id_FK` (`role_id_FK`);

--
-- Indexes for table `main_category`
--
ALTER TABLE `main_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_FK` (`client_id_FK`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id_FK` (`order_id_FK`),
  ADD KEY `product_id_FK` (`product_id_FK`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id_FK` (`brand_id_FK`),
  ADD KEY `sub_category_id_FK` (`sub_category_id_FK`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_cateory`
--
ALTER TABLE `sub_cateory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_category_id_FK` (`main_category_id_FK`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id_FK` (`role_id_FK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `main_category`
--
ALTER TABLE `main_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sub_cateory`
--
ALTER TABLE `sub_cateory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`role_id_FK`) REFERENCES `role` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`client_id_FK`) REFERENCES `client` (`id`);

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`order_id_FK`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`product_id_FK`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`brand_id_FK`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`sub_category_id_FK`) REFERENCES `sub_cateory` (`id`);

--
-- Constraints for table `sub_cateory`
--
ALTER TABLE `sub_cateory`
  ADD CONSTRAINT `sub_cateory_ibfk_1` FOREIGN KEY (`main_category_id_FK`) REFERENCES `main_category` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id_FK`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
