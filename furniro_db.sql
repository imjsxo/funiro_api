-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2023 at 07:55 AM
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
-- Database: `furniro_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `image`, `category_name`) VALUES
(1, 'http://localhost:3001/images/dining.png', 'Dining'),
(2, 'http://localhost:3001/images/living.png', 'Living'),
(3, 'http://localhost:3001/images/bedroom.png', 'Bedroom');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_subname` varchar(100) NOT NULL,
  `price` bigint(20) NOT NULL,
  `product_desc` text NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `rating` float NOT NULL,
  `sku` varchar(100) NOT NULL,
  `additional_information` text NOT NULL,
  `id_subcategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `image`, `product_name`, `product_subname`, `price`, `product_desc`, `size`, `color`, `rating`, `sku`, `additional_information`, `id_subcategory`) VALUES
(1, 'http://localhost:3001/images/agoura_dt.jpg', 'Agoura Extendable Dining Table', 'Acacia with Sand-Blasted Finish', 10000000, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'L', 'coklat,merah', 0, '-', 'Length (cm)180\r\nHeight (cm)76\r\nDepth (cm)100', 2),
(2, 'http://localhost:3001/images/azurro_corner_terminal_electric_notalent.jpg', 'Azurro Corner', '100% Leather', 15500000, '-', '-', '-', 0, '-', '-', 3),
(3, 'http://localhost:3001/images/tanami-timber-tv-entertainment-unit.jpg', 'Tanami TV Entertainment Unit', 'Australian Oak with Geometric Legs', 8000000, '-', '-', '-', 0, '-', '-', 3),
(4, 'http://localhost:3001/images/noida-table-lamp.jpg', 'Noida Table Lamp', 'Good table Lamp', 2000000, '-', '-', '-', 0, '-', '-', 1),
(5, 'http://localhost:3001/images/sofa_marable.jpg', 'Marabel', '6 Seat Corner Modular 100% Leather', 32000000, 'Sink into comfort with the casual-chic Marabel lounge. Thoughtfully crafted, the armless design will make your room look incredibly spacious whilst each piece is fully upholstered down the sides so that you can completely customise the configuration. For a ribbed look, the layered channel tufting is stitched into luxurious leather. Marabel will be the focal point of your living space and complement any interior style.\r\n\r\n- Features an engineered hardwood frame\r\n- High density foam and polyester fibre seat cushions\r\n- Available in multiple configurations including an ottoman\r\n- Offered in a variety of leather colours', 'Back Rest Cushion Fill : High Density Foam + Polyester Fiber\r\nSeat Cushion : High Density Foam + Pol', 'coklat', 0, 'SSMB1', '', 1),
(6, 'http://localhost:3001/images/wren-sofa.jpg', 'WREN', 'Fabric Lounge', 18900000, 'Enhance any interior with Wren\'s seamless blend of casual and sophisticated style. Its perfectly proportioned seat & back cushions, box-shaped arms, and concealed legs offer both support and elegance. Available in a wide array of premium fabrics and colours, making it easy to style.\r\n\r\n- Available in multiple configurations\r\n- Frame constructed from timber sourced from sustainably managed forests\r\n- Matching ottoman available\r\n- Upholstered in a range of quality fabrics and colours', '', 'putih,hitam', 0, 'SFWR2', 'Back Rest Cushion Fill : 30% Feather + 70% Polyester Fiber\r\nSeat Cushion : 30% Feather + 70% Polyester Fiber\r\nSuspension Type : Webbing + Zig Zag Spring\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id_subcategory` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id_subcategory`, `image`, `subcategory_name`, `id_category`) VALUES
(1, 'http://localhost:3001/images/subcategories/living/sofa.jpg', 'Sofa', 2),
(2, 'http://localhost:3001/images/subcategories/living/coffee-side-tables.jpg', 'Coffe Tables', 2),
(3, 'http://localhost:3001/images/subcategories/living/entertainment-units.jpg', 'Entertainment Units', 2),
(4, 'http://localhost:3001/images/subcategories/living/console-table.jpg', 'Console Tables', 2),
(5, 'http://localhost:3001/images/subcategories/living/armchairs.jpg', 'Armchairs', 2),
(6, 'http://localhost:3001/images/subcategories/living/side_table.jpg', 'Side Tables', 2),
(7, 'http://localhost:3001/images/subcategories/living/rugs.jpg', 'Rugs', 2),
(8, 'http://localhost:3001/images/subcategories/living/mirrors.jpg', 'Mirrors', 2),
(9, 'http://localhost:3001/images/subcategories/dining/dining-table.jpg', 'Dining Tables', 1),
(10, 'http://localhost:3001/images/subcategories/dining/dining-chair.jpg', 'Dining Chairs', 1),
(11, 'http://localhost:3001/images/subcategories/dining/buffet.jpg', 'Buffets & Sideboards', 1),
(12, 'http://localhost:3001/images/subcategories/bedroom/mattresses.jpg', 'Mattresses', 3),
(13, 'http://localhost:3001/images/subcategories/bedroom/bed-frames.jpg', 'Bed Frames', 3),
(14, 'http://localhost:3001/images/subcategories/bedroom/bedside-table.jpg', 'Bedside Tables', 3),
(15, 'http://localhost:3001/images/subcategories/bedroom/talboy.jpg', 'Tallboys', 3),
(16, 'http://localhost:3001/images/subcategories/bedroom/dresser.jpg', 'Dressers', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id_subcategory`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id_subcategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
