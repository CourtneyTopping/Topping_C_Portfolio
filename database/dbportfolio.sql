-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 17, 2019 at 02:55 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbportfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dshort` text NOT NULL,
  `dfull` text NOT NULL,
  `preview` varchar(100) NOT NULL,
  `pagelink` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`ID`, `name`, `dshort`, `dfull`, `preview`, `pagelink`) VALUES
(1, 'BioTecture', 'Organ Regeneration Branding Campaign ', 'This project required a branding and marketing campaign for organ regeneration. The entire process had to be outlined and explained to the audience as to promote and increase awareness of organ regeneration. BioTecture is the brand my team and I created as well as a whole campaign to promote its launch.\r\n', 'busstop.jpg', 'organ.html'),
(2, 'Arbora', 'Display Build', 'The Arbora project was to create a standing and counter display for the products. The products were already created, so we were given the dimensions, as well as dimensions for size restrictions for each display, and required to build displays. Along with display renders, we created spec sheets.', 'sign.jpg', 'arbora.html'),
(3, 'Holo', 'Lexan Polycarbonate Smartphone', 'This project required designing a transparent phone made from Lexan™ polycarbonate. A new, futuristic vision for smartphones with all the standard capabilities as well as cutting edge technology. \r\n\r\nWe wanted to push the limits on what a “smartphone should do” and give users the most from their experience with Lexan’s new product base. As their entry into the smartphone world, we wanted this phone to catch the buyers eyes and bring something they had never seen before. \r\n', 'dummy_logo.jpg', 'holo.html'),
(4, 'ThermoSecure by HomeComm', 'Home Security and Temperature System Branding and Build', 'ThermoSecure by HomeCom - an all-in-one security and temperature system for your home.\r\n\r\nAs a team, we were required to create a website and rebranding for ThermoSecure. Given only the name, we created a whole new look and feel, as well as display dashboard for the system.', 'imgSection4.jpg', 'thermo.html'),
(5, 'Cricket Infographic', '', 'For this project, I had to create an info graphic outlining the steps to cricket for someone who had never played before.  Infographics are made to be simplified, so I challenged myself to create the least amount of steps possible, while still retaining the necessary information. I narrowed it down to 5 steps. Inforgaphics also require a graphical element, so I rendered out more of cartoon version of a cricket playing field, labelling the different elements at work.\r\nThis was done in Adobe Illustrator.\r\n', 'infographic.jpg', ''),
(6, 'Lager Beer Endslate', 'Endslate for Lager Beer Brewery Co.', 'For this project I was given the assets to create a final render of a beer advertisement.  The label had to wrapped around the can, and text face filled with the proper gradient to match the original image. This was done in Photoshop. ', 'endslate.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
