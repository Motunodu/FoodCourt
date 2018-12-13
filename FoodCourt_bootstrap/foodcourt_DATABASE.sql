-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 02:51 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FoodCourt`
--

-- --------------------------------------------------------

--
-- Table structure for table `Menu_Order`
--

CREATE TABLE IF NOT EXISTS `Menu_Order` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(150) NOT NULL,
  `Lastname` varchar(150) NOT NULL,
  `InputAddress` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `PhoneNumber` int(150) NOT NULL,
  `MealOption` varchar(150) NOT NULL,
  `RiceCombo` varchar(150) DEFAULT NULL,
  `RicePlate` int(150) DEFAULT NULL,
  `SwallowCombo` varchar(150) DEFAULT NULL,
  `SwallowNumber` int(150) DEFAULT NULL,
  `Meat` varchar(150) DEFAULT NULL,
  `MeatNumber` int(150) DEFAULT NULL,
  `Snacks` varchar(150) DEFAULT NULL,
  `SnacksNumber` int(150) DEFAULT NULL,
  `Drinks` varchar(150) DEFAULT NULL,
  `DrinksNumber` int(150) DEFAULT NULL,
  `date_delivery` date NOT NULL,
  `time_delivery` time NOT NULL,
  `Payment` varchar(150) NOT NULL,
  `created_date` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Menu_Order`
--

INSERT INTO `Menu_Order` (`id`, `Firstname`, `Lastname`, `InputAddress`, `state`, `PhoneNumber`, `MealOption`, `RiceCombo`, `RicePlate`, `SwallowCombo`, `SwallowNumber`, `Meat`, `MeatNumber`, `Snacks`, `SnacksNumber`, `Drinks`, `DrinksNumber`, `date_delivery`, `time_delivery`, `Payment`, `created_date`) VALUES
(2, '', '', '', '', 0, '', '', 0, '', 0, '', 0, '', 0, '', 0, '0000-00-00', '00:00:00', '', '0000-00-00 00:00:00.000000'),
(7, '', '', '', '', 0, '', '', 0, '', 0, '', 0, '', 0, '', 0, '0000-00-00', '00:00:00', '', '2018-12-13 10:44:30.000000'),
(8, 'motunrayo', 'kilanko', '11,ola stree', '', 0, 'Swallow Combo', 'Jollof Rice with Dodo', 0, 'Pounded yam with Egusi soup', 0, 'Fried Beef', 0, 'Meatpie', 0, 'Bottled water', 0, '0000-00-00', '00:00:00', 'Pay on delivery', '2018-12-13 14:34:54.000000'),
(9, 'motun', '', '', '', 2147483647, 'Swallow Combo', 'Jollof Rice with Dodo', 0, 'Pounded yam with Efo riro', 0, 'Fried Chicken', 1, 'Meatpie', 0, 'Lemonade', 0, '2018-12-22', '11:00:00', 'Pay on delivery', '2018-12-13 14:57:26.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Menu_Order`
--
ALTER TABLE `Menu_Order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Menu_Order`
--
ALTER TABLE `Menu_Order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
