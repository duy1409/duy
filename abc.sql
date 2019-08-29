-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 26, 2018 at 05:16 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalogue`
--

CREATE TABLE `catalogue` (
  `cId` int(10) UNSIGNED NOT NULL,
  `cName` varchar(50) DEFAULT NULL,
  `cDescription` varchar(200) DEFAULT NULL,
  `lastModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalogue`
--

INSERT INTO `catalogue` (`cId`, `cName`, `cDescription`, `lastModifiedBy`) VALUES
(13, 'Ä&ocirc;Ì€ Ä‚n ChiÌnh', '', 1),
(15, 'NÆ°Æ¡Ìc', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `iId` varchar(10) NOT NULL,
  `iName` varchar(50) DEFAULT NULL,
  `iDescription` varchar(300) DEFAULT NULL,
  `iPrice` int(10) UNSIGNED DEFAULT NULL,
  `iStatus` varchar(20) DEFAULT NULL,
  `iSize` varchar(20) DEFAULT NULL,
  `iImage` varchar(300) DEFAULT NULL,
  `catalogueId` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`iId`, `iName`, `iDescription`, `iPrice`, `iStatus`, `iSize`, `iImage`, `catalogueId`) VALUES
('1', 'PhÆ¡Ì‰', 'Phá»Ÿ l&agrave; má»™t m&oacute;n Äƒn truyá»n thá»‘ng cá»§a Viá»‡t Nam, cÅ©ng c&oacute; thá»ƒ xem l&agrave; má»™t trong nhá»¯ng m&oacute;n Äƒn ti&ecirc;u biá»ƒu cho ná»n áº©m thá»±c Viá»‡t Nam. Th&agrave;nh pháº§n ch&iacute;nh cá»§a phá»Ÿ l&agrave; b&aacute;nh phá»Ÿ v&agrave; nÆ°á»›c d&ugrave;ng (h', 2, '', '', '1.PNG', 13),
('2', 'BuÌn ChaÌ‰', 'B&uacute;n cháº£ l&agrave; m&oacute;n Äƒn vá»›i b&uacute;n, cháº£ thá»‹t lá»£n nÆ°á»›ng tr&ecirc;n than hoa v&agrave; b&aacute;t nÆ°á»›c máº¯m chua cay máº·n ngá»t. M&oacute;n Äƒn xuáº¥t xá»© tá»« miá»n Báº¯c Viá»‡t Nam, l&agrave; thá»© qu&agrave; c&oacute; sá»©c sá»‘ng l&acirc;u bá»n nháº¥t cá»§', 3, '', '', '2.PNG', 13),
('3', 'X&ocirc;i G&agrave;', 'X&ocirc;i g&agrave; Ä‘Æ°á»£c l&agrave;m vá»›i nÆ°á»›c cá»‘t dá»«a v&agrave; l&aacute; dá»©a, sau Ä‘&oacute; x&eacute; phay thá»‹t g&agrave; luá»™c hoáº·c thá»‹t g&agrave; quay, th&aacute;i má»ng láº¡p sÆ°á»ng v&agrave; b&agrave;y l&ecirc;n b&aacute;t x&ocirc;i nhÆ° má»™t Ä‘á»“ Äƒn k&egrave;m.', 1, '', '', '3.PNG', 13),
('4', 'BaÌnh XeÌ€o', 'BaÌnh XeÌ€o l&agrave; má»™t loáº¡i b&aacute;nh Ä‘Æ°á»£c tr&aacute;ng má»ng trong 1 chiáº¿c cháº£o lá»›n, b&ecirc;n dÆ°á»›i l&agrave; báº¿p than Ä‘á» rá»±c. Th&agrave;nh pháº§n bao gá»“m bá»™t gáº¡o pha lo&atilde;ng vá»›i nÆ°á»›c, t&ocirc;m, thá»‹t lá»£n hoáº·c má»±c c&ugrave;ng c&aacute;c loáº¡i ', 0, '', '', '4.PNG', 13),
('4534543', 'RÆ°Æ¡Ì£u', ' l&agrave; má»™t loáº¡i thá»©c uá»‘ng c&oacute; cá»“n Ä‘Æ°á»£c l&ecirc;n men tá»« nho.', 5, '', '', '4534543.PNG', 15),
('777', 'Coca-Cola', ') l&agrave; má»™t thÆ°Æ¡ng hiá»‡u nÆ°á»›c ngá»t c&oacute; ga chá»©a nÆ°á»›c cacbon Ä‘i&ocirc;x&iacute;t b&atilde;o h&ograve;a Ä‘Æ°á»£c sáº£n xuáº¥t bá»Ÿi C&ocirc;ng ty Coca-Cola. Coca-Cola ban Ä‘áº§u Ä‘Æ°á»£c Ä‘iá»u cháº¿ bá»Ÿi dÆ°á»£c sÄ© John Pemberton v&agrave;o cuá»‘i tháº¿ ká»· XIX vá»›i má»¥', 1, '', '', '777.PNG', 15),
('888', 'Bia SaÌ€i GoÌ€n', 'Bia S&agrave;i G&ograve;n l&agrave; káº¿t tinh sáº£n váº­t cá»§a v&ugrave;ng Ä‘áº¥t phÆ°Æ¡ng Nam tr&ugrave; ph&uacute; v&agrave; tinh tháº§n h&agrave;o sáº£ng ph&oacute;ng kho&aacute;ng cá»§a ngÆ°á»i S&agrave;i G&ograve;n, trá»Ÿ th&agrave;nh má»™t pháº§n kh&ocirc;ng thá»ƒ thiáº¿u trong cuá»™c sá»‘n', 0, '', '', '888.PNG', 15),
('999', 'Bia HaÌ€ N&ocirc;Ì£i', 'l&agrave; nh&atilde;n hiá»‡u bia quen thuá»™c v&agrave; ná»•i tiáº¿ng cá»§a ngÆ°á»i d&acirc;n H&agrave; Ná»™i.', 1, '', '', '999.PNG', 15);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uId` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uId`, `username`, `password`, `status`) VALUES
(1, 'admin', '93dd646db7ac1de0ea652af8c4c22820', '1'),
(2, 'nguyentrungduc', '93dd646db7ac1de0ea652af8c4c22820', '1'),
(3, 'nguyenduongduy', '84a1d77ec03991c3e327db13e50977e8', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalogue`
--
ALTER TABLE `catalogue`
  ADD PRIMARY KEY (`cId`),
  ADD KEY `lastModifiedBy` (`lastModifiedBy`),
  ADD KEY `cName` (`cName`(7));

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`iId`),
  ADD KEY `iName` (`iName`(10)),
  ADD KEY `catalogueId` (`catalogueId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uId`),
  ADD KEY `username` (`username`(10));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalogue`
--
ALTER TABLE `catalogue`
  MODIFY `cId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `catalogue`
--
ALTER TABLE `catalogue`
  ADD CONSTRAINT `catalogue_ibfk_1` FOREIGN KEY (`lastModifiedBy`) REFERENCES `user` (`uId`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`catalogueId`) REFERENCES `catalogue` (`cId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
