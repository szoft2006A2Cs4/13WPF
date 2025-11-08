-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2025 at 07:04 PM
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
-- Database: `hasznalthangszerek`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cname`) VALUES
('Billentyűs hangszerek'),
('Elektronikus hangszerek'),
('Fúvós hangszerek'),
('Húros hangszerek'),
('Ütős hangszerek');

-- --------------------------------------------------------

--
-- Table structure for table `instrument`
--

CREATE TABLE `instrument` (
  `iid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `iname` varchar(100) NOT NULL,
  `cost` int(11) NOT NULL,
  `scname` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `sold` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `instrument`
--

INSERT INTO `instrument` (`iid`, `uid`, `iname`, `cost`, `scname`, `description`, `sold`) VALUES
(1, 2, 'Yamaha DGX-670', 1200000, 'Zongora', 'Digitális zongora beépített metronómmal és USB-csatlakozóval.', 1),
(2, 4, 'Johannus Opus 150', 2000000, 'Orgona', 'Klasszikus templomi orgona 2 manuállal.', 1),
(3, 3, 'AKAI MPK Mini MK3', 150000, 'MIDI billentyűzet', 'USB-s MIDI billentyűzet 61 billentyűvel.', 1),
(4, 5, 'Yamaha U3', 950000, 'Zongora', 'Yamaha akusztikus zongora, kiváló hangzással.', 1),
(6, 6, 'Roland TR-8S', 400000, 'Drum machine', 'Elektronikus dobmodul mintavételező funkcióval.', 1),
(7, 7, 'Novation Circuit', 550000, 'Groovebox', 'Groovebox – szekvencer és szintetizátor egyben.', 1),
(8, 8, 'Boss RC-505', 250000, 'Loop station', 'Loop station élő felvételhez és effektezéshez.', 1),
(9, 3, 'Akai MPC One', 600000, 'Sampler', 'Professzionális Sampler DJ-k és producerek számára.', 1),
(10, 10, 'Korg Minilogue', 1300000, 'Szintetizátor', 'Analóg szintetizátor, 4 hang polifónia.', 1),
(11, 1, 'Moog Etherwave', 800000, 'Theremin', 'Theremin – érintés nélküli elektronikus hangszer.', 0),
(12, 2, 'Magyar Duda 1', 90000, 'Duda', 'Klasszikus magyar duda, fából és bőrből.', 0),
(13, 3, 'Yamaha YFG-811', 450000, 'Fagott', 'Fa fagott ezüst kulcsokkal.', 0),
(14, 4, 'Aulos 302B', 35000, 'Furulya', 'Műanyag furulya kezdőknek.', 0),
(15, 5, 'Yamaha YFL-222', 250000, 'Fuvola', 'Ezüst fuvola koncert minőségben.', 0),
(16, 6, 'Bach Stradivarius', 380000, 'Harsona', 'Réz harsona, puha hangzással.', 0),
(17, 7, 'Buffet Crampon E11', 120000, 'Klarinét', 'Klarinét, B-hangolású.', 0),
(18, 8, 'Yamaha YHR-567', 300000, 'Kürt', 'Kürt, francia típusú.', 0),
(19, 4, 'Loree OB-301', 400000, 'Oboa', 'Oboa fából, sötét tónusú hanggal.', 0),
(20, 10, 'Pánsíp Maker', 60000, 'Pánsíp', 'Kézzel faragott pánsíp, 12 síppal.', 0),
(21, 1, 'Yamaha YPC-32', 70000, 'Pikoló', 'Kis méretű pikoló, fuvolistáknak.', 0),
(22, 2, 'Selmer AS42', 280000, 'Szaxofon', 'Szaxofon alt típus, arany színben.', 0),
(23, 3, 'Tilinkó 5', 40000, 'Tilinkó', 'Népzenei tilinkó, fenyőfából.', 0),
(24, 4, 'Bach TR-300', 350000, 'Trombita', 'Réztrombita jazz zenére optimalizált.', 0),
(25, 5, 'Conn 20K', 500000, 'Tuba', 'Tuba – mély rézfúvós hangszer.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderinfo`
--

CREATE TABLE `orderinfo` (
  `oid` int(11) NOT NULL,
  `dateOfPurchase` date NOT NULL,
  `deliveryCity` varchar(50) NOT NULL,
  `deliveryStreet` varchar(50) NOT NULL,
  `deliveryPC` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `iid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `orderinfo`
--

INSERT INTO `orderinfo` (`oid`, `dateOfPurchase`, `deliveryCity`, `deliveryStreet`, `deliveryPC`, `sid`, `cid`, `iid`) VALUES
(2, '2025-01-16', 'Szeged', 'Kárász utca 7', 6720, 2, 3, 2),
(3, '2025-01-17', 'Debrecen', 'Piac utca 2', 4024, 3, 4, 3),
(4, '2025-05-18', 'Budapest', 'Andrássy út 45', 1061, 4, 5, 4),
(6, '2025-08-20', 'Győr', 'Széchenyi tér 4', 9021, 6, 7, 6),
(7, '2025-05-21', 'Sopron', 'Fő tér 1', 9400, 7, 8, 7),
(175, '2025-02-13', 'Budapest', 'Rákóczi út 54', 1088, 1, 3, 11),
(176, '2025-07-25', 'Debrecen', 'Bethlen utca 20', 4026, 2, 4, 12),
(177, '2025-04-03', 'Szeged', 'Petőfi Sándor sugárút 3', 6722, 3, 5, 13),
(178, '2025-11-11', 'Győr', 'Baross Gábor út 17', 9022, 4, 6, 14),
(179, '2025-03-27', 'Pécs', 'Király utca 15', 7621, 5, 7, 15),
(205, '2025-01-06', 'Sopron', 'Táncsics utca 8', 9400, 6, 8, 16),
(207, '2025-05-04', 'Budapest', 'Bartók Béla út 30', 1114, 8, 10, 18),
(209, '2025-08-08', 'Eger', 'Dobó tér 5', 3300, 10, 2, 20),
(210, '2025-02-09', 'Nyíregyháza', 'Kossuth utca 18', 4400, 2, 5, 22),
(211, '2025-06-17', 'Veszprém', 'Kossuth Lajos utca 7', 8200, 3, 6, 23),
(212, '2025-07-02', 'Székesfehérvár', 'Rákóczi utca 12', 8000, 4, 7, 24),
(213, '2025-03-14', 'Tatabánya', 'Fő utca 9', 2800, 5, 8, 25),
(214, '2025-10-15', 'Kecskemét', 'Szabadság tér 10', 6000, 1, 4, 21);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `scname` varchar(100) NOT NULL,
  `cname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`scname`, `cname`) VALUES
('Csembaló', 'Billentyűs hangszerek'),
('Digitális Zongora', 'Billentyűs hangszerek'),
('MIDI billentyűzet', 'Billentyűs hangszerek'),
('Orgona', 'Billentyűs hangszerek'),
('Zongora', 'Billentyűs hangszerek'),
('Drum machine', 'Elektronikus hangszerek'),
('Groovebox', 'Elektronikus hangszerek'),
('Loop station', 'Elektronikus hangszerek'),
('Sampler', 'Elektronikus hangszerek'),
('Szintetizátor', 'Elektronikus hangszerek'),
('Theremin', 'Elektronikus hangszerek'),
('Duda', 'Fúvós hangszerek'),
('Fagott', 'Fúvós hangszerek'),
('Furulya', 'Fúvós hangszerek'),
('Fuvola', 'Fúvós hangszerek'),
('Harsona', 'Fúvós hangszerek'),
('Klarinét', 'Fúvós hangszerek'),
('Kürt', 'Fúvós hangszerek'),
('Oboa', 'Fúvós hangszerek'),
('Pánsíp', 'Fúvós hangszerek'),
('Pikoló', 'Fúvós hangszerek'),
('Szaxofon', 'Fúvós hangszerek'),
('Tilinkó', 'Fúvós hangszerek'),
('Trombita', 'Fúvós hangszerek'),
('Tuba', 'Fúvós hangszerek'),
('Akusztikus gitár', 'Húros hangszerek'),
('Banjo', 'Húros hangszerek'),
('Basszusgitár', 'Húros hangszerek'),
('Brácsa', 'Húros hangszerek'),
('Citera', 'Húros hangszerek'),
('Cselló', 'Húros hangszerek'),
('Hárfa', 'Húros hangszerek'),
('Hegedű', 'Húros hangszerek'),
('Lant', 'Húros hangszerek'),
('Mandolin', 'Húros hangszerek'),
('Nagybőgő', 'Húros hangszerek'),
('Ukulele', 'Húros hangszerek'),
('Cintányér', 'Ütős hangszerek'),
('Csörgődob', 'Ütős hangszerek'),
('Dobkészlet', 'Ütős hangszerek'),
('Elektromos dob', 'Ütős hangszerek'),
('Guiro', 'Ütős hangszerek'),
('Harangjáték', 'Ütős hangszerek'),
('Kalimba', 'Ütős hangszerek'),
('Kézi dob', 'Ütős hangszerek'),
('Maracas', 'Ütős hangszerek'),
('Shaker', 'Ütős hangszerek'),
('Tamburin', 'Ütős hangszerek'),
('Vibrafon', 'Ütős hangszerek');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(75) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pnumber` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `review` float NOT NULL,
  `postalcode` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `streetHnum` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `email`, `pnumber`, `password`, `review`, `postalcode`, `city`, `streetHnum`) VALUES
(1, 'Simon Dominik', 'dodo39766@gmail.com', 2147483647, 'szeretematejet!', 5, 9700, 'Szombathely', 'Bogáti út 70'),
(2, 'tothgabi', 'toth.gabi@example.com', 36, 'encryptedPassword1', 5, 1011, 'Budapest', 'Vörösmarty utca 12'),
(3, 'majka', 'majka@example.com', 36, 'encryptedPassword2', 4, 1061, 'Budapest', 'Andrássy út 45'),
(4, 'radicsgigi', 'radics.gigi@example.com', 36, 'encryptedPassword3', 5, 6720, 'Szeged', 'Kárász utca 7'),
(5, 'ordognora', 'ordog.nora@example.com', 36, 'encryptedPassword4', 4, 4024, 'Debrecen', 'Piac utca 2'),
(6, 'rubintreka', 'rubint.reka@example.com', 36, 'encryptedPassword5', 5, 1095, 'Budapest', 'Mester utca 18'),
(7, 'konczzsuzsa', 'koncz.zsuzsa@example.com', 36, 'encryptedPassword6', 5, 7621, 'Pécs', 'Jókai tér 3'),
(8, 'pressergabor', 'presser.gabor@example.com', 36, 'encryptedPassword7', 5, 9021, 'Győr', 'Széchenyi tér 4'),
(10, 'lljunior', 'll.junior@example.com', 30, 'encryptedPassword9', 3, 3525, 'Miskolc', 'Búza tér 6'),
(11, 'puskaspeter', 'puskas.peti@example.com', 36, 'encryptedPassword10', 5, 1012, 'Budapest', 'Futball utca 10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cname`);

