-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Mar 05, 2019 at 11:24 AM
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
  `type` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

-- 
-- Dumping data for table `laptops`
-- 

INSERT INTO `laptops` VALUES (1, 'SamSung Core I3 Notebook', 300, 'samsung.jpg', 'samsung1.jpg', 'samsung3.jpg', 'Enjoy one of our latest high-powered entertainment notebooks with bright, vibrant images and lively, dynamic motion. A powerful, next generation NVIDIA Geforce 710M graphics card with up to 1GB of dedicated memory provides advanced image processing for st', 'laptop');
INSERT INTO `laptops` VALUES (2, 'HP Elitebookk Folio 1020', 325, 'EliteBook.jpg', 'elite1.jpg', 'elite2.jpg', 'The HP EliteBook Folio 1020 G1 Special Edition is a notebook for those professionals and business people who desire a machine they can easily slip into a bag and hit the road. The laptop is not only slim, but also very light and is strongly built to withs', 'laptop');
INSERT INTO `laptops` VALUES (3, 'HP Envy 17', 380, 'Envy.jpg', 'Envy1.jpg', 'Envy2.jpg', 'The HP Envy 13 has a 1080p display, which stretches far beyond a 13-inch MacBook Air''s 1440 x 900 pixel-resolution screen.CPU: 2.5GHz Intel Core i7-6500U (dual-core, 4MB Cache, turbo boost up to 3.1GHz) Graphics: Intel HD Graphics 520 RAM: 8GB DDR3L SDRAM', 'laptop');
INSERT INTO `laptops` VALUES (4, 'Toshiba Sattelite Fusion 15', 450, 'ToshibaSatt.jpg', 'ToshibaSatt1.jpg', 'ToshibaSatt2.jpg', 'Our Toshiba Satellite Fusion 15 (L55W-C5259) has the following technical specifications: 15.6-inch touch display (1920×1080 resolution, IPS panel, glossy surface) Windows 10 Home 64-bit. Intel Core i5-5200U dual-core processor (2.2GHz, up to 2.7GHz Turbo ', 'laptop');
INSERT INTO `laptops` VALUES (5, 'DELL ALIENWARE M18Xe', 579, 'ALIENWARE.jpg', 'alienware2.jpg', 'alienware1.jpg', 'Dell Alienware 17 is a Windows 10 Home laptop with a 17.30-inch display that has a resolution of 1920x1080 pixels. it comes with 16GB of RAM. The Dell Alienware 17 packs 1TB of HDD storage. Graphics are powered by Intel Integrated Integrated Graphics 5500', 'laptop');
INSERT INTO `laptops` VALUES (6, 'Acer Aspire 5 Notebook', 149, 'acer1.jpg', 'acer2.jpg', 'acer3.jpg', 'The Aspire 5 is a visual upgrade from other Acer laptops. The notebook is black with silver accents. The Acer logo sits a the wave of ridges of its plastic chassis, while the engraved Aspire emblem gleams from the sleek silver hinge that just looks presti', 'laptop');
INSERT INTO `laptops` VALUES (7, 'Macbook Air 13', 700, 'shopping_cart.jpg', 'single_2.jpg', 'single_3.jpg', '13.3-inch (diagonal) LED-backlit display with IPS technology; 2560-by-1600 native resolution at 227 pixels per inch with support for millions of colors  Supported scaled resolutions:  1680 by 1050 1440 by 900 1024 by 640 16:10 aspect ratio.', 'laptop');
INSERT INTO `laptops` VALUES (8, 'Microsoft Surface Pro 4', 2000, 'surfpro.jpg', 'surfpro1.jpg', 'surfpro2.jpg', 'Microsoft Surface Pro 4 is the tablet that can replace your laptop. Featuring a 6th Gen Intel Core i7e processor with 8GB memory and a 256GB solid state drive, it is more powerful than its predecessor yet lighter than ever before.', 'laptop');
INSERT INTO `laptops` VALUES (9, 'Asus Transformer 3 pro', 650, 'asust1', 'asust2', 'asust3', '12.6 inch, 3:2 format, 2880 x 1920 px resolution, IPS wide-gamut, touch,Intel Skylake Core i7-6500U,Windows 10, Connectivity	Wireless AC, Bluetooth 4.1, WiDi, Extras	backlit keyboard folio, front facing stereo speakers, available in two colors, TPM', 'laptop');
INSERT INTO `laptops` VALUES (10, 'HP OMEN 17', 1200, 'hpomen2', 'hpomen3', 'hpomen1', 'CPU: 2.6 Ghz Intel Core i7 6700HQ (quad-core, 6MB cache, up to 3.5GHz with TurboBoost) Graphics: Nvidia GeForce GTX 1070 (8GB GDDR5 RAM), Intel HD Graphics 530 RAM: 16GB (DDR4 2133 MHz) Screen: 17.3-inch 4K (3,840 x 2,160) G-Sync screen Storage: 256GB SSD', 'laptop');
INSERT INTO `laptops` VALUES (11, 'Sony Viao 18', 550, 'vioa3', 'vioa2', 'viao1', 'It has The new sony viao laptop has enhanced cooling for longer periods of Turbo Boost (called Vaio TruePerformance), and faster performance like the Dell XPS 13 9370, but with cooler core temperatures, the laptops comes with a windows 10 operating system', 'laptop');
INSERT INTO `laptops` VALUES (12, 'Dell XPS 13', 895, 'xps1', 'xps2', 'xps3', 'CPU: 1.8GHz Intel Core i7-8565U (quad-core, 8MB cache, up to 4.6GHz) Graphics: Intel UHD Graphics 620 RAM: 16GB DDR3 (2,133MHz) Screen: 13.3-inch, Ultra HD (3,840 x 2,160) UltraSharp InfinityEdge touch display Storage: 1TB ', 'laptop');
INSERT INTO `laptops` VALUES (13, 'Lenovo ThinkPad X1 carbon', 1400, 'lenovo1', 'lenovo2', 'lenovo3', 'CPU: 1.9GHz Intel Core i5-4300U (dual-core, 3MB cache, up to 2.9GHz with Turbo Boost) Graphics: Intel HD Graphics 4400 RAM: 4GB DDR3 Screen: 14-inch, 2560 x 1440 IPS, IPS display with 10 point multi-touch control Storage: 180GB SSD Ports: 2 USB 3.0, mini ', 'laptop');
INSERT INTO `laptops` VALUES (14, 'MacBook Air 2018', 1700, 'macpro3', 'macpro2', 'macpro1', '15.4-inch LED-backlit display with IPS technology, 2880-by-1800 native resolution at 220 pixels per inch 2.6GHz quad-core sixth-gen Intel Core i7 processor AMD Radeon Pro 450 graphics based on the 14-nanometer Polaris architecture 16GB RAM 256GB SSD 4 x T', 'laptop');
INSERT INTO `laptops` VALUES (15, 'Samsung Notebook Pen 9', 1150, 'sampen1', 'sampen2', 'sampen3', 'PROCESSOR	8th Generation Intel Corei7 Processor MEMORY Up to 16GB (DDR4) STORAGE Up to 512GB (NVMe PCIe) GRAPHICS Intel HD Graphics POWER 39Wh WEIGHT 995g CMF Light Titan DIMENSION 310.5 x 206.6 x 14.6-16.5mm PORTS USB-C x 1, USB 3.0 X 1.', 'laptop');
INSERT INTO `laptops` VALUES (16, 'Toshiba ChromeBook  2', 600, 'chromebook', 'chromebook1', 'chromebook3', 'CPU: 2.1GHz Intel Core i3-5015U (dual-core, 3MB cache) Graphics: Intel HD Graphics 5500 RAM: 4 GB DDR3L (1,600MHz) Screen: 13.3-inch, 1,920 x 1,090 FHD TruBrite TFT LED backlit display Storage: 16GB eMMC Ports: 1 x USB 3.0, 1 x USB 2.0, HDMI, SD card slot', 'laptop');
INSERT INTO `laptops` VALUES (17, 'Dell Latitude 7389', 950, 'lat1', 'lat2', 'lat3', 'Screen Size: 13.3 inches Screen Resolution: 1920x1080 Max Screen Resolution: 1920 x 1080 Processor	2.8 GHz Intel Atom RAM	16 GB DDR4_SDRAM Hard Drive	256 GB flash_memory_solid_state Graphics Coprocessor:Intel HD Graphics 620 Chipset Brand :intel', 'laptop');
INSERT INTO `laptops` VALUES (18, 'Dell Inispiron 14 3467', 500, 'inispiron1', 'inispiron2', 'inispiron3', '6th Gen Intel:Core  i3 6th Generation Intel: Core:i3-6006U Intel UHD Graphics 620 8 GB memory 1TB HDD storage 14" HD display Windows 10 Pro', 'laptop');
INSERT INTO `laptops` VALUES (20, 'Microsoft Surface Laptop', 1500, 'surf2', 'surf3', 'surf1', 'Processor Manufacturer: Intel Product Type: Notebook Standard Memory: 8 GB Processor Type: Core i7 Processor Speed: 2.50 GHz Colour: Silver Window: 10 Pro', 'laptop');
INSERT INTO `laptops` VALUES (22, 'hp all in 1', 240, 'HPALLINONE.jpg', 'HPALLINONE.jpg', 'HPALLINONE.jpg', '13.3-inch (diagonal) LED-backlit display with IPS technology; 2560-by-1600 native resolution at 227 pixels per inch with support for millions of colors  Supported scaled resolutions:  1680 by 1050 1440 by 900 1024 by 640 16:10 aspect ratio,Integrated Touc', 'laptop');
INSERT INTO `laptops` VALUES (23, 'Asus Viviboox Max', 790, 'vivobook1', 'vivobook2', 'vivobook1', 'Hard Drive Capacity: 500GB Hard Drive Type  SATA Operating System: Windows 10 Processor Speed (Base): 1.6 Gigahertz Processor Model: Intel Pentium Quad-Core N3710 System Memory (RAM):  4GB Graphics: Intel HD graphics Battery Life:   4 hours Screen Size: 1', 'laptop');
INSERT INTO `laptops` VALUES (24, 'Lenovo IdeaPad', 379, 'featured_7', 'lenovo2', 'featured_7', 'Model - LENOVO INTEL CORE i3Processor 2.0GHzMemory - 4gbHard disk - 1TBGraphics Card - Intel HD GraphicsScreen - 15.6 HD BV LED-backlight DisplaySuperMulti 8X DVD-RWNetwork - WiFi 802.11 bgn, BluetoothWebcam + Mic,Battery - Li-Ion 4-cellOperating system -', 'laptop');
INSERT INTO `laptops` VALUES (29, 'HP Stream 11-y020wm', 524, 'steam1', 'steam2', 'steam1', '11.6 display LED Backlight, HD Anti-Glare Display Intel Celeron N3060 dual-core processor 4GB DDR3L SDRAM system memory 32GB eMMC drive 10 hours of battery life Intel HD Graphics 400 Weight: 2.57 lbs 802.11ac Wireless LAN Bluetooth wifi windows 10 home Ca', 'laptop');
INSERT INTO `laptops` VALUES (26, 'HP PAVILION (ALL-IN-ONE) 7th Gen', 589, 'pav1', 'pav2', 'pav1', 'Intel Core i5-7400T (2.4 GHz, up to 3 GHz with Intel Turbo Boost Technology, 6 MB cache, 4 cores) processor 4GB DDR4 RAM 1TB hard drive 23.8-inch screen, NVIDIA GeForce 930MX (2 GB GDDR5 dedicated) 2GB Graphics Windows 10 Home operating system', 'laptop');
INSERT INTO `laptops` VALUES (30, 'LHMZNIY', 700, 'lhm1', 'lhm2', 'lhm3', 'Screen Size:14.1 inch  Processor Model:Intel J3455 Quad Core CPU Processor Main Frequency:64-bit 1.5GHz(up to 2.3GHz) Operating system:Windows 10 pro. 6G RAM-64GB/128GB SSD ROM ', 'laptop');
INSERT INTO `laptops` VALUES (31, ' LHMZNIY A-1 Gold Z8350 ', 689, 'lhg2', 'lhg3', 'lhg1', 'Screen Size:14.1 inch  Processor Model:Intel Atom X5 Z8350 Quad Core CPU Processor Main Frequency:64-bit 1.44GHz Operating system:Windows 10 pro. 32/64 GB SSD', 'laptop');
INSERT INTO `laptops` VALUES (32, ' Microsoft Microsoft Surface Book 2', 1200, 'micro2', 'micro1', 'micro3', 'Microsoft Surface Book 2 Features a 8th generation Intel Quad Core i7 Processor, 1 TB of storage, 16 GB RAM, and up to 17 hours of video playback Enhanced Graphics performance with NVIDIA GeForce GTX 1050 discrete GPU w/2GB GDDR5 Graphics Memory The faste', 'laptop');
INSERT INTO `laptops` VALUES (33, 'HP Stream 11PRO -INTEL ', 900, 'pro1', 'pro2', 'pro1', 'Hp Stream 11 (1.1 to 2.2)GHz Intel Celeron, 64GB eMMC Storage, 4GB RAM, Wi-Fi, Bluetooth 4.0, upto 8.2hrs of Battery runtime, 11.6" diagonal HD anti-glare WLED-backlit display, Intel HD Graphics, 1 USB 3.0; 1 USB 2.0; 1 HDMI; 1 headphone/microphone combo,', 'laptop');
INSERT INTO `laptops` VALUES (34, 'ASUS ROG ZEPHYRUS', 2000, 'rog1', 'rog2', 'rog3', 'Screen Size	15.6 inches Max Screen Resolution:1920x1080 pixels Processor	2.2 GHz Intel Core i7 RAM:16 GB DDR4 2666 Memory Speed	2666 MHz Hard Drive:1000 GB Hybrid Drive Graphics Coprocessor NVIDIA GeForce GTX 1070 Chipset Brand	nvidia Card Description	Ded', 'laptop');
INSERT INTO `laptops` VALUES (35, 'Lenovo Thinkpad T480', 860, 'think1', 'think2', 'think3', 'Processor: Intel Quad Core i5-8250U Processor (1.60GHz - 3.40GHz, 6MB Cache)  RAM: 8GB DDR4 2400MHz  Display: 14" HD 1366x768 LED Display  Graphics: Intel UHD Graphics 620  Storage: 500GB Solid State Drive', 'laptop');
INSERT INTO `laptops` VALUES (36, 'Huawei mediapad t3', 225, 'best_6', 'hua_2', 'hua_3', 'CPU：MTK MT8127 Quad Core Screen：7 inch IPS 1024x600 RAM+ROM：2GB Ram + 16GB Rom (Expandable up to 128GB Micro SD) Camera：2.0 Back Camera,2.0MP Front Camera System：EMUI 4.1 ,Android 6.0  Battery：3000mAh(Typical)', 'smartphone');
INSERT INTO `laptops` VALUES (37, 'Luna Smartphone', 225, 'new_single', 'luna1', 'luna2', 'Qualcomm Snapdragon 636 processor Android 8.1 Oreo OS 4G LTE speed 4.5" IPS touch screen with Corning Gorilla Glass 3, 1620 x 1080 resolution, and 434 ppi Dual 13.0MP and 5.0MP rear cameras with dual-tone LED flash, HDR and 4K video recording 64GB interna', 'smartphone');
INSERT INTO `laptops` VALUES (38, 'Samsung J33OFN', 379, 'best_4', 'sam1', 'sam2', 'Qualcomm Snapdragon 636 processor Android 8.1 Oreo OS 4G LTE speed 4.5" IPS touch screen with Corning Gorilla Glass 3, 1620 x 1080 resolution, and 434 ppi Dual 13.0MP and 5.0MP rear cameras with dual-tone LED flash, HDR and 4K video recording 32GB interna', 'smartphone');
INSERT INTO `laptops` VALUES (39, 'Nokia 3310(2017)', 379, 'new_6', 'nokia2', 'new_6', 'Be inspired with the Nokia 3310 Mobile phone offers a smooth mobile experience with effective 1,000mAh battery with up to 30 days standby time. It features 1.77-inch, Triple SIM Card Slots, Social Apps Preloaded/Game store Up to 8GB, Memory Card Slot, MP3', 'smartphone');
INSERT INTO `laptops` VALUES (40, 'Lenovo A5', 450, 'nov5', 'nov2', 'nov3', 'CPU: MTK6739 Quad Core 1.3GHz SIM Card: Nano SIM Card  Display: 5.45 inch 1440 x 720 pixels RAM: 3GB ROM: 16GB Front camera: 8.0MP  ', 'smartphone');
INSERT INTO `laptops` VALUES (41, 'Tecno CamonCx', 550, 'camoncx', 'camon2', 'camon3', 'Operating System: AndroidTM 7.0 Processor: 1.5 GHz Octa-Core Network: GSM/WCDMA/LTE Band: GSM: 900/1800, WCDMA: 900/2100, LTE: Band 3/7/20/28A/40 SIM: Dual Micro SIM Memory: 16GB ROM + 2GB RAM', 'smartphone');
INSERT INTO `laptops` VALUES (42, 'Apple Iphone 6s', 460, '6s', '6s1', '6s2', '4.7 inch 1334x750 Screen 2GB RAM + 16GB ROM Back Camera 12.0MP + Front Camera 5.0MP Support: 4G,Bluetooth,Touchscreen，iCloud cloud service CPU: Dual Core System: i OS 9', 'smartphone');
INSERT INTO `laptops` VALUES (43, 'Infinix Note 5 Pro Stylus', 600, 'sty1', 'infi2', 'infi1', '+ Stylus Pen Display: 6-Inch FHD+ CPU: Octa Core 2.0GHz Memory: 4GB RAM + 32GB ROM Camera: 16MP Rear + 16MP Front Operating System: Android (Go Edition)', 'smartphone');
INSERT INTO `laptops` VALUES (44, 'Infinix Hot 6X', 550, 'nix3', 'nix2', 'nix3', 'Display: 6.2-inch HD+ (720 x 1440 pixels) IPS LCD display Dimensions: 156.2 x 75.6 x 8.2 mm Weight: 168g Processor: Qualcomm Snapdragon 425 1.3GHz Quad-core CPU RAM: 2GB RAM Internal storage: 16GB (Micro SD card support up to 128GB)', 'smartphone');
INSERT INTO `laptops` VALUES (45, 'Nokia X5', 448, 'nok1', 'nok2', 'nok3', '5.86 Inch 19:9 2.5D HD+ Full Screen, 1520*720 Pixel Helio P60 MTK6771 2.0GHz Octa Core Support Touch ID，Support Face ID 3GB RAM + 32GB ROM 13 MP & 5 MP Dual Back Camera + 8 MP Front Camera Android 8.1 System', 'smartphone');
INSERT INTO `laptops` VALUES (46, 'Apple IPhone 6 Plus', 320, '6p1', '6p2', '6p3', 'High quality refurbished by Strictly tested Screen: 5.5" LED-backlit IPS LCD, capacitive touchscreen CPU: Dual Core 1.4 GHz Cyclone (ARM v8-based) Memory: 64GB, 1GB RAM Operating System: iOS 8 Camera: 8 MP (Primary); 1.2 MP (Secondary)', 'smartphone');
INSERT INTO `laptops` VALUES (47, 'itel A32F', 357, 'itel1', 'itel2', 'itel3', 'Dual SIM 5" Screen Size Android Oreo 8.1 Go Edition Fingerprint Scanner 5MP + 2MP Camera with Front Flash 1.3GHz Quad-core Processor', 'smartphone');
INSERT INTO `laptops` VALUES (48, 'Samsung Galaxy Tab A 7.0', 366, 'samtab2', 'samtab1', 'samtab3', ' 1.3 GHz Snapdragon 410 CPU 1.5GB of RAM 7.0" IPS Multi Touch Display 1280 x 800 Screen Resolution Adreno 306 GPU', 'smartphone');
INSERT INTO `laptops` VALUES (49, 'Samsung Galaxy Tab S4', 400, 'ab1', 'ab2', 'ab3', 'Powerful connectivity with USB-C Android 8.0 (Oreo) operating system 10.5" screen with 2560 x 1600 resolution 64GB internal storage plus microSD slot Octa-core processor Dual HD cameras for photos and face-to-face ch', 'smartphone');
INSERT INTO `laptops` VALUES (50, 'Apple IPhone X', 1600, 'x1', 'x5', 'x3', 'Screen: 5.8" OLED HD Retina Display Memory: 3GB RAM ,256GB ROM CPU: A11 Bionic Chip with 64-bit architecture Operating System: iOS 11 Camera: 12MP wide-angle and telephoto cameras, 7MP TrueDepth front camera', 'smartphone');
INSERT INTO `laptops` VALUES (51, 'Tecno Spark 2', 459, 'spark1', 'spark2', 'spark3', 'With a Manchester City theme, this new TECNO Spark 2 has a well designed look that is very slim and light in weight which is in line with TECNO concise design principle. Crafted through the most advanced technology, the phone boasts of a 5.7mm exquisite b', 'smartphone');
INSERT INTO `laptops` VALUES (52, 'Tecno T401', 123, 't1', 't2', 't3', 'Operating System: Mos Network: GSM/GPRS Band: GSM900/DCS1800  Display : 2.4 screen Camera: Back Camera with Flash Memory: 4MB ROM + 4MB RAM', 'smartphone');

