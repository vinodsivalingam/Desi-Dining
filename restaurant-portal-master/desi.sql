-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2016 at 02:43 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `desi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `ctid` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `menuid` int(11) NOT NULL,
  `menuname` varchar(50) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `qnty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `hotelid` int(11) NOT NULL,
  `custid` varchar(50) NOT NULL,
  `sessionid` varchar(50) NOT NULL,
  PRIMARY KEY (`ctid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`ctid`, `date`, `time`, `menuid`, `menuname`, `price`, `qnty`, `total`, `hotelid`, `custid`, `sessionid`) VALUES
(63, '2016-03-13', '02:42:20', 149, 'Aloo Tikki with Chana', '5.29', 1, 5, 0, 'reshmakw@gmail.com', 'dq6q7kjlmh7f8g0km91h678i44');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `message`) VALUES
('Reshma', 'reshmakw@gmail.com', 'Amazing Webpage'),
('Vinod', 'vinod@gmail.com', 'Nice'),
('Reshma', 'reshmakw@gmail.com', 'Nice JOb');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `passwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cid`, `cname`, `phone`, `email`, `location`, `passwd`) VALUES
(1, 'djrao', '12345678', '123@test.com', 'jilappa', 'veg'),
(2, 'anand', '2315487', '345@test.com', 'salmiya', 'veg'),
(3, 'radhika', '5487879', '656@test.com', 'salwa', 'nveg'),
(4, 'renu', '5654485', '787@xyz.com', 'shuwaikh', 'veg'),
(5, 'rahul', '6654845', '979@abs.com', 'salmiya', 'nveg'),
(6, 'ramesh', '6687974', 'renu@ramesh.com', 'shuwaikh', 'nveg'),
(7, 'reshma', '7878787', 'resh@ramesh.com', 'shuwaikh', 'nveg'),
(8, 'Reshma R', '2147483647', 'reshmakw@gmail.com', '431, El Camino Real', 'scu1234'),
(9, 'Reshma R', '2147483647', 'reshmakw@gmail.com', '431, El Camino Real', 'jfjd'),
(10, 'Reshma R', '2147483647', 'reshmakw@gmail.com', '431, El Camino Real', 'jjdf'),
(11, 'Reshma R', '522', 'reshmakw@gmail.com', '431, El Camino Real', 'hfidkfkd'),
(12, 'Reshma R', '2147483647', 'reshmakw@gmail.com', '431, El Camino Real', 'jfjdfjkd'),
(13, 'Reshma R', '2147483647', 'reshmakw@gmail.com', '431, El Camino Real', '91929876109'),
(14, 'Reshma R', '918765111', 'reshmakw@gmail.com', '431, El Camino Real', 'wew2f2'),
(20, 'hfkdfk', '95622', 'jxkfkdf', 'dkfdkfm', 'hjjj'),
(21, 'resh', '6656', 'resh', 'jkfk', 'hhhh'),
(22, 'aisj', '32562', 'hjddk', 'dfjdfn', 'hhhh'),
(23, 'aisj', '32562', 'hjddk', 'dfjdfn', 'hhhh'),
(24, 'Aishwarya', '123456', 'aish@gmail.com', '431, santa clara', 'aish'),
(25, 'Aishwarya', '123456', 'aish@gmail.com', '431, santa clara', 'aish'),
(26, 'manasa', '12345', 'manasa', 'santa clara', 'hhhh'),
(27, 'manasa', '12345', 'manasa', 'santa clara', '1234'),
(28, 'Reshma', '6692929668', 'reshmakw@gmail.com', 'shfjkfkl', 'hhhh'),
(29, 'Reshma', '12345', 'reshmakw@gmail.com', '11', 'resh'),
(30, 'Aishwarya Rajendran', '236789', 'ash@gmail.com', 'Asuyyudgijicdshcidsu cbdsbcsdec', 'Ash@5891'),
(31, 'vinod', '4089783567', 'vsivalingam@scu.edu', '1050 benton street', 'apt1218'),
(32, 'sasikumar', '4087705288', 'sasi@gmail.com', 'glgigi;uug', 'qqqq'),
(33, 'Reshma', '123456', 'resh@gmail.com', 'dubai kuruku sandhu, dubai', 'resh'),
(34, 'Sasi', '123456', 'sasi@gmail.com', '431 el camino real', 'asdf'),
(35, 'ash', '456789', 'ash@yahoo.com', '123 xyz', 'asdf'),
(36, 'Resh', '123456', '123@gmail.com', 'gfhjdj', 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE IF NOT EXISTS `hotel` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `hname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hid`, `hname`, `location`, `phone`, `email`, `address`, `remarks`) VALUES
(1, 'saravanabavan', 'salmiya', 123456, 'xyz@xyz.com', 'str 1 block 10', 'veg'),
(2, 'sagarmess', 'salmiya', 123457, 'xyz@xyz.com', 'str 1 block 11', 'veg'),
(3, 'udupi', 'salmiya', 123458, 'xyz@xyz.com', 'str 1 block 12', 'veg'),
(4, 'sargam', 'area 4', 123459, 'xyz@xyz.com', 'str 1 block 13', 'veg'),
(5, 'takkar', 'area 3', 123460, 'xyz@xyz.com', 'str 1 block 14', 'veg'),
(6, 'amman', 'salwa', 123461, 'xyz@xyz.com', 'str 1 block 15', 'veg'),
(7, 'desitreat', 'shuwaikh', 123462, 'xyz@xyz.com', 'str 1 block 16', 'veg'),
(8, 'Naan N Masala', 'Milpitas', 2147483647, 'naanmasala@gmail.com', '94 S Dempsey Rd Milpitas CA 95035', '5'),
(10, 'Hyderabad Dum Biriyani', 'Milpitas', 2147483647, 'hdbiriyani@gmail.com', '55 Dempsey Rd Milpitas CA 95035', '4'),
(11, 'Aasna Melange OF India', 'Milpitas', 2147483647, 'aasnaindia@gmail.com', '286 Barber Ct Milpitas CA 95035', '2'),
(12, 'Kaaraikudi Indian Restaurant', 'Milpitas', 2147483647, 'kaaraikudi@gmail.com', '61 Serra Way Milpitas CA 95035', '4'),
(13, 'Mirch Masala', 'Milpitas', 2147483647, 'mirmasala@yahoo.com', '80 Ranch Dr Milpitas CA 95035', '4'),
(14, 'Rasoi', 'Milpitas', 2147483647, 'rasoi@yahoo.com', '263 W Calaveras Blvd Milpitas CA 95035', '3'),
(15, 'Red Chillies', 'Milpitas', 2147483647, 'redchilli@gmail.com', '167 S Main St Milpitas CA 95035', '5'),
(16, 'Price OF India', 'Milpitas', 2147483647, 'priceindia@gmail.com', '127 Dixon Rd Milpitas CA 95035', '3'),
(17, 'Lotus Indian Express', 'Milpitas', 2147483647, 'lotusindia@yahoo.com', '131 Ranch Dr Milpitas CA 95035', '2'),
(18, 'Bombay Chaat House', 'Milpitas', 2147483647, 'bombaychaat@gmail.com', '454 S Main St Milpitas CA 95035', '4'),
(19, 'Swaad Indian Cuisine', 'San Jose', 2147483647, 'swades@gmail.com', '478 N 13th St\r\nSan Jose CA 75112', '5'),
(20, 'Rangoli India Restaurant', 'San Jose', 2147483647, 'rang@gmail.com', '3675 Union Ave\r\nSan Jose CA 75124', '4'),
(21, 'Aasna Melange OF India', 'San Jose', 2147483647, 'aasnaindia@gmail.com', '286 Barber Ct San Jose CA 75035', '2'),
(22, 'Punjab Cafe', 'San Jose', 2147483647, 'punjab@gmail.com', '322 E. Santa Clara St San Jose, CA 75113', '4'),
(23, 'Gulzaar Halal', 'San Jose', 2147483647, 'gulzar@yahoo.com', '1880 W San Carlos St\r\nSan Jose CA 75128', '4'),
(24, 'Elements Perfect Indian Cuisine', 'San Jose', 2147483647, 'indcuisine@yahoo.com', '1781 E Capitol Expy\r\nSan Jose CA 75121', '3'),
(25, 'Chaat Cafe', 'San Jose', 2147483647, 'chaat@gmail.com', '834 Blossom Hill Rd.\r\nSan Jose CA 75123', '5'),
(26, 'New Indian Cuisine', 'San Jose', 2147483647, 'priceindia@gmail.com', '875 Willow St\r\nSan Jose CA 75125', '3'),
(27, 'Lotus Indian Express', 'San Jose', 2147483647, 'lotusindia@yahoo.com', '131 Ranch Dr San Jose CA 75035', '2'),
(28, 'Punjab Cafe', 'San Jose', 2147483647, 'punjabcafe@gmail.com', '1677 W San Carlos St\r\nSan Jose CA 75128', '4'),
(29, 'Swaad Indian Cuisine', 'San Jose', 2147483647, 'swades@gmail.com', '478 N 13th St\r\nSan Jose CA 75112', '5'),
(30, 'Rangoli India Restaurant', 'San Jose', 2147483647, 'rang@gmail.com', '3675 Union Ave\r\nSan Jose CA 75124', '4'),
(31, 'Aasna Melange OF India', 'San Jose', 2147483647, 'aasnaindia@gmail.com', '286 Barber Ct San Jose CA 75035', '2'),
(32, 'Punjab Cafe', 'San Jose', 2147483647, 'punjab@gmail.com', '322 E. Santa Clara St San Jose, CA 75113', '4'),
(33, 'Gulzaar Halal', 'San Jose', 2147483647, 'gulzar@yahoo.com', '1880 W San Carlos St\r\nSan Jose CA 75128', '4'),
(34, 'Elements Perfect Indian Cuisine', 'San Jose', 2147483647, 'indcuisine@yahoo.com', '1781 E Capitol Expy\r\nSan Jose CA 75121', '3'),
(36, 'New Indian Cuisine', 'San Jose', 2147483647, 'priceindia@gmail.com', '875 Willow St\r\nSan Jose CA 75125', '3'),
(37, 'Lotus Indian Express', 'San Jose', 2147483647, 'lotusindia@yahoo.com', '131 Ranch Dr San Jose CA 75035', '2'),
(38, 'Punjab Cafe', 'San Jose', 2147483647, 'punjabcafe@gmail.com', '1677 W San Carlos St\r\nSan Jose CA 75128', '4'),
(39, 'Chaat House', 'Cupertino', 2147483647, 'chaathousecupertino@gmail.com', '21267 Stevens Creek Blvd Cupertino CA 95014', '5'),
(40, 'Shan Restaurant', 'Cupertino', 2147483647, 'shaanrestaurant@gmail.com', '20007 Stevens Creek Blvd Cupertino CA 95014', '4'),
(41, 'Dosateria', 'Cupertino', 2147483647, 'dosateria@gmail.com', '20955 Stevens Creek Blvd Cupertino CA 95014', '3'),
(42, 'Indian Street Cafe', 'Cupertino', 2147483647, 'indianstreetcafe@gmail.com', '25755 Voss Ave Cupertino CA 95014', '5'),
(43, 'Pani Puri Company', 'Cupertino', 2147483647, 'websitepanipuricompany@gmail.net', '20327 Stevens Creek Blvd Cupertino CA 95014', '3'),
(44, 'Dakshin Cuisine', 'Cupertino', 2147483647, 'dakshincuisine@gmail.com', '22763 Voss AveCupertino CA 95014', '4'),
(45, 'Ananda Bhavan', 'Cupertino', 2147483647, 'anandabhavanusa@gmail.com', '20305 Stevens Creek Blvd Cupertino CA 95014', '4'),
(46, 'Park Balluchi', 'Cupertino', 2147483647, 'parkballuchiusa@gmail.com', '28505 Stevens Creek Blvd Cupertino CA 95014', '5'),
(47, 'Tikka Fresh', 'San Francisco', 2147483647, 'tikkafresh@gmail.com', '1668 Haight Street San Francisco CA 94117', '5'),
(48, 'Naan N Curry', 'San Francisco', 2147483647, 'NaanNCurry@gmail.com', '642 Irving St San Francisco CA 94122', '4'),
(49, 'curry leaf', 'san francisco', 2147483647, 'curryleaf@gmail.com', '943 columbus ave san francisco CA 94133', '2'),
(50, 'Little Delhi', 'San Francisco', 2147483647, 'littledelhi@gmail.com', '83 Eddy St San Francisco CA 94102', '4'),
(51, 'Tikka Fresh', 'San Francisco', 2147483647, 'tikkafresh@gmail.com', '1668 Haight Street San Francisco CA 94117', '5'),
(52, 'Naan N Curry', 'San Francisco', 2147483647, 'NaanNCurry@gmail.com', '642 Irving St San Francisco CA 94122', '4'),
(53, 'curry leaf', 'san francisco', 2147483647, 'curryleaf@gmail.com', '943 columbus ave san francisco CA 94133', '2'),
(54, 'Little Delhi', 'San Francisco', 2147483647, 'littledelhi@gmail.com', '83 Eddy St San Francisco CA 94102', '4'),
(55, 'Pakwan Restaurant', 'San Francisco', 2147483647, 'pakwan@yahoo.com', '3180-82 16th St San Francisco CA 94103', '4'),
(56, 'A Desi Cafe', 'San Francisco', 2147483647, 'desicafe@yahoo.com', '1501 Noriega St San Francisco CA 94122', '3'),
(57, 'Lasan', 'San Francisco', 2147483647, 'lasan@gmail.com', '3145 Fillmore St San Francisco CA 94123', '5'),
(58, 'Amber India', 'San Francisco', 2147483647, 'amberindia@gmail.com', '25 Yerba Buena Ln San Francisco CA 94103', '3'),
(59, 'Shalimaar Restaurant', 'San Francisco', 2147483647, 'shalimaar@yahoo.com', '532 Jones St San Francisco CA 94102', '2'),
(60, 'Udupi Palace', 'San Francisco', 2147483647, 'udupipalace@gmail.com', '1007 Valencia St San Francisco CA 94110', '4'),
(61, 'Kabab and Currys', 'Santa Clara', 2147483647, 'orders.knc@gmail.com', '1498 Isabella St Santa Clara, CA 95050', '5'),
(62, 'Sagar Veg restaurant', 'Santa Clara', 2147483647, 'sagarveg@gmail.com', '2341 El Camino Real Santa Clara, CA 95050', '4'),
(63, 'Paradise Biryani Pointe', 'Santa Clara', 2147483647, 'santaclara@cabiryani.com', '2961 El Camino Real Santa Clara, CA 95051', '2'),
(64, 'Thali Indian Vegetarian', 'Santa Clara', 2147483647, 'thali@gmail.com', '3064 El Camino Real Santa Clara, CA 95051', '4'),
(65, 'Kitchen of Kuchipudi', 'Santa Clara', 2147483647, 'kuchipudi@yahoo.com', '2725 EL Camino Real Santa Clara, CA 95051', '4'),
(66, 'Tava Indian Kitchen', 'Santa Clara', 2147483647, 'tavaindian@yahoo.com', '2855 Stevens Creek Blvd Santa Clara, CA 95050', '3'),
(67, 'Aachi Aappakadai', 'Santa Clara', 2147483647, 'aachi@gmail.com', '3075 El Camino Real Santa Clara, CA 95051', '5'),
(68, 'Mad Idlies', 'Santa Clara', 2147483647, 'madidlies@gmail.com', '3379 El Camino Real Santa Clara, CA 95051', '3'),
(69, 'Mayuri Indian Cuisine', 'Santa Clara', 2147483647, 'mayuri@yahoo.com', '2232 El Camino Real Santa Clara, CA 95050', '2'),
(70, 'Pani Puri Company', 'Santa Clara', 2147483647, 'panipuri@gmail.com', '3157 El Camino Real Santa Clara, CA 95051', '4'),
(71, 'Janta Indian Cuisine', 'Sunnyvale', 2147483647, 'jantac@gmail.com', '685 E El Camino Real Sunnyvale CA 94087', '5'),
(72, 'Indian Street Cafe', 'Sunnyvale', 2147483647, 'Indiansc@gmail.com', '927 E Arques Ave Sunnyvale CA 94085', '4'),
(73, 'satkar indian cuisine', 'Sunnyvale', 2147483647, 'satkar@gmail.com', '1253 W El Camino Real Sunnyvale CA 94087', '1'),
(74, 'Little India Cafe', 'Sunnyvale', 2147483647, 'litteic@gmail.com', '415 N Mary Ave Sunnyvale CA 94085', '4'),
(75, 'Chaats & Currys', 'Sunnyvale', 2147483647, 'chaatcurry@yahoo.com', '520 Lawrence Expy Sunnyvale CA 94085', '4'),
(76, 'Taste Buds Indian Food', 'Sunnyvale', 2147483647, 'tastebud@yahoo.com', '673 Grape Ave Sunnyvale CA 94087', '6'),
(77, 'JAI HO Indian Multi cuisine', 'Sunnyvale', 2147483647, 'jaiho@gmail.com', '727 S Wolfe Rd Sunnyvale CA 94086', '5'),
(78, 'Shah Restaurant', 'Sunnyvale', 2147483647, 'shahres@gmail.com', '962 W El Camino Real Sunnyvale CA 94087', '6'),
(79, 'Madras Cafe', 'Sunnyvale', 2147483647, 'madrascafe@yahoo.com', '1177 W El Camino Real Sunnyvale CA 94087', '1'),
(80, 'Rajwadi Thali', 'Sunnyvale', 2147483647, 'rajwadi@gmail.com', '573 E El Camino Real Sunnyvale CA 94087', '4');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `cat` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `hotelname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=179 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`mid`, `menuname`, `description`, `price`, `type`, `cat`, `remarks`, `hotelname`) VALUES
(1, 'idli', 'indian baked cake', '5.25', '', '', '', 'saravanabavan'),
(2, 'dosa', '', '6.25', '', '', '', 'sagarmess'),
(3, 'masala dosa', 'aloo baji dosa', '7.50', '', '', '', 'udupi'),
(4, 'meduvada', 'ulundu vada', '3.25', '', '', '', 'saravanabavan'),
(5, 'chapati', 'atta', '5.25', '', '', '', 'takkar'),
(6, 'poori', 'maida', '2.25', '', '', '', 'amman'),
(7, 'pongal', 'rice', '4.25', '', '', '', 'saravanabavan'),
(8, 'Samosa', 'Mixed vegetables battered and fried with Indian sp', '6.99', 'Dinner', 'Appetiser', '', 'Curry Pundits'),
(9, 'Desi Chili Paneer', 'Indian cottage cheese fried and tossed with spicy ', '9.49', 'Dinner', 'Appetiser', '', 'Curry Pundits'),
(10, 'Chili Chicken', 'Fried chicken/Fish seasoned with chilly garlic sau', '9.49', 'Lunch', 'Appetiser', '', 'Curry Pundits'),
(11, 'Samosa', 'Mixed vegetables battered and fried with Indian sp', '6.99', 'Dinner', 'Appetiser', '', 'Curry Pundits'),
(12, 'Desi Chili Paneer', 'Indian cottage cheese fried and tossed with spicy ', '9.49', 'Dinner', 'Appetiser', '', 'Curry Pundits'),
(13, 'Chili Chicken', 'Fried chicken/Fish seasoned with chilly garlic sau', '9.49', 'Lunch', 'Appetiser', '', 'Curry Pundits'),
(14, 'Fish Manchurian', 'Fried fish tossed with spicy Manchurian sauce', '9.49', 'Lunch', 'Appetiser', '', 'Curry Pundits'),
(15, 'Veg Wrap', 'Vegetables wrapped in roti', '8.45', 'Dinner', 'Entrée', '', 'Curry Pundits'),
(16, 'Chicken Wrap', 'Chicken wrapped in roti', '9.00', 'Dinner', 'Entrée', '', 'Curry Pundits'),
(17, 'Paneer Tikka Masala Combo', '1 naan, Gravy, vegetable biryani, Raitha, Sweet', '12.00', 'Dinner', 'Entrée', '', 'Curry Pundits'),
(18, 'Veg Combo', 'Your choice of vegetarian curry served with your c', '10.00', 'Lunch', 'Entrée', '', 'Curry Pundits'),
(19, 'Non-Veg Combo', 'Your choice of curry served with your choice of si', '11.00', 'Lunch', 'Entrée', '', 'Curry Pundits'),
(20, 'Chennai Mixed Vegetable Pakoda', 'Mixed vegetables battered and fried with Indian sp', '6.99', 'Dinner', 'Appetiser', '', 'Dosa & Curry Café'),
(21, 'Desi Chili Paneer', 'Indian cottage cheese fried and tossed with spicy ', '9.49', 'Dinner', 'Appetiser', '', 'Dosa & Curry Café'),
(22, 'Chili Chicken', 'Fried chicken/Fish seasoned with chilly garlic sau', '9.49', 'Lunch', 'Appetiser', '', 'Dosa & Curry Café'),
(23, 'Chennai Mixed Vegetable Pakoda', 'Mixed vegetables battered and fried with Indian sp', '6.99', 'Dinner', 'Appetiser', '', 'Dosa & Curry Café'),
(24, 'Desi Chili Paneer', 'Indian cottage cheese fried and tossed with spicy ', '9.49', 'Dinner', 'Appetiser', '', 'Dosa & Curry Café'),
(25, 'Chili Chicken', 'Fried chicken/Fish seasoned with chilly garlic sau', '9.49', 'Lunch', 'Appetiser', '', 'Dosa & Curry Café'),
(26, 'Fish Manchurian', 'Fried fish tossed with spicy Manchurian sauce', '9.49', 'Lunch', 'Appetiser', '', 'Dosa & Curry Café'),
(27, 'Veg Wrap', 'Vegetables wrapped in roti', '8.45', 'Dinner', 'Entrée', '', 'Dosa & Curry Café'),
(28, 'Chicken Wrap', 'Chicken wrapped in roti', '9.00', 'Dinner', 'Entrée', '', 'Dosa & Curry Café'),
(29, 'Paneer Tikka Masala Combo', '1 naan, Gravy, vegetable biryani, Raitha, Sweet', '12.00', 'Dinner', 'Entrée', '', 'Dosa & Curry Café'),
(30, 'Lamb Seekh Kabab', 'Tender cubes of lamb mildly seasoned marinated and', '8.50', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(31, 'Seekh Kabab', 'Spicy ground lamb & onions and charcoal grilled', '8.00', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(32, 'Reshmi Kabab', 'Delicately spiced boneless chopped chicken kabab g', '8.00', 'Dinner', 'Appetiser', '', 'Punjab Café'),
(33, 'Chicken Tikka', 'Tender boneless chicken marinated in special tikka', '7.50', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(34, 'Tandoori Prawns', 'Jumbo prawns marinated in sues tandoori masala, ch', '8.50', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(35, 'Tandoori Murgh', 'Tastefully marinated chicken and charcoal grilled', '15.00', 'Lunch', 'Entrée', '', 'Punjab Café'),
(36, 'Chicken Kurma', 'Boneless chicken in special sauce blended with nut', '10.50', 'Dinner', 'Entrée', '', 'Punjab Café'),
(37, 'Lamb Seekh Kabab', 'Tender cubes of lamb mildly seasoned marinated and', '8.50', 'Dinner', 'Appetiser', '', 'New Indian Cuisine'),
(38, 'Seekh Kabab', 'Spicy ground lamb & onions and charcoal grilled', '8.00', 'Dinner', 'Appetiser', '', 'New Indian Cuisine'),
(39, 'Reshmi Kabab', 'Delicately spiced boneless chopped chicken kabab g', '8.00', 'Dinner', 'Appetiser', '', 'New Indian Cuisine'),
(40, 'Chicken Tikka', 'Tender boneless chicken marinated in special tikka', '7.50', 'Lunch', 'Appetiser', '', 'New Indian Cuisine'),
(41, 'Tandoori Prawns', 'Jumbo prawns marinated in sues tandoori masala cha', '8.50', 'Lunch', 'Appetiser', '', 'New Indian Cuisine'),
(42, 'Tandoori Murgh', 'Tastefully marinated chicken and charcoal grilled', '15.00', 'Lunch', 'Entrée', '', 'New Indian Cuisine'),
(43, 'Chicken Kurma', 'Boneless chicken in special sauce blended with nut', '10.50', 'Dinner', 'Entrée', '', 'New Indian Cuisine'),
(44, 'Chennai Mixed Vegetable Pakoda', 'Mixed vegetables battered and fried with Indian sp', '6.99', 'Dinner', 'Appetiser', '', 'Dosa & Curry Café'),
(45, 'Desi Chili Paneer', 'Indian cottage cheese fried and tossed with spicy ', '9.49', 'Dinner', 'Appetiser', '', 'Dosa & Curry Café'),
(46, 'Chili Chicken', 'Fried chicken/Fish seasoned with chilly garlic sau', '9.49', 'Lunch', 'Appetiser', '', 'Dosa & Curry Café'),
(47, 'Fish Manchurian', 'Fried fish tossed with spicy Manchurian sauce', '9.49', 'Lunch', 'Appetiser', '', 'Dosa & Curry Café'),
(48, 'Veg Wrap', 'Vegetables wrapped in roti', '8.45', 'Dinner', 'Entrée', '', 'Dosa & Curry Café'),
(49, 'Chicken Wrap', 'Chicken wrapped in roti', '9.00', 'Dinner', 'Entrée', '', 'Dosa & Curry Café'),
(50, 'Paneer Tikka Masala Combo', '1 naan, Gravy, vegetable biryani, Raitha, Sweet', '12.00', 'Dinner', 'Entrée', '', 'Dosa & Curry Café'),
(51, 'Lamb Seekh Kabab', 'Tender cubes of lamb mildly seasoned marinated and', '8.50', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(52, 'Seekh Kabab', 'Spicy ground lamb & onions and charcoal grilled', '8.00', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(53, 'Reshmi Kabab', 'Delicately spiced boneless chopped chicken kabab g', '8.00', 'Dinner', 'Appetiser', '', 'Punjab Café'),
(54, 'Chicken Tikka', 'Tender boneless chicken marinated in special tikka', '7.50', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(55, 'Tandoori Prawns', 'Jumbo prawns marinated in sues tandoori masala, ch', '8.50', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(56, 'Tandoori Murgh', 'Tastefully marinated chicken and charcoal grilled', '15.00', 'Lunch', 'Entrée', '', 'Punjab Café'),
(57, 'Chicken Kurma', 'Boneless chicken in special sauce blended with nut', '10.50', 'Dinner', 'Entrée', '', 'Punjab Café'),
(58, 'Lamb Seekh Kabab', 'Tender cubes of lamb mildly seasoned marinated and', '8.50', 'Dinner', 'Appetiser', '', 'New Indian Cuisine'),
(59, 'Seekh Kabab', 'Spicy ground lamb & onions and charcoal grilled', '8.00', 'Dinner', 'Appetiser', '', 'New Indian Cuisine'),
(60, 'Reshmi Kabab', 'Delicately spiced boneless chopped chicken kabab g', '8.00', 'Dinner', 'Appetiser', '', 'New Indian Cuisine'),
(61, 'Chicken Tikka', 'Tender boneless chicken marinated in special tikka', '7.50', 'Lunch', 'Appetiser', '', 'New Indian Cuisine'),
(62, 'Tandoori Prawns', 'Jumbo prawns marinated in sues tandoori masala cha', '8.50', 'Lunch', 'Appetiser', '', 'New Indian Cuisine'),
(63, 'Tandoori Murgh', 'Tastefully marinated chicken and charcoal grilled', '15.00', 'Lunch', 'Entrée', '', 'New Indian Cuisine'),
(64, 'Chicken Kurma', 'Boneless chicken in special sauce blended with nut', '10.50', 'Dinner', 'Entrée', '', 'New Indian Cuisine'),
(65, 'Papri Chaat', 'Home made chips lentil dumplings garbanzo beans po', '4.49', 'Dinner', 'Appetiser', '', 'Chaat Café'),
(66, 'Sev Puri Chaat', 'Crispy puri topped with yogurt potatoes onions tam', '4.99', 'Dinner', 'Appetiser', '', 'Chaat Café'),
(67, 'Bhel Puri', 'Rice puffs crispy noodles potatoes green chili oni', '4.49', 'Dinner', 'Appetiser', '', 'Chaat Café'),
(68, 'Chennai Mixed Vegetable Pakoda', 'Mixed vegetables battered and fried with Indian sp', '6.99', 'Dinner', 'Appetiser', '', 'Dosa & Curry Café'),
(69, 'Desi Chili Paneer', 'Indian cottage cheese fried and tossed with spicy ', '9.49', 'Dinner', 'Appetiser', '', 'Dosa & Curry Café'),
(70, 'Chili Chicken', 'Fried chicken/Fish seasoned with chilly garlic sau', '9.49', 'Lunch', 'Appetiser', '', 'Dosa & Curry Café'),
(71, 'Fish Manchurian', 'Fried fish tossed with spicy Manchurian sauce', '9.49', 'Lunch', 'Appetiser', '', 'Dosa & Curry Café'),
(72, 'Veg Wrap', 'Vegetables wrapped in roti', '8.45', 'Dinner', 'Entrée', '', 'Dosa & Curry Café'),
(73, 'Chicken Wrap', 'Chicken wrapped in roti', '9.00', 'Dinner', 'Entrée', '', 'Dosa & Curry Café'),
(74, 'Paneer Tikka Masala Combo', '1 naan, Gravy, vegetable biryani, Raitha, Sweet', '12.00', 'Dinner', 'Entrée', '', 'Dosa & Curry Café'),
(75, 'Lamb Seekh Kabab', 'Tender cubes of lamb mildly seasoned marinated and', '8.50', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(76, 'Seekh Kabab', 'Spicy ground lamb & onions and charcoal grilled', '8.00', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(77, 'Reshmi Kabab', 'Delicately spiced boneless chopped chicken kabab g', '8.00', 'Dinner', 'Appetiser', '', 'Punjab Café'),
(78, 'Chicken Tikka', 'Tender boneless chicken marinated in special tikka', '7.50', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(79, 'Tandoori Prawns', 'Jumbo prawns marinated in sues tandoori masala, ch', '8.50', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(80, 'Tandoori Murgh', 'Tastefully marinated chicken and charcoal grilled', '15.00', 'Lunch', 'Entrée', '', 'Punjab Café'),
(81, 'Chicken Kurma', 'Boneless chicken in special sauce blended with nut', '10.50', 'Dinner', 'Entrée', '', 'Punjab Café'),
(82, 'Lamb Seekh Kabab', 'Tender cubes of lamb mildly seasoned marinated and', '8.50', 'Dinner', 'Appetiser', '', 'New Indian Cuisine'),
(83, 'Seekh Kabab', 'Spicy ground lamb & onions and charcoal grilled', '8.00', 'Dinner', 'Appetiser', '', 'New Indian Cuisine'),
(84, 'Reshmi Kabab', 'Delicately spiced boneless chopped chicken kabab g', '8.00', 'Dinner', 'Appetiser', '', 'New Indian Cuisine'),
(85, 'Chicken Tikka', 'Tender boneless chicken marinated in special tikka', '7.50', 'Lunch', 'Appetiser', '', 'New Indian Cuisine'),
(86, 'Tandoori Prawns', 'Jumbo prawns marinated in sues tandoori masala cha', '8.50', 'Lunch', 'Appetiser', '', 'New Indian Cuisine'),
(87, 'Tandoori Murgh', 'Tastefully marinated chicken and charcoal grilled', '15.00', 'Lunch', 'Entrée', '', 'New Indian Cuisine'),
(88, 'Chicken Kurma', 'Boneless chicken in special sauce blended with nut', '10.50', 'Dinner', 'Entrée', '', 'New Indian Cuisine'),
(89, 'Papri Chaat', 'Home made chips lentil dumplings garbanzo beans po', '4.49', 'Dinner', 'Appetiser', '', 'Chaat Café'),
(90, 'Sev Puri Chaat', 'Crispy puri topped with yogurt potatoes onions tam', '4.99', 'Dinner', 'Appetiser', '', 'Chaat Café'),
(91, 'Bhel Puri', 'Rice puffs crispy noodles potatoes green chili oni', '4.49', 'Dinner', 'Appetiser', '', 'Chaat Café'),
(92, 'Pani Puri', 'Crispy shells potatoes and garbanzo beans served w', '4.49', 'Lunch', 'Appetiser', '', 'Chaat Café'),
(93, 'Dahi Vada', 'Chilled lentil dumplings soaked in yogurt topped w', '4.49', 'Lunch', 'Appetiser', '', 'Chaat Café'),
(94, 'Aloo Tikki', 'Two seasoned fried potato patties spiced with gree', '4.49', 'Lunch', 'Appetiser', '', 'Chaat Café'),
(95, 'Samosa Chaat', 'Chopped samosas smothered with cholay and topped w', '4.49', 'Dinner', 'Appetiser', '', 'Chaat Café'),
(96, 'Cholay Batura', 'Seasoned garbanzo beans topped with onions and cil', '6.49', 'Dinner', 'Entrée', '', 'Chaat Café'),
(97, 'Caesar Salad', 'Romaine lettuce, parmesan cheese and croutons toss', '7.99', 'Dinner', 'Salad', '', 'Chaat Café'),
(98, 'Chaat Salad', 'Romaine lettuce lentil chips spicy chickpea noodle', '7.99', 'Lunch', 'Salad', '', 'Chaat Café'),
(99, 'Veggie Salad', 'Seasoned potato patties cucumbers tomatoes cilantr', '6.99', 'Dinner', 'Salad', '', 'Chaat Café'),
(100, 'Chennai Mixed Vegetable Pakoda', 'Mixed vegetables battered and fried with Indian sp', '6.99', 'Dinner', 'Appetiser', '', 'Dosa & Curry Café'),
(101, 'Desi Chili Paneer', 'Indian cottage cheese fried and tossed with spicy ', '9.49', 'Dinner', 'Appetiser', '', 'Dosa & Curry Café'),
(102, 'Chili Chicken', 'Fried chicken/Fish seasoned with chilly garlic sau', '9.49', 'Lunch', 'Appetiser', '', 'Dosa & Curry Café'),
(103, 'Fish Manchurian', 'Fried fish tossed with spicy Manchurian sauce', '9.49', 'Lunch', 'Appetiser', '', 'Dosa & Curry Café'),
(104, 'Veg Wrap', 'Vegetables wrapped in roti', '8.45', 'Dinner', 'Entrée', '', 'Dosa & Curry Café'),
(105, 'Chicken Wrap', 'Chicken wrapped in roti', '9.00', 'Dinner', 'Entrée', '', 'Dosa & Curry Café'),
(106, 'Paneer Tikka Masala Combo', '1 naan, Gravy, vegetable biryani, Raitha, Sweet', '12.00', 'Dinner', 'Entrée', '', 'Dosa & Curry Café'),
(107, 'Lamb Seekh Kabab', 'Tender cubes of lamb mildly seasoned marinated and', '8.50', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(108, 'Seekh Kabab', 'Spicy ground lamb & onions and charcoal grilled', '8.00', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(109, 'Reshmi Kabab', 'Delicately spiced boneless chopped chicken kabab g', '8.00', 'Dinner', 'Appetiser', '', 'Punjab Café'),
(110, 'Chicken Tikka', 'Tender boneless chicken marinated in special tikka', '7.50', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(111, 'Tandoori Prawns', 'Jumbo prawns marinated in sues tandoori masala, ch', '8.50', 'Lunch', 'Appetiser', '', 'Punjab Café'),
(112, 'Tandoori Murgh', 'Tastefully marinated chicken and charcoal grilled', '15.00', 'Lunch', 'Entrée', '', 'Punjab Café'),
(113, 'Chicken Kurma', 'Boneless chicken in special sauce blended with nut', '10.50', 'Dinner', 'Entrée', '', 'Punjab Café'),
(114, 'Lamb Seekh Kabab', 'Tender cubes of lamb mildly seasoned marinated and', '8.50', 'Dinner', 'Appetiser', '', 'New Indian Cuisine'),
(115, 'Seekh Kabab', 'Spicy ground lamb & onions and charcoal grilled', '8.00', 'Dinner', 'Appetiser', '', 'New Indian Cuisine'),
(116, 'Reshmi Kabab', 'Delicately spiced boneless chopped chicken kabab g', '8.00', 'Dinner', 'Appetiser', '', 'New Indian Cuisine'),
(117, 'Chicken Tikka', 'Tender boneless chicken marinated in special tikka', '7.50', 'Lunch', 'Appetiser', '', 'New Indian Cuisine'),
(118, 'Tandoori Prawns', 'Jumbo prawns marinated in sues tandoori masala cha', '8.50', 'Lunch', 'Appetiser', '', 'New Indian Cuisine'),
(119, 'Tandoori Murgh', 'Tastefully marinated chicken and charcoal grilled', '15.00', 'Lunch', 'Entrée', '', 'New Indian Cuisine'),
(120, 'Chicken Kurma', 'Boneless chicken in special sauce blended with nut', '10.50', 'Dinner', 'Entrée', '', 'New Indian Cuisine'),
(121, 'Papri Chaat', 'Home made chips lentil dumplings garbanzo beans po', '4.49', 'Dinner', 'Appetiser', '', 'Chaat Café'),
(122, 'Sev Puri Chaat', 'Crispy puri topped with yogurt potatoes onions tam', '4.99', 'Dinner', 'Appetiser', '', 'Chaat Café'),
(123, 'Bhel Puri', 'Rice puffs crispy noodles potatoes green chili oni', '4.49', 'Dinner', 'Appetiser', '', 'Chaat Café'),
(124, 'Pani Puri', 'Crispy shells potatoes and garbanzo beans served w', '4.49', 'Lunch', 'Appetiser', '', 'Chaat Café'),
(125, 'Dahi Vada', 'Chilled lentil dumplings soaked in yogurt topped w', '4.49', 'Lunch', 'Appetiser', '', 'Chaat Café'),
(126, 'Aloo Tikki', 'Two seasoned fried potato patties spiced with gree', '4.49', 'Lunch', 'Appetiser', '', 'Chaat Café'),
(127, 'Samosa Chaat', 'Chopped samosas smothered with cholay and topped w', '4.49', 'Dinner', 'Appetiser', '', 'Chaat Café'),
(128, 'Cholay Batura', 'Seasoned garbanzo beans topped with onions and cil', '6.49', 'Dinner', 'Entrée', '', 'Chaat Café'),
(129, 'Caesar Salad', 'Romaine lettuce, parmesan cheese and croutons toss', '7.99', 'Dinner', 'Salad', '', 'Chaat Café'),
(130, 'Chaat Salad', 'Romaine lettuce lentil chips spicy chickpea noodle', '7.99', 'Lunch', 'Salad', '', 'Chaat Café'),
(131, 'Veggie Salad', 'Seasoned potato patties cucumbers tomatoes cilantr', '6.99', 'Dinner', 'Salad', '', 'Chaat Café'),
(132, 'Paneer Wrap', 'Paneer (cheese) aloo tikki cucumbers tomatoes cila', '7.49', 'Dinner', 'Entrée', '', 'Chaat Café'),
(133, 'Tikka Masala Rolls', '2 bhaturas rolled with chicken tikka masala or pan', '7.99', 'Dinner', 'Appetiser', '', 'Chaat Café'),
(134, 'Assorted Pakora', 'Mixed vegetables dipped in a spicy chickpea batter', '4.49', 'Lunch', 'Appetiser', '', 'Chaat Café'),
(135, 'Paneer Pakora', 'Paneer (farmers cheese) golden fried in a seasoned', '6.49', 'Lunch', 'Appetiser', '', 'Chaat Café'),
(136, 'Spicy Seekh Kabob Plate', 'Ground lamb seasoned with green chili ginger and s', '9.49', 'Dinner', 'Entrée', '', 'Chaat Café'),
(137, 'Tikka Masala a La Carte', 'Chaat Cafes version of this popular dish is made u', '8.99', 'Lunch', 'Entrée', '', 'Chaat Café'),
(138, 'Tikka Masala Dinner', 'Chaat Cafes version of this popular dish is made u', '11.99', 'Dinner', 'Entrée', '', 'Chaat Café'),
(139, 'Aachari Dinner', 'A medium spicy yogurt based curry made with tradit', '11.99', 'Dinner', 'Entrée', '', 'Chaat Café'),
(140, 'Vindaloo Dinner', 'A tangy very spicy and slightly sweet goan meat an', '11.99', 'Dinner', 'Entrée', '', 'Chaat Café'),
(141, 'Malai Kofta Dinner', 'Vegetarian dumplings made with a mixture of potato', '11.45', 'Dinner', 'Entrée', '', 'Chaat Café'),
(142, 'Stuffed Naan Onion', 'Served with raita.', '3.49', 'Lunch', 'Bread', '', 'Chaat Café'),
(143, 'Stuffed Naan Aloo', 'Served with potato and raita.', '3.99', 'Lunch', 'Bread', '', 'Chaat Café'),
(144, 'Stuffed Naan Gobi', 'Served with cauliflower and raita.', '3.99', 'Lunch', 'Bread', '', 'Chaat Café'),
(145, 'Mango Lassi', '', '3.49', 'Dinner', 'Beverage', '', 'Chaat Café'),
(146, 'Sweet Lassi', '', '2.99', 'Dinner', 'Beverage', '', 'Chaat Café'),
(147, 'Salty Lassi', '', '2.99', 'Dinner', 'Beverage', '', 'Chaat Café'),
(148, 'Chai', '', '1.50', 'Lunch', 'Beverage', '', 'Chaat Café'),
(149, 'Aloo Tikki with Chana', 'Mashed potatoes pattice pan fried served with chut', '5.29', 'lunch', '', '', 'Swaad Indian Cuisine'),
(150, 'vegetable cutlets', 'mashed potatoes pattice WITH chutneys.', '2.69', 'Lunch', '', '', 'Swaad Indian Cuisine'),
(151, 'Capsicum Curry', 'Bell papers cooked with subtle mix of spices.', '7.25', 'lunch', '', '', 'Swaad Indian Cuisine'),
(152, 'aloo palak', 'potatoes cooked WITH spinach seasoned WITH spices.', '8.25', 'Lunch', '', '', 'Swaad Indian Cuisine'),
(153, 'Navratan Korma ', 'Vegetables cooked in a frames cheese and nuts in a', '6.95', 'lunch', '', '', 'Swaad Indian Cuisine'),
(154, 'chana bhatura', 'garbanzo beans cooked IN special blend OF spices W', '7.99', 'Dinner', '', '', 'Lotus Indian Express'),
(155, 'Gobi Paratha', 'Cauliflower minced with special spices stuffed in ', '4.75', 'dinner', '', '', 'Lotus Indian Express'),
(156, 'masala roti 2 pcs', 'traditional whole wheat indian bread WITH spices', '2.25', 'Dinner', '', '', 'Lotus Indian Express'),
(157, 'Bengan Bhartha', 'Fresh eggplant baked and cooked with onions tomato', '5.25', 'dinner', '', '', 'Lotus Indian Express'),
(158, 'rajmah', 'kidney beans cooked IN a hot AND spicy sauce.', '2.25', 'Dinner', '', '', 'Lotus Indian Express'),
(159, 'Chicken Tandoori', 'Boneless chicken cubes marinated and cooked in tan', '6.99', 'lunch', '', '', 'Gulzaar Halal'),
(160, 'vegetable cutlets', 'mashed potatoes pattice WITH chutneys.', '2.69', 'Lunch', '', '', 'Gulzaar Halal'),
(161, 'Capsicum Curry', 'Bell papers cooked with subtle mix of spices.', '7.25', 'lunch', '', '', 'Gulzaar Halal'),
(162, 'aloo palak', 'potatoes cooked WITH spinach seasoned WITH spices.', '8.25', 'Lunch', '', '', 'Gulzaar Halal'),
(163, 'Navratan Korma ', 'Vegetables cooked in a frames cheese and nuts in a', '6.95', 'lunch', '', '', 'Gulzaar Halal'),
(164, 'fish tandoori', 'salmon fish seasoned IN spices AND baked IN the ta', '4.99', 'Lunch', '', '', 'Aasna Melange OF India'),
(165, 'Gobi Paratha', 'Cauliflower minced with special spices stuffed in ', '4.75', 'dinner', '', '', 'Aasna Melange OF India'),
(166, 'masala roti 2 pcs', 'traditional whole wheat indian bread WITH spices', '2.25', 'Dinner', '', '', 'Aasna Melange OF India'),
(167, 'Bengan Bhartha', 'Fresh eggplant baked and cooked with onions tomato', '5.25', 'dinner', '', '', 'Aasna Melange OF India'),
(168, 'rajmah', 'kidney beans cooked IN a hot AND spicy sauce.', '2.25', 'Dinner', '', '', 'Aasna Melange OF India'),
(169, 'Paneer Tikka', 'Paneer cubes seasoned in rare spices and baked in ', '2.49', 'lunch', '', '', 'Rangoli India Restaurant'),
(170, 'vegetable cutlets', 'mashed potatoes pattice WITH chutneys.', '2.69', 'Lunch', '', '', 'Rangoli India Restaurant'),
(171, 'Capsicum Curry', 'Bell papers cooked with subtle mix of spices.', '7.25', 'lunch', '', '', 'Rangoli India Restaurant'),
(172, 'aloo palak', 'potatoes cooked WITH spinach seasoned WITH spices.', '8.25', 'Lunch', '', '', 'Rangoli India Restaurant'),
(173, 'Navratan Korma ', 'Vegetables cooked in a frames cheese and nuts in a', '6.95', 'lunch', '', '', 'Rangoli India Restaurant'),
(174, 'Aloo Tikki with Chana', 'Mashed potatoes pattice pan fried served with chut', '5.29', 'lunch', '', '', 'Milpitas'),
(175, 'vegetable cutlets', 'mashed potatoes pattice WITH chutneys.', '2.69', 'Lunch', '', '', 'Milpitas'),
(176, 'Capsicum Curry', 'Bell papers cooked with subtle mix of spices.', '7.25', 'lunch', '', '', 'Milpitas'),
(177, 'aloo palak', 'potatoes cooked WITH spinach seasoned WITH spices.', '8.25', 'Lunch', '', '', 'Milpitas'),
(178, 'Navratan Korma ', 'Vegetables cooked in a frames cheese and nuts in a', '6.95', 'lunch', '', '', 'Milpitas');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `ordid` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `qnty` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `hotelid` int(11) DEFAULT NULL,
  `hotelname` varchar(50) DEFAULT NULL,
  `custid` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ordid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