--
-- Indexes for table `instrument`
--
ALTER TABLE `instrument`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `fk_instrument_subcategory` (`scname`),
  ADD KEY `fk_instrument_user` (`uid`);

--
-- Indexes for table `orderinfo`
--
ALTER TABLE `orderinfo`
  ADD PRIMARY KEY (`oid`),
  ADD UNIQUE KEY `iid` (`iid`),
  ADD KEY `orderinfo_ibfk_2` (`sid`),
  ADD KEY `orderinfo_ibfk_3` (`cid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`scname`),
  ADD KEY `fk_subcategory_category` (`cname`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instrument`
--
ALTER TABLE `instrument`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orderinfo`
--
ALTER TABLE `orderinfo`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `instrument`
--
ALTER TABLE `instrument`
  ADD CONSTRAINT `fk_instrument_subcategory` FOREIGN KEY (`scname`) REFERENCES `subcategory` (`scname`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_instrument_user` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `instrument_ibfk_2` FOREIGN KEY (`scname`) REFERENCES `subcategory` (`scname`);

--
-- Constraints for table `orderinfo`
--
ALTER TABLE `orderinfo`
  ADD CONSTRAINT `orderinfo_ibfk_1` FOREIGN KEY (`iid`) REFERENCES `instrument` (`iid`),
  ADD CONSTRAINT `orderinfo_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `user` (`uid`),
  ADD CONSTRAINT `orderinfo_ibfk_3` FOREIGN KEY (`cid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `fk_subcategory_category` FOREIGN KEY (`cname`) REFERENCES `category` (`cname`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
