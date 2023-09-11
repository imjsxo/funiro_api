-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2023 at 01:30 PM
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
  `sku` varchar(100) NOT NULL,
  `additional_information` varchar(1000) NOT NULL,
  `id_subcategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `image`, `product_name`, `product_subname`, `price`, `product_desc`, `size`, `color`, `sku`, `additional_information`, `id_subcategory`) VALUES
(1, 'http://localhost:3001/images/sofa_marable.jpg', 'Marabel', 'Modular 100% Leather', 32000000, 'Sink into comfort with the casual-chic Marabel lounge. Thoughtfully crafted, the armless design will make your room look incredibly spacious whilst each piece is fully upholstered down the sides so that you can completely customise the configuration. For a ribbed look, the layered channel tufting is stitched into luxurious leather. Marabel will be the focal point of your living space and complement any interior style.\n\n- Features an engineered hardwood frame\n- High density foam and polyester fibre seat cushions\n- Available in multiple configurations including an ottoman\n- Offered in a variety of leather colours', '', 'brown', 'SSMB1', 'Back Rest Cushion Fill : High Density Foam + Polyester Fiber\r\nSeat Cushion : High Density Foam + Polyester Fiber : Suspension Type\r\nWebbing + Zig Zag Spring', 1),
(2, 'http://localhost:3001/images/wren-sofa.jpg', 'WREN', 'Fabric Lounge', 18900000, 'Enhance any interior with Wren\'s seamless blend of casual and sophisticated style. Its perfectly proportioned seat & back cushions, box-shaped arms, and concealed legs offer both support and elegance. Available in a wide array of premium fabrics and colours, making it easy to style.\r\n\r\n- Available in multiple configurations\r\n- Frame constructed from timber sourced from sustainably managed forests\r\n- Matching ottoman available\r\n- Upholstered in a range of quality fabrics and colours', '', 'black,brown', 'SFWR2', 'Back Rest Cushion Fill : 30% Feather + 70% Polyester Fiber\r\nSeat Cushion : 30% Feather + 70% Polyester Fiber\r\nSuspension Type : Webbing + Zig Zag Spring\r\n', 1),
(3, 'http://localhost:3001/images/octavia-sofa.jpg', 'Octavia', 'Octavia 3 Seat 100% Leather', 18200000, 'The Octavia features a compact profile with luxurious leather contributing to its sophisticated appeal. The generously deep seating and high back ensures great comfort.\\n\r\n\r\n\r\n- Offered in a variety of leather colours\r\n', '', 'black,navy,brown', 'SFOCT', 'Back Rest Cushion Fill : Foam + Fiber\r\n\r\nSeat Cushion : Foam + Fiber\r\n\r\nSuspension Type : Webbing + Zig-zag spring', 1),
(4, 'http://localhost:3001/images/berlin-sofa.jpg', 'Berlin', '100% Leather', 35890000, 'Taking inspiration from Danish Mid-Century design, this vintage leathersofa will be a stylish addition to your home. The combination of timber joinery and square track arms create a handsome aesthetic. The tall legs elevate the Berlin high off the ground for a thoroughly modern look. Make your sofa the statement piece of your home with our Berlin.', '', 'brown,black,violet', 'SFBRL', 'Available in 3 configurations including an ottoman.\r\nUpholstered in 100% vintage leather offered in a variety of shades.\r\nFrame constructed from engineered hardwood.\r\nPlush foam, feather and fibre cushion filling for comfort.', 1),
(5, 'http://localhost:3001/images/vitorio-sofa.jpg', 'Vitorio', 'Electric Recliners With Adjustable Headrests ', 32900000, 'Breaking the mould of traditional recliners, the Vitorio lounge infuses sleek, modern design with full motion functionality. Vitorio is upholstered in extra thick, pebble textured 100% leather. A soft-touch recliner button sits inside the square tailored arms, allowing for independent control of electric powered reclining functions. The fully upholstered leg rest folds neatly up and under the sofa, which sits elevated off the ground on steel legs\r\n\r\nOver 30 configurations available, including electric & battery powered recliners, both manual & electric adjustable headrests, chaise, corner and console.\r\n\r\nAvailable in both a family friendly Performance leather for added durability and a Vintage leather that features natural and unique markings and textures.\r\n\r\nIndividually pocketed coil spring with no sag spring suspensionKiln dried timber & plywood frame', '', 'navy,pink,grey', 'SFVTR', 'Back Rest Cushion Fill : No sag-spring & PU Foam with Polyester Fibre.\r\nSeat Cushion : Pocketed Coil Spring & Foam with Polyester Fibre.\r\nSuspension Type : Individually Pocketed Coil Spring with No Sag Spring and Polyester Fibre', 1),
(6, 'http://localhost:3001/images/brisbane_coffee_table.jpg', 'Brisbane Coffee Table', 'Fjord Oak Finish', 7800000, 'The Brisbane Range is bold yet beautiful and showcases incredible hand-made craftmanship from natural oak timber. Each piece is uniquely different featuring its own natural variation in texture and grain with the added character of knots, mineral streaks and sap. Complete the look with additional pieces from our Brisbane range.\r\n\r\n- The Brisbane range includes a dining table, buffet, TV unit and lamp table.\r\n\r\n- The Brisbane dining table is available in 2 sizes (225cm and 285cm)\r\nAll pieces feature quality Fjord oak timber', '', 'brown', 'CFTBRS', '- Length (cm)150.\r\n\r\n- Height (cm)40.\r\n\r\n- Depth (cm)80.', 2),
(7, 'http://localhost:3001/images/maliante_coffee_table.jpg', 'Maliante Coffee Table', 'Oak with Herringbone Pattern', 6900000, 'The Maliante range is crafted in a distinctive herringbone pattern that showcases the grains and patterns of the natural oak timber. The Scandi-inspired design aims to brighten any living area. Each piece is framed with authentic wood joinery, giving it a clean and neat appearance. This range is available in different statement furniture pieces to choose from to best decorate your living or dining room.', '', 'brown', 'CFMLT', 'Length (cm)130.\r\n\r\nHeight (cm)40.\r\n\r\nDepth (cm)70.', 2),
(8, 'http://localhost:3001/images/francesca_coffee_table.jpg', 'Francesca Coffee Table', 'Smoked Oak Finish', 9900000, 'The sleek and stylish Francesca range includes modern pieces constructed with a unique combination of oak, metal, sintered stone and solid ash materials. The round oak dining table features fluted panelling and its sintered stone cabinets have a grey marbling finish. Each piece is distinguished by its unique design characteristics, such as ribbed textured cabinet panels on the TV unit and a tapered drum base for the dining table. Each piece is designed to last, with oak timber and a metal plate used in the dining table\'s base for added stability and durability.\r\n\r\n- The Francesca range includes a Dining Table, Buffet, Coffee Table, and TV Unit', '', 'black', 'CFFRCS', 'Length (cm)160.\r\n\r\nHeight (cm)38.\r\n\r\nDepth (cm)80.', 2),
(9, 'http://localhost:3001/images/agoura-coffee-timber-table.jpg', 'Agoura Coffee Table', 'Acacia with Sand-Blasted Finish', 6500000, 'The Agoura range is a modernised take on coastal design, with a touch of urban industrial style. Crafted with lightly sand-blasted acacia wood, this range is available in 11 different pieces to decorate your home. Each piece is framed by beveled wood joinery for a neat and clean appearance. The natural textures and tonal variations of solid acacia wood show through, giving a unique look to each and every unit.\r\n\r\n- The living room range includes a dining table, buffet, console, coffee table, side table, TV units, and mirror\r\n\r\n- The bedroom range includes an acacia wood bed frame, dresser, tallboy, and bedside table', '', 'cream', 'CFAGR', 'Length (cm)130.\r\n\r\nHeight (cm)40.\r\n\r\nDepth (cm)70.', 2),
(10, 'http://localhost:3001/images/kirby-black-coffee-table.jpg', 'Kirby Coffee Table', 'American Ash with Charcoal Finish', 6500000, 'The Kirby range’s streamlined aesthetic combined with impressive solidity delivers durability and modern styling to any contemporary living area. Featuring angular pieces including a dining table, coffee table and a lowline TV unit, the Kirby range has everything you need to enjoy your living space. A large-scaled lowline collection, the range is built with crisp and uniform grain in American Ash with a charcoal coloured finish. The Kirby range is a Nick Scali exclusive and remains an enduring customer favourite.', '', 'black,cream', 'CFKRB', 'Length (cm)160.\r\n\r\nHeight (cm)36.\r\n\r\nDepth (cm)85.', 2),
(11, 'http://localhost:3001/images/otho-timber-coffee-table.jpg', 'Otho Coffee Table', 'Acacia with Sand-Blasted Finish', 5700000, 'The rustic Otho range highlights natural acacia wood with a sand-blasted textured element to complement its rounded floating post and rail framework. This attractive and versatile range offers convenience in features such as an extendable dining table and many matching pieces such as a TV unit, bench, buffet, nest coffee tables and console. Otho is available in a number of beautifully designed furniture pieces, exclusive to Nick Scali. \r\n\r\nThe range consists of an acacia wood dining table, buffet, console, coffee table, side table, TV unit, bedframe, dresser, tallboy and bedside table\r\nFinished with integrated angled door and drawer pulls', '', 'black,cream', 'CFOTT', 'Length (cm)130.\r\n\r\nHeight (cm)40.\r\n\r\nDepth (cm)70.', 2),
(12, 'http://localhost:3001/images/brisbane_lamp_table_oak.jpg', 'Brisbane Lamp Table', 'Fjord Oak Finish', 3900000, 'The Brisbane Range is bold yet beautiful and showcases incredible hand-made craftmanship from natural oak timber. Each piece is uniquely different featuring its own natural variation in texture and grain with the added character of knots, mineral streaks and sap. Complete the look with additional pieces from our Brisbane range:\r\n\r\n\r\n- The Brisbane range includes a dining table, buffet, TV unit and lamp table.\r\n- The Brisbane dining table is available in 2 sizes (225cm and 285cm).\r\n- All pieces feature quality Fjord oak timber.', '', 'cream,brown,navy', 'STBBRS', 'Length (cm)60.\r\n\r\nHeight (cm)50.\r\n\r\nDepth (cm)60.', 6),
(13, 'http://localhost:3001/images/agoura-timber-nest-side-lamp-table.jpg', 'Agoura Nest Side Table', 'Acacia with Sand-Blasted Finish', 4500000, 'The Agoura range is a modernised take on coastal design, with a touch of urban industrial style. Crafted with lightly sand-blasted acacia wood, this range is available in 11 different pieces to decorate your home. Each piece is framed by beveled wood joinery for a neat and clean appearance. The natural textures and tonal variations of solid acacia wood show through, giving a unique look to each and every unit.', '', 'grey,navy,brown', 'STCAGR', 'Length (cm)60.\r\n\r\nHeight (cm)55.\r\n\r\nDepth (cm)60.', 6),
(14, 'http://localhost:3001/images/ceres-ceramic-lamp-table_1.jpg', 'Ceres Side Table', 'Ceramic with Steel Legs', 3700000, 'Inspired by modern sculpture, each piece has a minimalistic base constructed from steel. Featured in the ceramic dining table and TV unit, a thin ceramic top sits over a smoked oak timber frame, creating a clean and refined aesthetic. The range features the luxury look of natural marble, built with highly durable materials to ensure sturdiness required for everyday use.', '', 'black,navy', 'STBCRS', 'Length (cm)40. \r\n\r\nHeight (cm)50. \r\n\r\nDepth (cm)36.', 6),
(15, 'http://localhost:3001/images/maliante_console.jpg', 'Maliante Console', 'Oak with Herringbone Pattern', 4900000, 'The Maliante range is crafted in a distinctive herringbone pattern that showcases the grains and patterns of the natural oak timber. The Scandi-inspired design aims to brighten any living area. Each piece is framed with authentic wood joinery, giving it a clean and neat appearance. This range is available in different statement furniture pieces to choose from to best decorate your living or dining room.', '', 'brown,navy', 'CSTMLLT', 'Length (cm)140.\r\n\r\nHeight (cm)80.\r\n\r\nDepth (cm)35.', 4),
(16, 'http://localhost:3001/images/provence-marble-timber-console_1.jpg', 'Provence Console', 'High Density Marble', 9500000, 'The luxurious Provence range is inspired by classic modern design and is built to last. Each piece features a high density marble surface supported by a solid black oak frame and legs. The high density 18mm natural marble is covered in a Jazz film for extra glamour and durability. The range is a Nick Scali exclusive and with pieces such as a stunning solid oak dining table and white marble TV unit, it’s clear to see why the Provence range remains a customer favourite.', '', 'black,navy,grey', 'CTPRV', 'Length (cm)150.\r\n\r\nHeight (cm)75.\r\n\r\nDepth (cm)50.', 4),
(17, 'http://localhost:3001/images/jordana-timber-console.jpg', 'Jordana Console', 'South American Eucalyptus', 9670000, 'Our Jordana range is a striking marriage of modern design and natural materials. Made from beautiful South American Eucalyptus, the range features a wood console table, and solid timber bed frame as well as other pieces to meet the interior design needs in your living space or bedroom. Sleek and simple tapering on the top edge of the frame are complemented by the geometric design of the legs. The extra thick timber profiles accentuate the beauty of the natural timber grain. The Jordana range is an exclusive to Nick Scali, sure to add natural elegance to your home.', '', 'cream,black', 'CTJRD', 'Length (cm)200.\r\n\r\nHeight (cm)75.\r\n\r\nDepth (cm)48.', 4),
(18, 'http://localhost:3001/images/aric_glass_console.jpg', 'Aric Console', 'Glass', 4800000, 'The Aric Console, made entirely of stunning glass, will add a touch of elegance and sophistication to any living space. With clean lines and a stunning silhouette, the Aric Console is perfect for those who appreciate minimalist design.', '', 'blue,pink', 'CTGAC', 'Length (cm)120\r\n\r\nHeight (cm)77\r\n\r\nDepth (cm)40', 4),
(19, 'http://localhost:3001/images/cobble-armchair.jpg', 'Cobble swivel armchair', 'Fabric', 9500000, 'The effortlessly stylish Cobble fabric armchair is perfect for lounging in comfort. An essential piece for the modern day home. With high-density foam and polyester fiber filling, it provides a soft yet supportive seat that conforms to your body. Available in an armchair and swivel armchair.', '', 'black,cream,navy', 'ARCCBBL', 'Length (cm)86.\r\n\r\nHeight (cm)73.\r\n\r\nDepth (cm)83.', 5),
(20, 'http://localhost:3001/images/trista-armchair.jpg', 'Trista Armchair', 'Fabric', 8500000, 'The Trista lounge is crafted in a combination of fabric, steel and solid wood, giving it a modern industrial aesthetic. Sitting atop a solid wood apron carried by steel pin legs, its angular frame contrasts with soft upholstered fabric. With a tapered track arm, padded and topstitched, the Trista offers both style and comfort.\r\nThis stunning fabric armchair is available in a multitude of lavish fabrics. The timber skirting and sleek metal legs on a sturdy timber frame ensures you are pairing style with functionality and durability!', '', 'black,blue,green', '', 'Length (cm)95\r\n\r\nHeight (cm)83\r\n\r\nDepth (cm)88', 5),
(21, 'http://localhost:3001/images/stuzo-armchair.jpg', 'Stuzo armchair', 'Fabric', 7600000, 'The Stuzo armchair and ottoman is timeless and cozy, offering a modern take on comfortable living. Made for relaxation, this piece features a back rest cushion filled with D/29 high-density foam with an elastic webbing suspension to ensure softness. Tailored with our Ancona fabric and available in a variety of colours, the Stuzo is stylish and durable. Carried by a Beech timber frame and cylindrical legs, Stuzo is sturdy and aesthetically pleasing.', '', 'black,cream,green,navy', 'ARMSTZZ', 'Length (cm)85.\r\n\r\nHeight (cm)97.\r\n\r\nDepth (cm)85.', 5),
(22, 'http://localhost:3001/images/francesca_tv.jpg', 'Francesca TV Entertainment Unit', 'Smoked Oak Finish', 1900000, 'The sleek and stylish Francesca range includes modern pieces constructed with a unique combination of oak, metal, sintered stone and solid ash materials. The round oak dining table features fluted panelling and its sintered stone cabinets have a grey marbling finish. Each piece is distinguished by its unique design characteristics, such as ribbed textured cabinet panels on the TV unit and a tapered drum base for the dining table. Each piece is designed to last, with oak timber and a metal plate used in the dining table\'s base for added stability and durability.', '', 'black', 'TVUFRS01', 'Length (cm)220.\r\n\r\nHeight (cm)50.\r\n\r\nDepth (cm)44.', 3),
(23, 'http://localhost:3001/images/brisbane_tv_unit.jpg', 'Brisbane TV Entertainment Unit', 'Fjord Oak Finish', 19900000, 'The Brisbane Range is bold yet beautiful and showcases incredible hand-made craftmanship from natural oak timber. Each piece is uniquely different featuring its own natural variation in texture and grain with the added character of knots, mineral streaks and sap. Complete the look with additional pieces from our Brisbane range:\r\n\r\nThe Brisbane range includes a dining table, buffet, TV unit and lamp table.\r\nThe Brisbane dining table is available in 2 sizes (225cm and 285cm)\r\nAll pieces feature quality Fjord oak timber', '', 'cream,black', 'TVUBRRB54', 'Length (cm)170.\r\n\r\nHeight (cm)55.\r\n\r\nDepth (cm)44.', 3),
(24, 'http://localhost:3001/images/llaverton_floor_rug.jpg', 'Laverton Rug', 'Rugs', 5900000, 'Complete your living space with the contemporary Laverton Rug. This versatile rug features a unique pattern to complement your furniture and living spaces. Handtufted with wool and polyester for a luxururious aesthetic.', '', 'grey', 'RULVT039', 'Length (cm)280.\r\n\r\nDepth (cm)200.', 7),
(25, 'http://localhost:3001/images/rohan_grey__2.jpg', 'Rohan Rug', '', 9900000, 'The Rohan rug is unique with its bold design, making an impact on your living space. Handwoven, this rug balances a variety of tones and textures, creating a seamless representation of modern style. Crafted with hair-on-hide leather, the Rohan rug epitomises luxury living with its soft touch and raw aesthetic.', '', 'grey,black', 'RUGRH056', 'Length (cm)280.\r\n\r\nDepth (cm)200.', 7),
(26, 'http://localhost:3001/images/corbit_grey_rug.jpg', 'Corbit Rug', '', 10900000, 'Bring your living space to life with the stunning Corbit rug. Made from 100% leather hide, the Corbit is soft to the touch and appealing to the eye. A classic Herringbone design, the Corbit will never go out of style. Available in two different sizes to match a range of living room needs.', '', 'grey,black', 'RUGCBT78', 'Length (cm)280.\r\n\r\nHeight (cm)200.\r\n\r\nDepth (cm)200.', 7),
(27, 'http://localhost:3001/images/penza-floor-rug-charcoal.jpg', 'Penza Rug', '', 8900000, 'Intricately designed, the Penza rug is inspired by coastal styles to elevate any living space. Crafted with a wool and viscose blend, this floor rug is hand-tufted, offering a luxurious feel and aesthetic. Available in an ivory/beige colour, Penza’s neutral tone allows for the versatility to complement every home. Offered in two sizes, this rug can be customised to fit any space.', '', 'grey,black,navy', 'RUGPNZ654', 'Length (cm)280.\r\n\r\nHeight (cm)200.\r\n\r\nDepth (cm)200.', 7),
(28, 'http://localhost:3001/images/agoura-square-timber-mirror.jpg', 'Agoura Mirror', 'Acacia with Sand-Blasted Finish', 2590000, 'The Agoura range is a modernised take on coastal design, with a touch of urban industrial style. Crafted with lightly sand-blasted acacia wood, this range is available in 11 different pieces to decorate your home. Each piece is framed by beveled wood joinery for a neat and clean appearance. The natural textures and tonal variations of solid acacia wood show through, giving a unique look to each and every unit.', '', 'brown,cream,black', 'MRRAGR675', 'Length (cm)120.\r\n\r\nDepth (cm)3.', 8),
(29, 'http://localhost:3001/images/provence-round-timber-mirror.jpg', 'Provence Mirror', 'Black Oak', 3700000, 'The luxurious Provence range is inspired by classic modern design and is built to last. Each piece features a high density marble surface supported by a solid black oak frame and legs. The high density 18mm natural marble is covered in a Jazz film for extra glamour and durability. The range is a Nick Scali exclusive and with pieces such as a stunning solid oak dining table and white marble TV unit, it’s clear to see why the Provence range remains a customer favourite.', '', 'black', 'MRRPVC245', 'Length (cm)90.\r\n\r\nDepth (cm)90.', 8),
(30, 'http://localhost:3001/images/francesca_oak_top_new_shoot_2.jpg', 'Francesca Round Dining Table', 'Smoked Oak Finish', 18900000, 'Our Francesca range offers a bold and contemporary look for your living and dining spaces whilst remaining elegant. This range features gorgeous sintered stone which is complimentary of any style and will instantly elevate your space. The smokey black oak timber also makes a statement and contributes to the luxuriousness of this collection. Our Francesca range is available in multiple furniture pieces to be featured throughout your entire home.', '', 'black,grey,navy,brown', 'DTFRS167', 'Length (cm)160.\r\n\r\nHeight (cm)76.\r\n\r\nDepth (cm)160.', 9),
(31, 'http://localhost:3001/images/brisbane-dining-table.jpg', 'Brisbane Dining Table', 'Fjord Oak Finish', 15000000, 'The Brisbane Range is bold yet beautiful and showcases incredible hand-made craftmanship from natural oak timber. Each piece is uniquely different featuring its own natural variation in texture and grain with the added character of knots, mineral streaks and sap. Complete the look with additional pieces from our Brisbane range:\r\n\r\nThe Brisbane range includes a dining table, buffet, TV unit and lamp table.\r\nThe Brisbane dining table is available in 2 sizes (225cm and 285cm)\r\nAll pieces feature quality Fjord oak timber', '', 'black,brown', 'DTBRS582', 'Length (cm)225.\r\n\r\nHeight (cm)76.\r\n\r\nDepth (cm)115.', 9),
(32, 'http://localhost:3001/images/parc_dining_oval.jpg', 'Parc Oval Dining Table', 'Premium Marble Film', 24900000, 'Our Parc range is elegant and modern. This range features stunning marble tops in striking contrast to the gorgeous, ribbed oak timber which catches the eye. Our Parc range is available in various furniture pieces and will be a standout addition to your living and dining room.\r\n\r\nThe Parc living room range includes: oval coffee table (140cm), round coffee table (110cm), lamp table, TV entertainment unit and console.\r\nThe Parc dining room range includes: round dining table (150cm), round dining table (120cm), oval dining table (230cm) and matching buffet\r\nThe Parc bedroom range includes: bedside table, tallboy and dresser\r\nAll pieces feature ribbed oak timber. Tops are covered with a jazz marble film\r\nTabletops are coated with polyurethane resin which provides protection against stains from liquids and oils', '', 'brown,black', 'DTPRC967', 'Length (cm)230.\r\n\r\nHeight (cm)75.\r\n\r\nDepth (cm)115.', 9),
(33, 'http://localhost:3001/images/tokyo-diningchair.jpg', 'Tokyo Dining Chair', 'Solid Oak and Cord', 2990000, 'Bring one of the finest Scandinavian furniture designs into your home with our Tokyo dining chairs. These wishbone style dining chairs are lightweight and spacious with clean stylish lines. Featuring a backrest and armrests with a subtle curve for comfort and support. Our timeless Tokyo dining chairs can be easily paired with a range of dining tables and living room accessories.', '', 'brown', 'DCHTKY638', 'Length (cm)57.\r\n\r\nHeight (cm)77.\r\n\r\nDepth (cm)60.', 10),
(34, 'http://localhost:3001/images/pierce-grey-dining-chair.jpg', 'Pierce Dining Chair', 'Fabric', 2990000, 'Our Pierce dining chair uses premium materials to achieve an elegant aesthetic. Pierce\'s high back wraps around to cradle the seat in a grey coloured Sunday fabric. This is complemented with angular black rubberwood legs to support the wide base. Pierce is sure to become a statement piece in your dining suite.', '', 'black,grey', 'DCHPRR2283', 'Length (cm)53.\r\n\r\nHeight (cm)89.\r\n\r\nDepth (cm)64,5', 10),
(35, 'http://localhost:3001/images/cooper_tall_cabinet.jpg', 'Cooper Tall Cabinet', 'Concrete with Solid Acacia', 18500000, 'The Cooper range introduces a transitional farmhouse design, defined by solid acacia wood. It is available in 11 furniture pieces, modernised in a crisp white concrete surface. The grey wash acacia frame is hand sanded creating soft surfaces and its natural finish allows the tones and textures of the timber to show through. Infusing bold, rustic elements with these pieces are the perfect statement in your space.', '', 'brown,cream,navy,black', 'BFTCPR6393', 'Length (cm)160.\r\n\r\nHeight (cm)140.\r\n\r\nDepth (cm)45.', 11),
(36, 'http://localhost:3001/images/marconi-carrara-white-marble-oak-buffet.jpg', 'Marconi Buffet', 'Italian Carrara Marble', 18500000, 'Experience modern luxury with the Marconi range, combining elements of oak timber and exquisite Italian Carrara marble. This versatile collection will add glamour to any area of your home and features a round marble coffee table and dining table, and a rectangle dining table, allowing customisability for any preference.', '', 'brown,cream,black', 'BFTHSJ769', 'Length (cm)150.\r\n\r\nHeight (cm)85.\r\n\r\nDepth (cm)50.', 11),
(37, 'http://localhost:3001/images/blox_buffet.jpg', 'Blox Buffet', 'Australian Oak ', 17500000, 'Our Blox range combines beautiful smooth Australian oak timber tops with contemporary angular legs to create a range of furniture that is streamlined and stylish. You can achieve continuity and flow throughout your home with the entire Blox range.', '', 'cream,brown', 'BFTBLK679', 'Length (cm)220.\r\n\r\nHeight (cm)85.\r\n\r\nDepth (cm)45.', 11),
(38, 'http://localhost:3001/images/parc_buffet_side.jpg', 'Parc Buffet ', 'Premium Marble Film', 22900000, 'Our Parc range is elegant and modern. This range features stunning marble tops in striking contrast to the gorgeous, ribbed oak timber which catches the eye. Our Parc range is available in various furniture pieces and will be a standout addition to your living and dining room.\r\n\r\nThe Parc living room range includes: oval coffee table (140cm), round coffee table (110cm), lamp table, TV entertainment unit and console.\r\nThe Parc dining room range includes: round dining table (150cm), round dining table (120cm), oval dining table (230cm) and matching buffet\r\nThe Parc bedroom range includes: bedside table, tallboy and dresser\r\nAll pieces feature ribbed oak timber. Tops are covered with a jazz marble film\r\nTabletops are coated with polyurethane resin which provides protection against stains from liquids and oils', '', 'cream,black,navy,brown', 'BFTPRC793', 'Length (cm)150.\r\n\r\nHeight (cm)85.\r\n\r\nDepth (cm)48.', 11),
(39, 'http://localhost:3001/images/urban_roomview.jpg', 'Urban Mattress', 'Base is not included', 8900000, '-', '', 'black', 'MTRURB682', 'Length (cm)153\r\n\r\nHeight (cm)31\r\n\r\nDepth (cm)203', 12),
(40, 'http://localhost:3001/images/mattresses_natura.jpg', 'Naturo Mattress Medium', 'Base is not included', 17900000, '-', '', 'cream', 'MTTRBTR39472', 'Length (cm)153.\r\n\r\nHeight (cm)34.\r\n\r\nDepth (cm)203.', 12),
(41, 'http://localhost:3001/images/otho_queen_bed.jpg', 'Otho Bed Frame', 'Sand-Blasted Finish', 12900000, 'The rustic Otho range highlights natural acacia wood with a sand-blasted textured element to complement its rounded floating post and rail framework. This attractive and versatile range offers convenience in features such as an extendable dining table and many matching pieces such as a TV unit, bench, buffet, nest coffee tables and console. Otho is available in a number of beautifully designed furniture pieces, exclusive to Nick Scali.\r\n\r\nThe range consists of an acacia wood dining table, buffet, console, coffee table, side table, TV unit, bedframe, dresser, tallboy and bedside table\r\nFinished with integrated angled door and drawer pulls', '', 'brown,cream,blue', 'BEDOTH482', 'Length (cm)164.\r\n\r\nHeight (cm)120.\r\n\r\nDepth (cm)214.', 13),
(42, 'http://localhost:3001/images/cora_bed_livid2.jpg', 'Cora Bed Frame', 'Fabric', 14900000, 'The Cora Bed frame is a supple and luxurious piece designed for sink-in relaxation. The bed frame features a comfortable PU foam and polyester fibre padded headboard, with padding extending all around the frame. Cora is covered in your choice of premium fabric available in a wide range of colours to match your bedroom decor. This generously sized bed frame is the perfect centrepiece to enhance your bedroom\'s comfortability.\r\n\r\nThe dimensions of the Cora bed frame are 204 x 254 x 102.5 (W x D x H)\r\nMade to order from a range of fabrics and colours\r\nDurable pinewood and plywood combination frame\r\nMetal frame and slat suspension to support your mattress size', '', 'grey,navy', 'BEDCRR3920', 'Length (cm)204\r\n\r\nHeight (cm)102.5\r\n\r\nDepth (cm)254', 13);

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
(13, 'http://localhost:3001/images/subcategories/bedroom/bed-frames.jpg', 'Bed Frames', 3);

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
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id_subcategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
