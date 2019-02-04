-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Feb 04, 2019 at 12:47 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `datab`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `laptops`
-- 

CREATE TABLE `laptops` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `desscription` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `laptops`
-- 

INSERT INTO `laptops` VALUES (1, 'SamSung Core I3 Notebook', 300, 'samsung.jpg', 'samsung1.jpg', 'samsung3.jpg', 'Enjoy one of our latest high-powered entertainment notebooks with bright, vibrant images and lively, dynamic motion. A powerful, next generation NVIDIA Geforce 710M graphics card with up to 1GB of dedicated memory provides advanced image processing for st');
INSERT INTO `laptops` VALUES (2, 'HP Elitebookk Folio 1020', 325, 'EliteBook.jpg', 'elite1.jpg', 'elite2.jpg', 'The HP EliteBook Folio 1020 G1 Special Edition is a notebook for those professionals and business people who desire a machine they can easily slip into a bag and hit the road. The laptop is not only slim, but also very light and is strongly built to withs');
INSERT INTO `laptops` VALUES (3, 'HP Envy 17', 380, 'Envy.jpg', 'Envy1.jpg', 'Envy2.jpg', 'The HP Envy 13 has a 1080p display, which stretches far beyond a 13-inch MacBook Air''s 1440 x 900 pixel-resolution screen.CPU: 2.5GHz Intel Core i7-6500U (dual-core, 4MB Cache, turbo boost up to 3.1GHz) Graphics: Intel HD Graphics 520 RAM: 8GB DDR3L SDRAM');
INSERT INTO `laptops` VALUES (4, 'Toshiba Sattelite Fusion 15', 450, 'ToshibaSatt.jpg', 'ToshibaSatt1.jpg', 'ToshibaSatt2,jpg', 'Our Toshiba Satellite Fusion 15 (L55W-C5259) has the following technical specifications: 15.6-inch touch display (1920×1080 resolution, IPS panel, glossy surface) Windows 10 Home 64-bit. Intel Core i5-5200U dual-core processor (2.2GHz, up to 2.7GHz Turbo ');
INSERT INTO `laptops` VALUES (5, 'DELL ALIENWARE M18Xe', 579, 'ALIENWARE.jpg', 'alienware2.jpg', 'alienware1.jpg', 'Dell Alienware 17 is a Windows 10 Home laptop with a 17.30-inch display that has a resolution of 1920x1080 pixels. it comes with 16GB of RAM. The Dell Alienware 17 packs 1TB of HDD storage. Graphics are powered by Intel Integrated Integrated Graphics 5500');
INSERT INTO `laptops` VALUES (6, 'Acer Aspire 5 Notebook', 149, 'acer1.jpg', 'acer2.jpg', 'acer3.jpg', 'The Aspire 5 is a visual upgrade from other Acer laptops. The notebook is black with silver accents. The Acer logo sits a the wave of ridges of its plastic chassis, while the engraved Aspire emblem gleams from the sleek silver hinge that just looks presti');

-- --------------------------------------------------------

-- 
-- Table structure for table `www`
-- 

CREATE TABLE `www` (
  `fullname` text NOT NULL,
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `www`
-- 

INSERT INTO `www` VALUES ('yoni', 'hdffhd', 'ndndnb', 'gogo');
INSERT INTO `www` VALUES ('', '', 'root', '1234567890');
INSERT INTO `www` VALUES ('Yomi Popoola', 'yomipopoolaniyi@yagoo.com', 'yomikvng', 'viking');
INSERT INTO `www` VALUES ('Duru Chibuzor Chigozirim', 'Abayomipopoola@ymail.com', '15ch03730', 'jayz');
INSERT INTO `www` VALUES ('John Ayeni', 'j@j.com', 'john', 'password');