-- --------------------------------------------------------

-- 
-- Table structure for table `reviews`
-- 

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL auto_increment,
  `laptop_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `reviews`
-- 

INSERT INTO `reviews` VALUES (1, 3, 'glad', 3, 6, '2019-03-03 15:36:24');
INSERT INTO `reviews` VALUES (2, 38, 'wonderful', 4, 6, '2019-03-03 16:19:02');
INSERT INTO `reviews` VALUES (3, 41, 'so amazing', 2, 6, '2019-03-03 16:23:54');
INSERT INTO `reviews` VALUES (4, 7, 'tdtfgh', 4, 3, '2019-03-03 10:38:54');
INSERT INTO `reviews` VALUES (5, 45, 'very good product, with a nice pouch', 3, 10, '2019-03-04 16:25:46');
INSERT INTO `reviews` VALUES (6, 40, 'very nice product', 5, 10, '2019-03-04 16:34:14');

-- --------------------------------------------------------

-- 
-- Table structure for table `smartphones`
-- 

CREATE TABLE `smartphones` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `smartphones`
-- 

INSERT INTO `smartphones` VALUES (1, 'Huawei mediapad t3', 225, 'best_6', 'hua_2', 'hua_3', 'CPU：MTK MT8127 Quad Core Screen：7 inch IPS 1024x600 RAM+ROM：2GB Ram + 16GB Rom (Expandable up to 128GB Micro SD) Camera：2.0 Back Camera,2.0MP Front Camera System：EMUI 4.1 ,Android 6.0  Battery：3000mAh(Typical)');
INSERT INTO `smartphones` VALUES (2, 'Luna Smartphone', 225, 'new_single', 'luna1', 'luna2', 'Qualcomm Snapdragon 636 processor Android 8.1 Oreo OS 4G LTE speed 4.5" IPS touch screen with Corning Gorilla Glass 3, 1620 x 1080 resolution, and 434 ppi Dual 13.0MP and 5.0MP rear cameras with dual-tone LED flash, HDR and 4K video recording 64GB interna');
INSERT INTO `smartphones` VALUES (3, 'Samsung J33OFN', 379, 'best_4', 'sam1', 'sam2', 'Qualcomm Snapdragon 636 processor Android 8.1 Oreo OS 4G LTE speed 4.5" IPS touch screen with Corning Gorilla Glass 3, 1620 x 1080 resolution, and 434 ppi Dual 13.0MP and 5.0MP rear cameras with dual-tone LED flash, HDR and 4K video recording 32GB interna');
INSERT INTO `smartphones` VALUES (4, 'Nokia 3310(2017)', 379, 'new_6', 'nokia2', 'nokia3', 'Be inspired with the Nokia 3310 Mobile phone offers a smooth mobile experience with effective 1,000mAh battery with up to 30 days standby time. It features 1.77-inch, Triple SIM Card Slots, Social Apps Preloaded/Game store Up to 8GB, Memory Card Slot, MP3');
INSERT INTO `smartphones` VALUES (5, 'Lenovo A5', 450, 'nov5', 'nov2', 'nov3', 'CPU: MTK6739 Quad Core 1.3GHz SIM Card: Nano SIM Card  Display: 5.45 inch 1440 x 720 pixels RAM: 3GB ROM: 16GB Front camera: 8.0MP  ');
INSERT INTO `smartphones` VALUES (6, 'Tecno CamonCx', 550, 'camoncx', 'camon2', 'camon3', 'Operating System: AndroidTM 7.0 Processor: 1.5 GHz Octa-Core Network: GSM/WCDMA/LTE Band: GSM: 900/1800, WCDMA: 900/2100, LTE: Band 3/7/20/28A/40 SIM: Dual Micro SIM Memory: 16GB ROM + 2GB RAM');
INSERT INTO `smartphones` VALUES (7, 'Apple Iphone 6s', 460, '6s', '6s1', '6s2', '4.7 inch 1334x750 Screen 2GB RAM + 16GB ROM Back Camera 12.0MP + Front Camera 5.0MP Support: 4G,Bluetooth,Touchscreen，iCloud cloud service CPU: Dual Core System: i OS 9');
INSERT INTO `smartphones` VALUES (8, 'Infinix Note 5 Pro Stylus', 600, 'sty1', 'infi2', 'infi1', '+ Stylus Pen Display: 6-Inch FHD+ CPU: Octa Core 2.0GHz Memory: 4GB RAM + 32GB ROM Camera: 16MP Rear + 16MP Front Operating System: Android (Go Edition)');
INSERT INTO `smartphones` VALUES (9, 'Infinix Hot 6X', 550, 'nix3', 'nix2', 'nix3', 'Display: 6.2-inch HD+ (720 x 1440 pixels) IPS LCD display Dimensions: 156.2 x 75.6 x 8.2 mm Weight: 168g Processor: Qualcomm Snapdragon 425 1.3GHz Quad-core CPU RAM: 2GB RAM Internal storage: 16GB (Micro SD card support up to 128GB)');

-- --------------------------------------------------------

-- 
-- Table structure for table `www`
-- 

CREATE TABLE `www` (
  `fullname` text NOT NULL,
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `www`
-- 

INSERT INTO `www` VALUES ('', '', 'root', '1234567890', 2);
INSERT INTO `www` VALUES ('Duru Chibuzor Chigozirim', 'Abayomipopoola@ymail.com', '15ch03730', 'jayz', 4);
INSERT INTO `www` VALUES ('John Ayeni', 'j@j.com', 'john', 'password', 5);
INSERT INTO `www` VALUES ('akpabio', 'akapabio@gmail.com', 'akb', 'akb', 6);
INSERT INTO `www` VALUES ('Chinonso Duru', 'chidebere@yahoo.com', 'chiboy', 'chiboy', 7);
INSERT INTO `www` VALUES ('Yomi Popoola', 'yomipopoola@gmail.com', 'yomi', 'yomi', 8);
INSERT INTO `www` VALUES ('user', 'user@gmail.com', 'user', 'user', 10);
