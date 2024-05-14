-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2024 at 07:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `gender`, `salary`) VALUES
(1, 'hamada', 'Henmarsh', 'ihenmarsh0@about.com', 'Male', 14633),
(2, 'Babs', 'Grisewood', 'bgrisewood1@tinypic.com', 'Female', 10380),
(3, 'Weston', 'Hudd', 'whudd2@smh.com.au', 'Male', 2304),
(4, 'Alford', 'Clemes', 'aclemes3@marketwatch.com', 'Male', 19642),
(5, 'Jesse', 'Beers', 'jbeers4@telegraph.co.uk', 'Male', 11522),
(6, 'Jori', 'Dixson', 'jdixson5@fastcompany.com', 'Female', 4218),
(7, 'Jewelle', 'Ebbetts', 'jebbetts6@ucsd.edu', 'Female', 10478),
(8, 'Clo', 'Sebastian', 'csebastian7@miitbeian.gov.cn', 'Female', 4634),
(9, 'Dari', 'Winstanley', 'dwinstanley8@163.com', 'Female', 18545),
(10, 'Quintina', 'Bergeau', 'qbergeau9@un.org', 'Female', 18959),
(11, 'Pansie', 'Pattington', 'ppattingtona@marriott.com', 'Female', 7089),
(12, 'June', 'Gleder', 'jglederb@sogou.com', 'Female', 2272),
(13, 'Melinde', 'Grainge', 'mgraingec@ox.ac.uk', 'Female', 3035),
(14, 'Jabez', 'Brobak', 'jbrobakd@jigsy.com', 'Male', 9466),
(15, 'Angie', 'Dunbar', 'adunbare@amazon.co.uk', 'Female', 13591),
(17, 'Elisabetta', 'Samuels', 'esamuelsg@auda.org.au', 'Female', 10453),
(18, 'Tabby', 'O\'Sheeryne', 'tosheeryneh@merriam-webster.com', 'Female', 17150),
(19, 'Leif', 'Farriar', 'lfarriari@google.ca', 'Male', 17014),
(90, 'mohamed ', 'Elhossiny', 'mohamed@elhossiny.net', 'Male', 200);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `delivery` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `totalamount` int(11) NOT NULL,
  `aftertax` int(11) NOT NULL,
  `amount` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `customer_id`, `quantity`, `delivery`, `tax`, `totalamount`, `aftertax`, `amount`) VALUES
(3, 12, 10, 0, 0, 0, 0, 0, 9166.13),
(4, 9, 15, 0, 0, 0, 0, 0, 9454.60),
(5, 14, 15, 0, 0, 0, 0, 0, 7911.35),
(6, 4, 6, 0, 0, 0, 0, 0, 6258.12),
(8, 7, 15, 0, 0, 0, 0, 0, 4817.13),
(59, 11, 15, 0, 0, 0, 0, 0, 86.00),
(61, 9, 15, 0, 0, 0, 0, 0, 42.00),
(62, 2, 2, 0, 0, 0, 0, 0, 69.00),
(65, 17, 90, 0, 0, 0, 0, 0, 3132.00),
(66, 9, 4, 0, 0, 0, 0, 0, 31.00),
(69, 6, 90, 50, 22, 22, 2200, 2244, 2244.00);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ordersdata`
-- (See below for the actual view)
--
CREATE TABLE `ordersdata` (
`orderID` int(11)
,`amount` decimal(7,2)
,`prodId` int(11)
,`quantity` int(11)
,`delivery` int(11)
,`tax` int(11)
,`product_name` varchar(50)
,`price` int(11)
,`first_name` varchar(50)
,`last_name` varchar(50)
,`email` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`) VALUES
(1, 'Motorola', 66),
(2, 'Nokia', 1),
(3, 'BLU', 36),
(4, 'Lava', 25),
(5, 'BlackBerry', 25),
(6, 'Acer', 44),
(7, 'ZTE', 91),
(8, 'Huawei', 8),
(9, 'Allview', 74),
(10, 'Nokia', 98),
(11, 'Energizer', 47),
(12, 'Archos', 11),
(13, 'Nokia', 29),
(14, 'Samsung', 97),
(15, 'Lava', 45),
(16, 'Sharp', 25),
(17, 'Nokia', 86),
(18, 'Vodafone', 99),
(19, 'BlackBerry', 92),
(20, 'Plum', 92),
(30, 'Samsusng M7 Smart ', 98);

-- --------------------------------------------------------

--
-- Stand-in structure for view `productsnotinorders`
-- (See below for the actual view)
--
CREATE TABLE `productsnotinorders` (
`id` int(11)
,`product_name` varchar(50)
,`price` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `testtable`
--

CREATE TABLE `testtable` (
  `id` int(11) NOT NULL,
  `name` int(200) NOT NULL,
  `password` int(11) NOT NULL,
  `adminId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testtable`
--

INSERT INTO `testtable` (`id`, `name`, `password`, `adminId`) VALUES
(1, 23, 32, NULL);

-- --------------------------------------------------------

--
-- Structure for view `ordersdata`
--
DROP TABLE IF EXISTS `ordersdata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ordersdata`  AS SELECT `orders`.`id` AS `orderID`, `orders`.`amount` AS `amount`, `products`.`id` AS `prodId`, `orders`.`quantity` AS `quantity`, `orders`.`delivery` AS `delivery`, `orders`.`tax` AS `tax`, `products`.`product_name` AS `product_name`, `products`.`price` AS `price`, `customers`.`first_name` AS `first_name`, `customers`.`last_name` AS `last_name`, `customers`.`email` AS `email` FROM ((`orders` join `products` on(`orders`.`product_id` = `products`.`id`)) join `customers` on(`orders`.`customer_id` = `customers`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `productsnotinorders`
--
DROP TABLE IF EXISTS `productsnotinorders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `productsnotinorders`  AS SELECT `products`.`id` AS `id`, `products`.`product_name` AS `product_name`, `products`.`price` AS `price` FROM `products` WHERE !(`products`.`id` in (select `orders`.`product_id` from `orders`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testtable`
--
ALTER TABLE `testtable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminId` (`adminId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `testtable`
--
ALTER TABLE `testtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `testtable`
--
ALTER TABLE `testtable`
  ADD CONSTRAINT `testtable_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `testtable` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
