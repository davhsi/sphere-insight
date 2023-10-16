-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2023 at 05:47 PM
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
-- Database: `sphere_insight`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `mobile_number` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `email`, `password`, `name`, `mobile_number`) VALUES
(1, 'hari@gmail.com', 'hari', 'harith', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `africa`
--

CREATE TABLE `africa` (
  `id` int(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `africa`
--

INSERT INTO `africa` (`id`, `link`, `image`, `title`, `page`) VALUES
(1, 'https://youtu.be/h25fUkXl2s0?list=PLBmF7uPtI-4GLz6xL6QYTEul5dNk25Cc1', 'africa-1.png', 'What to expect on an East African Safari?', 'africa1.html'),
(2, 'https://youtu.be/TlRkxQgMJJI', 'africa-2.png', 'Living with Cheetahs <br>I Volunteering in South Africa', 'africa2.html'),
(3, 'https://youtu.be/TlRkxQgMJJI', 'africa-3.png', 'Living with Big Cats <br>I Volunteering in South Africa', 'africa3.html'),
(4, 'https://youtu.be/WcHLYswGjRk', 'africa-4.png', 'Volunteering in Africa :<br> Elephants and Mud Wrestling', 'africa4.html'),
(5, 'https://youtu.be/a8i66DHQORg', 'africa-5.png', 'Volunteering with Lions in Africa!', 'africa5.html');

-- --------------------------------------------------------

--
-- Table structure for table `america`
--

CREATE TABLE `america` (
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `america`
--

INSERT INTO `america` (`link`, `image`, `title`, `page`) VALUES
('https://youtu.be/yOXNxKWziqw', './america-1.png', 'THIS is how you do WINTER! I Winterlude, Ottawa', 'america1.html'),
('https://youtu.be/wknjpVFDyMs', './america-2.png', 'Things didn\'t go according to plan I Banff, Canada', 'america2.html'),
('https://youtu.be/CFsGQZV1FtM', './america-3.png', 'the MOST HAUNTED city in AMERICA-.<br> I Savannah, Georgia', 'america3.html'),
('https://youtu.be/tFMykVH5AAg', './america-4.png', 'WINE TASTING and BEACH DAY I Kelowna,<br>Canada', 'america4.html'),
('https://youtu.be/sFFpm4DmE3A', './america-5.png', 'I\'ve never done this before!! II Vegas', 'america5.html'),
('https://youtu.be/J_pbKx9T0O4', './america-6.png', '[WORLDS BIGGEST WINTER CARNAVAL!\"<br>\"I Carnaval de Quebec in Quebec City]', 'america6.html'),
('https://youtu.be/ZrYYVF25HuU', './america-7.png', 'Biking San Francisco', 'america7.html'),
('https://youtu.be/PvhO7GuVYCA', './america-8.png', 'The AMAZING East Coast of Nova Scotia', 'america8.html'),
('https://youtu.be/1RuqGUtPHyc', './america-9.png', 'A DAY in NEW YORK', 'america9.html'),
('https://youtu.be/XqrxNADImMc', './america-10.png', 'A HARD AXE TO FOLLOW - Halifax,<br> Nova Scotia', 'america10.html'),
('https://youtu.be/LJONS5XDEEE', './america-11.png', 'Whiskey Drinking at Los Glaciares National Park', 'america11.html'),
('https://youtu.be/PvhO7GuVYCA', './america-12.png', 'RIDE the PIPE! - one-man ROLLER COASTER \"<br>\" I Revelstoke, Canada', 'america12.html');

-- --------------------------------------------------------

--
-- Table structure for table `asia`
--

CREATE TABLE `asia` (
  `id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asia`
--

INSERT INTO `asia` (`id`, `link`, `image`, `title`, `page`) VALUES
(1, 'https://youtu.be/l6fgcnRCcgc', './asia-1.png', 'First Time in South Korea <br>I Exploring Seoul With a local!', 'asia1.html'),
(2, 'https://youtu.be/yNHGWn70dp8', './asia-2.png', 'Couples Vacation in Phuket +<br> Pha Nga Bay (James Bond Island)', 'asia2.html'),
(3, 'https://youtu.be/9z9FuIROwPU', './asia-3.png', '1 CAN\'T BELIEVE this is TURKEY!!<br> I Antalya, Turkey', 'asia3.html'),
(4, 'https://youtu.be/ICcjdbo2Sf8', './asia-4.png', 'INDIAN WONDER WOMEN !!<br> I Me to We Day', 'asia4.html'),
(5, 'https://youtu.be/KT8cAvq2x58', './asia-5.png', 'VOLUNTEERING in INDIA!!<br> I Me to We Day I', 'asia5.html'),
(6, 'https://youtu.be/XD_TEn1y6Ug', './asia-6.png', 'what LIFE IS LIKE in INDIA<br> I Me to We Day 2', 'asia6.html'),
(7, 'https://youtu.be/zyrGHV9aans', './asia-7.png', 'JAIPUR was such a SURPRISE!!', 'asia7.html'),
(8, 'https://youtu.be/A7AC_WMXfFo', './asia-8.png', 'Is this REALLY MUMBAI INDIA??!!', 'asia8.html'),
(9, 'https://youtu.be/HOk8YtIpomc', './asia-9.png', 'AMAZING COLOR FESTIVAL!<br> I celebrating HOLI in INDIA!', 'asia9.html'),
(10, 'https://youtu.be/A7AC_WMXfFo', './asia-10.png', 'The Creative Side of Beijing', 'asia10.html');

-- --------------------------------------------------------

--
-- Table structure for table `europe`
--

CREATE TABLE `europe` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `europe`
--

INSERT INTO `europe` (`id`, `link`, `image`, `title`, `page`) VALUES
(1, 'https://youtu.be/kffXXE9Zkr0', 'europe1.png', 'A taste of Italy -<br> Ghost towns Italian food!', 'europe1.html'),
(2, 'https://youtu.be/2dwsAYEfT8I', 'europe2.png', 'French Riviera road trip!<br> Cute villages in the south of France', 'europe2.html'),
(3, 'https://youtu.be/ZZpcLgXjpaQ', 'europe3.png', 'SECRET SCOTTISH WATER SLIDE!<br> wild camping in the SCOTTISH HIGHLANS!', 'europe3.html'),
(4, 'https://youtu.be/EHoDqHzWCUw', 'europe4.png', 'our EPIC GREEK BIRTHDAY!!', 'europe4.html'),
(5, 'https://youtu.be/pEjd3Iw0TPs', 'europe5.png', 'an OUTSICER\'s GUIDE to BRISTOL', 'europe5.html'),
(6, 'https://youtu.be/nFk9V2PLgoU', 'europe6.png', 'MEDICALLY EVACUATED! the MATTERHORN:<br> Zermatt, Switzerland', 'europe6.html'),
(7, 'https://youtu.be/j2vxXn2cwFE', 'europe10.png', 'what MOSCOW RUSSIA is REALLY like...', 'europe7.html'),
(8, 'https://youtu.be/g5n0711YWm4', 'europe11.png', 'the SPAIN you DONT KNOW: Asturias', 'europe8.html'),
(9, 'https://youtu.be/IslQGIao-7o', 'europe12.png', 'Turns out Im FINNISH!<br> And we\'re exploring Helsink!', 'europe9.html'),
(10, 'https://youtu.be/NQ554QAIqaQ', 'europe7.png', 'BEST SUNFLOWER field in SWITZERLAND!(Geneva)', 'europe10.html'),
(11, 'https://youtu.be/r-pROvX1imI', 'europe8.png', 'what SWITZERLAND AMD TASTES like...<br> GENEVA', 'europe11.html'),
(12, 'https://youtu.be/MxPioEoMOgc', 'europe9.png', 'WOW!! Summer in <br>ST.PETERSBURG RUSSIA', 'europe12.html');

-- --------------------------------------------------------

--
-- Table structure for table `packing`
--

CREATE TABLE `packing` (
  `id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packing`
--

INSERT INTO `packing` (`id`, `link`, `image`, `title`, `page`) VALUES
(1, 'https://youtu.be/WrkwFoMwCiE', 'packing1.png', 'Backpacking + camping PACKING GUIDE<br> Tips & Essentials!', 'packing1.html'),
(2, 'https://youtu.be/x1i9evS2Aac', 'packing2.png', 'SPRING TRAVEL PACKING GUIDE', 'packing2.html'),
(3, 'https://youtu.be/LeC1QrBVUaU', 'packing3.png', 'My camera bay + <br>Day bag collection', 'packing3.html'),
(4, 'https://youtu.be/e7mAnfzlHQw', 'packing4.png', 'to quick &easy<br> Travel PACKING HACKS', 'packing4.html'),
(5, 'https://youtu.be/QO52614n4_A?list=PLBmF7uPtI-4G0GNzB3ATC-9wrA5bOpNSS', 'packing5.png', 'HOW TO PLAN AN EPIC ROAD TRIP', 'packing5.html'),
(6, 'https://youtu.be/8B7IziPJkjM?list=PLBmF7uPtI-4G0GNzB3ATC-9wrA5bOpNSS', 'packing6.png', 'WINTER TRAVEL PACKING GUIDE', 'packing6.html'),
(7, 'https://youtu.be/e7mAnfzlHQw?list=PLBmF7uPtI-4G0GNzB3ATC-9wrA5bOpNSS', 'packing7.png', 'my ultimate LUGGAGE collection', 'packing7.html'),
(8, 'https://youtu.be/LeC1QrBVUaU', 'packing8.png', 'what\'s in my camera bag?<br> Travel filmmaking gear', 'packing8.html'),
(9, 'https://youtu.be/yHKLkPJcV1E?list=PLBmF7uPtI-4G0GNzB3ATC-9wrA5bOpNSS', 'packing9.png', 'packing TRAVEL HACKS +<br> how to pack!', 'packing9.html'),
(10, 'https://youtu.be/dMCSxCQjCf4?list=PLBmF7uPtI-4G0GNzB3ATC-9wrA5bOpNSS', 'packing10.png', 'what to pack: <br>CARRY ON LUGGAGE', 'packing10.html'),
(11, 'https://youtu.be/gWQEWmNXT-8', 'packing11.png', 'Backpacking packing guide <br>Europe &southeast asia', 'packing11.html'),
(12, 'https://youtu.be/39amu_2fMfg', 'packing12.png', 'what to pack: <br>Travel first aid kit', 'packing12.html');

-- --------------------------------------------------------

--
-- Table structure for table `planning`
--

CREATE TABLE `planning` (
  `id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `planning`
--

INSERT INTO `planning` (`id`, `link`, `image`, `title`, `page`) VALUES
(1, 'https://youtu.be/Bp6ABhaVSR4', 'planning1.png', 'where to travel in 2020<br>place you need to go in 2020!', 'planning1.html'),
(2, 'https://youtu.be/7lFzrLTaIP4', 'planning2.png', '2019 was fun! <br>this year of travel', 'planning2.html'),
(3, 'https://youtu.be/tFf4AYHqHSw', 'planning3.png', 'world\'s most unique gardens! <br>gardens by the bay, singapore', 'planning3.html'),
(4, 'https://youtu.be/jELC1Lb708A', 'planning4.png', 'singapore: 9 years latter...<br> what has changed?', 'planning4.html'),
(5, 'https://youtu.be/gMtfgNHkbwc', 'planning5.png', 'THIS is how you do WINTER!<br> winterlude, ottawa', 'planning5.html'),
(6, 'https://youtu.be/VMeFSBQM3ls', 'planning6.png', 'where to travel in 2019 places to go!', 'planning6.html'),
(7, 'https://youtu.be/oWNv2km14RI', 'planning7.png', '2018 YEAR OF TRAVEL (my YouTuberewind)', 'planning7.html'),
(8, 'https://youtu.be/brfDeMJ6GYU', 'planning8.png', '#VANLIFE: Should we do it?', 'planning8.html'),
(9, 'https://youtu.be/p6M6-EQDU2k', 'planning9.png', 'WHERE to TRAVEL IN 2017 PLACES TO GO!', 'planning9.html'),
(10, 'https://youtu.be/jNPt2e0-qqE', 'planning10.png', 'How I decide WHERE to TRAVEL NEXT...', 'planning10.html'),
(11, 'https://youtu.be/2Mk8Fe7xUz8', 'planning11.png', '20Holiday Travel survival Tips', 'planning11.html'),
(12, 'https://youtu.be/2Mk8Fe7xUz8', 'planning12.png', 'How to Plan an EPIC ROAD TRIP', 'planning12.html');

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`id`, `link`, `image`, `title`, `page`) VALUES
(1, 'https://youtu.be/kvcHyXFAPBE', 'tips1.png', 'why you need to know about<br> japanese encephalitis', 'tips1.html'),
(2, 'https://youtu.be/dbj-2FGu0XQ', 'tips2.png', 'TRAVELLING VEGAN WITH <br>FOOD ALLERGIES', 'tips2.html'),
(3, 'https://youtu.be/UBLjnh5QEnw', 'tips3.png', 'BEST TRAVEL APPS<br> whats on my phone?', 'tips3.html'),
(4, 'https://youtu.be/HW2RqsOXG-E', 'tips4.png', 'Renting cars in a foreign country <br>what you need to know!', 'tips4.html'),
(5, 'https://youtu.be/Bp6ABhaVSR4', 'tips5.png', 'couples travel - ADVICE?<br> TIPS & TRICKS', 'tips5.html'),
(6, 'https://youtu.be/55tfLBGtGvM', 'tips6.png', 'DO YOU TRAVEL AGENT?<br> ARE THEY WORTH IT?', 'tips6.html'),
(7, 'https://youtu.be/S9QBLtqpMsY', 'tips7.png', 'JAPAN TRAVEL FOR FIRST TIMERS-<br> what DO you need to know', 'tips7.html'),
(8, 'https://youtu.be/GaxZr2TVOnM', 'tips8.png', 'KOREA TRAVEL FOR FIRST TIMERS-<br> what DO you need to know', 'tips8.html'),
(9, 'https://youtu.be/e41dySdS3TQ', 'tips9.png', 'best music for YOUTUBE VIDEOS', 'tips9.html'),
(10, 'https://youtu.be/WrkwFoMwCiE', 'tips10.png', 'Backpacking + camping PACKING GUIDE<br> Tips & Essentials', 'tips10.html'),
(11, 'https://youtu.be/5danmHK7HE4', 'tips11.png', 'FEMALE TRAVEL HACKS', 'tips11.html'),
(12, 'https://youtu.be/VG6N2XU8JxU', 'tips12.png', 'RUSSIA TRAVEL FOR FIRST TIMERS <br>what you need to know', 'tips12.html');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `africa`
--
ALTER TABLE `africa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asia`
--
ALTER TABLE `asia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `europe`
--
ALTER TABLE `europe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packing`
--
ALTER TABLE `packing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planning`
--
ALTER TABLE `planning`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `africa`
--
ALTER TABLE `africa`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `asia`
--
ALTER TABLE `asia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `europe`
--
ALTER TABLE `europe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `packing`
--
ALTER TABLE `packing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `planning`
--
ALTER TABLE `planning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
