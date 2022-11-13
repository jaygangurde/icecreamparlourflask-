-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2022 at 11:00 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icecream`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(11) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `password`) VALUES('ID123456', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `mobile_number` bigint(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cust_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`mobile_number`, `password`, `cust_name`) VALUES(9503936697, 'password', 'Jay Gangurde');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `quantity`, `rate`, `amount`) VALUES(1, 511, 3, 70, 210);
INSERT INTO `order_details` (`order_id`, `product_id`, `quantity`, `rate`, `amount`) VALUES(1, 532, 1, 90, 90);
INSERT INTO `order_details` (`order_id`, `product_id`, `quantity`, `rate`, `amount`) VALUES(1, 536, 1, 90, 90);
INSERT INTO `order_details` (`order_id`, `product_id`, `quantity`, `rate`, `amount`) VALUES(2, 501, 1, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `order_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `mobile_number` bigint(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `total_amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_id`, `order_date`, `mobile_number`, `address`, `total_amount`) VALUES(1, '2022-10-15', 9503936697, 'Zimbambay', 390);
INSERT INTO `order_product` (`order_id`, `order_date`, `mobile_number`, `address`, `total_amount`) VALUES(2, '2022-10-15', 9503936697, 'Antartica', 20);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `flavour` varchar(25) NOT NULL,
  `ptype` varchar(25) NOT NULL,
  `size` varchar(25) NOT NULL,
  `rate` int(11) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(501, 'vanila', 'scoop', '50ml', 20, '501.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(502, 'vanila', 'scoop', '75ml', 30, '502.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(503, 'vanila', 'scoop', '100ml', 40, '503.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(504, 'vanila', 'shakes', '125ml', 70, '504.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(505, 'vanila', 'family_pack', '1000ml', 200, '505.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(506, 'chocolate', 'scoop', '75ml', 30, '506.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(507, 'chocolate', 'scoop', '100ml', 40, '507.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(508, 'chocolate', 'family_pack', '1000ml', 200, '508.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(509, 'chocolate', 'family_pack', '2000ml', 350, '509.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(510, 'chocolate', 'shakes', '200ml', 90, '510.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(511, 'mango', 'shakes', '125ml', 70, '511.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(512, 'mango', 'shakes', '150ml', 90, '512.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(513, 'mango', 'shakes', '200ml', 110, '513.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(514, 'strawberry', 'scoop', '75ml', 30, '514.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(515, 'strawberry', 'family_pack', '5000ml', 900, '515.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(516, 'strawberry', 'shakes', '75ml', 30, '516.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(517, 'vanila', 'family_pack', '5000ml', 900, '517.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(518, 'vanila', 'family_pack', '2000ml', 350, '518.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(519, 'american_nuts', 'scoop', '50ml', 30, '519.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(520, 'american_nuts', 'scoop', '70ml', 40, '520.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(521, 'american_nuts', 'family_pack', '1000ml', 300, '521.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(522, 'american_nuts', 'family_pack', '2000ml', 450, '522.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(523, 'rajbhog', 'family_pack', '1000ml', 200, '523.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(524, 'rajbhog', 'family_pack', '2000ml', 350, '524.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(525, 'rajbhog', 'family_pack', '5000ml', 300, '525.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(526, 'rajbhog', 'scoop', '100ml', 40, '526.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(527, 'chocochips', 'scoop', '50ml', 25, '527.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(528, 'chocochips', 'scoop', '75ml', 35, '528.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(529, 'chocochips', 'scoop', '100ml', 45, '529.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(530, 'family_pack', 'scoop', '2000ml', 400, '530.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(531, 'keshar', 'shakes', '125ml', 70, '531.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(532, 'keshar', 'shakes', '200ml', 90, '532.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(533, 'keshar', 'shakes', '150ml', 80, '533.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(534, 'pista', 'shakes', '125ml', 70, '534.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(535, 'pista', 'shakes', '200ml', 90, '535.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(536, 'pista', 'shakes', '150ml', 90, '535.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(537, 'pista', 'family_pack', '1000ml', 200, '537.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(538, 'mava', 'family_pack', '1000ml', 200, '538.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(539, 'mava', 'family_pack', '2000ml', 350, '539.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(540, 'mava', 'shakes', '125ml', 70, '540.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(541, 'sitafal', 'scoop', '50ml', 30, '541.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(542, 'sitafal', 'scoop', '75ml', 40, '542.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(543, 'sitafal', 'shakes', '125ml', 80, '543.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(544, 'tutty_fruity', 'family_pack', '1000ml', 350, '544.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(545, 'tutty_fruity', 'family_pack', '2000ml', 450, '545.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(546, 'tutty_fruity', 'family_pack', '5000ml', 1000, '546.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(547, 'pineapple', 'scoop', '50ml', 20, '547.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(548, 'pineapple', 'family_pack', '1000ml', 250, '548.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(549, 'pineapple', 'shakes', '125ml', 80, '549.jpg');
INSERT INTO `product` (`product_id`, `flavour`, `ptype`, `size`, `rate`, `image`) VALUES(550, 'swiscake', 'scoop', '75ml', 50, '550.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
