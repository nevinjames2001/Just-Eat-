-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 05:35 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `000825144`
--

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Juicy Masala Paneer Kathi Roll', 4, 'Juicy Masala Paneer Kathi Roll loaded with Masala Paneer chunks, onion & Mayo.', 1, 'images/Masala_Paneer_Kathi_Roll.jpg', 'ENABLE'),
(59, 'Meurig Fish', 6, 'Try Meurig - A whole Pomfret fish grilled with tangy marination & served with grilled onions and tomatoes.', 2, 'images/Meurig.jpg', 'ENABLE'),
(60, 'Chocolate Hazelnut Truffle', 9, 'Lose all senses over this very delicious chocolate hazelnut truffle.', 3, 'images/Chocolate_Hazelnut_Truffle.jpg', 'ENABLE'),
(61, 'Happy Happy Choco Chip Shake', 8, 'Happy Happy Choco Chip Shake - a perfect party sweet treat.', 1, 'images/Happy_Happy_Choco_Chip_Shake.jpg', 'ENABLE'),
(62, 'Lasagna', 6, 'flat pasta noodle, usually baked in layers in the oven, Order Now!!!', 2, 'images/Lasagna.jpg', 'ENABLE'),
(63, 'Risotto', 7, ' holy trinity of Italian starches is rice, which is often eaten as the creamy, luxurious risotto', 3, 'images/Risotto.jpg', 'ENABLE'),
(65, 'Coffee', 2, 'concentrated coffee made by forcing pressurized water through finely ground coffee beans.', 4, 'images/coffee.jpg', 'DISABLE'),
(66, 'Tea', 2, 'The simple elixir of tea is of our natural world.', 4, 'images/tea.jpg', 'DISABLE'),
(68, 'Paneer', 8, 'it', 6, 'images/paneer pakora.jpg', 'DISABLE'),
(69, 'Coffee', 3, 'concentrated coffee made by forcing pressurized water through finely ground coffee beans.', 2, 'images/coffee.jpg', 'ENABLE'),
(70, 'Tea', 2, 'The simple elixir of tea is of our natural world.', 2, 'images/tea.jpg', 'ENABLE'),
(71, 'Samosa', 4, 'Cocktail Crispy Samosa..', 2, 'images/samosa.jpg', 'ENABLE'),
(72, 'Dumplings', 4, 'minced meat and chopped vegetables wrapped in a thin dough skin', 2, 'images/dumplings.png', 'ENABLE'),
(73, 'Puff', 3, 'Vegetable Puff, a snack with crisp-n-flaky outer layer and mixed vegetables stuffing', 2, 'images/puff.jpg', 'ENABLE'),
(74, 'Pepperoni Pizza', 20, 'meat mixture of beef and pork that has been cured and seasoned with paprika and chili powder', 2, 'images/pep_pizza.jpg', 'ENABLE'),
(77, 'Pizza', 25, 'Pure Vegetable and Tasty.', 2, 'images/Pizza.jpg', 'ENABLE'),
(78, 'French Fries', 7, 'Pure Veg and Tasty.', 2, 'images/frenchfries.jpg', 'ENABLE'),
(79, 'Wontons', 4, 'customary food for people to eat on the winter solstice since the Tang Dynasty', 2, 'images/Wontons.jfif', 'ENABLE'),
(80, 'Happy Happy Choco Chip Shake', 8, 'Happy Happy Choco Chip Shake - a perfect party sweet treat.', 1, 'images/Happy_Happy_Choco_Chip_Shake.jpg', 'ENABLE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
