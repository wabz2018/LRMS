-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2018 at 11:17 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant_parent`
--

CREATE TABLE `applicant_parent` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `fid` int(10) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `mid` int(10) DEFAULT NULL,
  `contact` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicant_parent`
--

INSERT INTO `applicant_parent` (`id`, `fname`, `sname`, `fid`, `mname`, `lname`, `mid`, `contact`) VALUES
(1, 'Wylfred', 'Wekesa', 3456678, 'Faith', 'Wekesa', 678845, '070067865'),
(2, 'Makhino', 'Martins', 110245, 'Maryalene', 'Makhino', 67890, '0789754312');

-- --------------------------------------------------------

--
-- Table structure for table `application_birth`
--

CREATE TABLE `application_birth` (
  `reg_serial` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `gender` char(7) NOT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `application_date` varchar(50) DEFAULT NULL,
  `regtype` varchar(15) DEFAULT NULL,
  `applicant_pid` int(11) NOT NULL,
  `docid` int(11) DEFAULT NULL,
  `locationid` int(11) DEFAULT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application_birth`
--

INSERT INTO `application_birth` (`reg_serial`, `fname`, `sname`, `lname`, `gender`, `dob`, `application_date`, `regtype`, `applicant_pid`, `docid`, `locationid`, `status`) VALUES
(1001, 'Anne', ' Nduta', 'Wekesa', 'Female', 'Wed Apr 11 00:00:00 EAT 2018', 'Mon Jun 11 00:00:00 EAT 2018', 'Current', 1, 29, 10, 'applied'),
(1002, 'Alphonso', 'Makhino', 'Wasike', 'Male', 'Sat Jun 11 00:00:00 EAT 2016', 'Mon Jun 11 00:00:00 EAT 2018', 'Late', 2, 13, 1, 'applied');

-- --------------------------------------------------------

--
-- Table structure for table `application_death`
--

CREATE TABLE `application_death` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `pid` int(11) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `dod` varchar(50) DEFAULT NULL,
  `dcause` varchar(100) DEFAULT NULL,
  `description` text,
  `docid` int(11) DEFAULT NULL,
  `locations` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application_death`
--

INSERT INTO `application_death` (`id`, `fname`, `lname`, `gender`, `pid`, `dob`, `dod`, `dcause`, `description`, `docid`, `locations`, `status`) VALUES
(1, 'Njoroge', 'Mwangi', 'Male', 234567, 'Sun 06/10/2000', 'Sun 06/10/2018', 'Malaria', 'Admitted and passed aways', 1001, 15, 'pending'),
(2, 'Waiganjo', 'Mworio', 'Male', 45677, 'Mon 06/11/2000', 'Mon 06/11/2018', '566', 'Common Ailments', 1002, 15, 'applied'),
(3, 'Sigomere', 'Alfred', 'Male', 467883, 'Sun Jun 11 00:00:00 EAT 2000', 'Mon Jun 11 00:00:00 EAT 2018', 'Accident', 'Accident', 1011, 44, 'applied');

-- --------------------------------------------------------

--
-- Stand-in structure for view `approvedapps`
-- (See below for the actual view)
--
CREATE TABLE `approvedapps` (
`First Name` varchar(50)
,`SURNAME` varchar(50)
,`LASTNAME` varchar(50)
,`GENDER` char(7)
,`DATE OF BIRTH` varchar(50)
,`REG DATE` varchar(50)
,`TYPE` varchar(15)
,`FATHER's NAME` varchar(50)
,`FATHERID` int(10)
,`MOTHER's NAME` varchar(50)
,`M ID` int(10)
,`CONTACT` char(13)
,`LOCATION` varchar(50)
,`FIRSTDOC` varchar(50)
,`SECDOC` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `approvedpermits`
-- (See below for the actual view)
--
CREATE TABLE `approvedpermits` (
`FIRST NAME` varchar(50)
,`LAST NAME` varchar(50)
,`GENDER` varchar(10)
,`ID/PASSPORT` int(11)
,`DATE OF BIRTH` varchar(50)
,`DATE OF DEATH` varchar(50)
,`PERMIT ID` int(11)
,`LOCATION` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `birth`
-- (See below for the actual view)
--
CREATE TABLE `birth` (
`SERIAL` int(11)
,`FIRST NAME` varchar(50)
,`SECOND NAME` varchar(50)
,`LAST NAME` varchar(50)
,`Date of BIRTH` varchar(50)
,`APPLICATION DATE` varchar(50)
,`TYPE` varchar(15)
,`FATHER's NAME` varchar(50)
,`FID NUMBER` int(10)
,`MOTHER's NAME` varchar(50)
,`MID NUMBER` int(10)
,`CONTACT` char(13)
,`LOCATION` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `birth2`
-- (See below for the actual view)
--
CREATE TABLE `birth2` (
`SERIAL NUMBER` int(11)
,`FIRST NAME` varchar(50)
,`SECOND NAME` varchar(50)
,`LAST NAME` varchar(50)
,`GENDER` char(7)
,`DATE OF BIRTH` varchar(50)
,`APPLICATION DATE` varchar(50)
,`TYPE` varchar(15)
,`FATHER's NAME` varchar(50)
,`FATHER's ID` int(10)
,`MOTHER's NAME` varchar(50)
,`MOTHERID` int(10)
,`CONTACT` char(13)
,`LOCATION` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `counties`
--

CREATE TABLE `counties` (
  `id` int(11) NOT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `countcode` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counties`
--

INSERT INTO `counties` (`id`, `cname`, `countcode`) VALUES
(1, 'Mombasa', 1),
(2, 'Lamu', 5),
(3, 'Kilifi', 3),
(4, 'Nakuru', 32),
(5, 'Kakamega', 37),
(6, 'Bungoma', 39),
(7, 'Busia', 40),
(8, 'Nairobi', 47),
(9, 'Kisumu', 42),
(15, 'Mandera', 9),
(16, 'Marsabit', 10),
(18, 'Meru', 12),
(27, 'Isiolo', 11),
(30, 'Tana River', 4),
(32, 'Taita Taveta', 6),
(33, 'Garissa', 7),
(34, 'Wajir', 8),
(39, 'Tharaka Nithi', 13),
(40, 'Embu', 14),
(41, 'Kitui', 15),
(42, 'Machakos', 16),
(43, 'Makueni', 17),
(44, 'Nyandarua', 18),
(45, 'Nyeri', 19),
(46, 'kirinyaga', 20),
(47, 'Murang\'a', 21),
(48, 'Kiambu', 22),
(49, 'Turkana', 23),
(50, 'West Pokot', 24),
(51, 'Samburu', 25),
(52, 'Trans-Nzoia', 26),
(53, 'Uasin Gishu', 27),
(54, 'Elgeyo Marakwet', 28),
(55, 'Nandi', 29),
(56, 'Baringo', 30),
(57, 'Laikipia', 31),
(88, 'Kwale', 2),
(90, 'Narok', 33),
(91, 'Kajiado', 34),
(92, 'Kericho', 35),
(93, 'Bomet', 36),
(94, 'Vihiga', 38),
(95, 'Siaya', 41),
(96, 'Homa Bay', 43),
(97, 'Migori', 44),
(98, 'Kisii', 45),
(99, 'Nyamira', 46);

-- --------------------------------------------------------

--
-- Stand-in structure for view `deaths`
-- (See below for the actual view)
--
CREATE TABLE `deaths` (
`FIRST NAME` varchar(50)
,`LAST NAME` varchar(50)
,`ID /PASSPORT` int(11)
,`Death of Birth` varchar(50)
,`Date of Death` varchar(50)
,`CAUSE OF DEATH` varchar(100)
,`Document` int(11)
,`LOCATION` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `docname` varchar(50) NOT NULL,
  `doctype` varchar(50) DEFAULT NULL,
  `docname2` varchar(50) NOT NULL,
  `type2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `docname`, `doctype`, `docname2`, `type2`) VALUES
(29, '1001', 'Birth Notification', '5600', 'Parent Notice'),
(13, '1002', 'Birth Notification', '5432', 'Parent Notice');

-- --------------------------------------------------------

--
-- Stand-in structure for view `locations`
-- (See below for the actual view)
--
CREATE TABLE `locations` (
`cname` varchar(50)
,`scname` varchar(50)
,`wname` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `pending_apps`
-- (See below for the actual view)
--
CREATE TABLE `pending_apps` (
`First Name` varchar(50)
,`SURNAME` varchar(50)
,`LASTNAME` varchar(50)
,`GENDER` char(7)
,`DATE OF BIRTH` varchar(50)
,`REG DATE` varchar(50)
,`TYPE` varchar(15)
,`FATHER's NAME` varchar(50)
,`FATHERID` int(10)
,`MOTHER's NAME` varchar(50)
,`M ID` int(10)
,`CONTACT` char(13)
,`LOCATION` varchar(50)
,`FIRSTDOC` varchar(50)
,`SECDOC` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `pending_permits`
-- (See below for the actual view)
--
CREATE TABLE `pending_permits` (
`FIRST NAME` varchar(50)
,`LAST NAME` varchar(50)
,`GENDER` varchar(10)
,`ID/PASSPORT` int(11)
,`DATE OF BIRTH` varchar(50)
,`DATE OF DEATH` varchar(50)
,`PERMIT ID` int(11)
,`LOCATION` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `registry_type`
--

CREATE TABLE `registry_type` (
  `id` int(11) NOT NULL,
  `regname` varchar(20) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_counties`
--

CREATE TABLE `sub_counties` (
  `id` int(11) NOT NULL,
  `scname` varchar(50) DEFAULT NULL,
  `countcode` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_counties`
--

INSERT INTO `sub_counties` (`id`, `scname`, `countcode`) VALUES
(1, 'Kanduyi', 39),
(2, 'Bumula', 39),
(3, 'Webuye East', 39),
(4, 'Webuye West', 39),
(5, 'Mt. Elgon', 39),
(6, 'Tongaren', 39),
(7, 'Kimilili', 39),
(8, 'Sirisia', 39),
(9, 'Kabuchai', 39),
(10, 'Embakasi East', 47),
(11, 'Embakasi West', 47),
(12, 'Dagoreti North', 47),
(13, 'Westlands', 47),
(14, 'Lang\'ata', 47),
(15, 'Starehe', 47),
(16, 'Makadara', 47),
(17, 'Dagoreti South', 47),
(18, 'Kibra', 47),
(19, 'Changamwe', 1),
(20, 'Jomvu', 1),
(21, 'Kisauni', 1),
(22, 'Nyali', 1),
(23, 'Likoni', 1),
(24, 'Mvita', 1),
(25, 'Ugenya', 41),
(26, 'Ugunja', 41),
(27, 'Alego Usonga', 41),
(28, 'Gem', 41),
(29, 'Bondo', 41),
(30, 'Rarieda', 41);

-- --------------------------------------------------------

--
-- Table structure for table `userlogins`
--

CREATE TABLE `userlogins` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `logintime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(10) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` int(11) NOT NULL,
  `wname` varchar(50) DEFAULT NULL,
  `subcounty_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`id`, `wname`, `subcounty_id`) VALUES
(1, 'Musikoma', 1),
(2, 'East Sang\'alo', 1),
(3, 'West Sang\'alo', 1),
(4, 'Bukembe West', 1),
(5, 'Bukembe East', 1),
(6, 'Marakaru Tuuti', 1),
(7, 'Township', 1),
(8, 'Khalaba', 1),
(9, 'Kilimani', 12),
(10, 'Port Reitz', 19),
(11, 'Kipevu', 19),
(12, 'Airport', 19),
(13, 'Miritini', 19),
(14, 'Chaani', 19),
(15, 'Jomvu kuu', 20),
(16, 'Magongo', 20),
(17, 'Mkindani', 20),
(18, 'Mjambere', 21),
(19, 'Junda', 21),
(20, 'Bamburi', 21),
(21, 'Mwakirunge', 21),
(22, 'Mtopanga', 21),
(23, 'Magogoni', 21),
(24, 'Shanzu', 21),
(25, 'Frere Town', 22),
(26, 'Ziwa la Ng\'ombe', 22),
(27, 'Mkomani', 22),
(28, 'Kongowea', 22),
(29, 'Kadzandani', 22),
(30, 'Mtongwe', 23),
(31, 'Shika Adabu', 23),
(32, 'Bofu', 23),
(33, 'Likoni', 23),
(34, 'Timbwani', 24),
(35, 'Mji wa Wakale/Makadara', 24),
(36, 'Tudor', 24),
(37, 'Tononoka', 24),
(38, 'Shimanzi/Ganjoni Majengo', 24),
(39, 'West Ugenya', 26),
(40, 'Ukwala', 26),
(41, 'North Ugenya', 26),
(42, 'East Ugenya', 26),
(43, 'Sidindi', 27),
(44, 'Sigomere', 27),
(45, 'Ugunja', 27),
(46, 'Usonga', 28),
(47, 'West Alego', 28),
(48, 'Central Alego', 28),
(49, 'Siaya Township', 28),
(50, 'North Alego', 28),
(51, 'South East Alego', 28),
(52, 'West Gem', 29),
(53, 'North Gem', 29),
(54, 'Central Gem', 29),
(55, 'Yala', 29),
(56, 'Township', 29),
(57, 'East Gem', 29),
(58, 'South Gem', 29),
(59, 'West Yimbo', 30),
(60, 'Central Sakwa', 30),
(61, 'South Sakwa', 30),
(62, 'Yimbo East', 30),
(63, 'West Sakwa', 30),
(64, 'North Sakwa', 30),
(65, 'East Asembo', 31),
(66, 'West Asembo', 31),
(67, 'North Uyoma', 31),
(68, 'South Uyoma', 31),
(69, 'West Uyoma', 31);

-- --------------------------------------------------------

--
-- Structure for view `approvedapps`
--
DROP TABLE IF EXISTS `approvedapps`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `approvedapps`  AS  select `app`.`fname` AS `First Name`,`app`.`sname` AS `SURNAME`,`app`.`lname` AS `LASTNAME`,`app`.`gender` AS `GENDER`,`app`.`dob` AS `DATE OF BIRTH`,`app`.`application_date` AS `REG DATE`,`app`.`regtype` AS `TYPE`,`p`.`fname` AS `FATHER's NAME`,`p`.`fid` AS `FATHERID`,`p`.`mname` AS `MOTHER's NAME`,`p`.`mid` AS `M ID`,`p`.`contact` AS `CONTACT`,`l`.`wname` AS `LOCATION`,`d`.`docname` AS `FIRSTDOC`,`d`.`docname2` AS `SECDOC` from (((`application_birth` `app` join `wards` `l`) join `applicant_parent` `p`) join `documents` `d`) where ((`app`.`status` = 'aproved') and (`app`.`locationid` = `l`.`id`) and (`app`.`applicant_pid` = `p`.`id`) and (`app`.`docid` = `d`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `approvedpermits`
--
DROP TABLE IF EXISTS `approvedpermits`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `approvedpermits`  AS  select `app`.`fname` AS `FIRST NAME`,`app`.`lname` AS `LAST NAME`,`app`.`gender` AS `GENDER`,`app`.`pid` AS `ID/PASSPORT`,`app`.`dob` AS `DATE OF BIRTH`,`app`.`dod` AS `DATE OF DEATH`,`app`.`docid` AS `PERMIT ID`,`l`.`wname` AS `LOCATION` from (`application_death` `app` join `wards` `l`) where ((`app`.`locations` = `l`.`id`) and (`app`.`status` = 'approved')) ;

-- --------------------------------------------------------

--
-- Structure for view `birth`
--
DROP TABLE IF EXISTS `birth`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `birth`  AS  select `app`.`reg_serial` AS `SERIAL`,`app`.`fname` AS `FIRST NAME`,`app`.`sname` AS `SECOND NAME`,`app`.`lname` AS `LAST NAME`,`app`.`dob` AS `Date of BIRTH`,`app`.`application_date` AS `APPLICATION DATE`,`app`.`regtype` AS `TYPE`,`p`.`fname` AS `FATHER's NAME`,`p`.`fid` AS `FID NUMBER`,`p`.`mname` AS `MOTHER's NAME`,`p`.`mid` AS `MID NUMBER`,`p`.`contact` AS `CONTACT`,`l`.`wname` AS `LOCATION` from ((`application_birth` `app` join `applicant_parent` `p`) join `wards` `l`) where ((`app`.`applicant_pid` = `p`.`id`) and (`app`.`locationid` = `l`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `birth2`
--
DROP TABLE IF EXISTS `birth2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `birth2`  AS  select `app`.`reg_serial` AS `SERIAL NUMBER`,`app`.`fname` AS `FIRST NAME`,`app`.`sname` AS `SECOND NAME`,`app`.`lname` AS `LAST NAME`,`app`.`gender` AS `GENDER`,`app`.`dob` AS `DATE OF BIRTH`,`app`.`application_date` AS `APPLICATION DATE`,`app`.`regtype` AS `TYPE`,`p`.`fname` AS `FATHER's NAME`,`p`.`fid` AS `FATHER's ID`,`p`.`mname` AS `MOTHER's NAME`,`p`.`mid` AS `MOTHERID`,`p`.`contact` AS `CONTACT`,`l`.`wname` AS `LOCATION` from ((`application_birth` `app` join `wards` `l`) join `applicant_parent` `p`) where ((`app`.`applicant_pid` = `p`.`id`) and (`app`.`locationid` = `l`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `deaths`
--
DROP TABLE IF EXISTS `deaths`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `deaths`  AS  select `app`.`fname` AS `FIRST NAME`,`app`.`lname` AS `LAST NAME`,`app`.`pid` AS `ID /PASSPORT`,`app`.`dob` AS `Death of Birth`,`app`.`dod` AS `Date of Death`,`app`.`dcause` AS `CAUSE OF DEATH`,`app`.`docid` AS `Document`,`l`.`wname` AS `LOCATION` from (`application_death` `app` join `wards` `l`) where (`app`.`locations` = `l`.`id`) ;

-- --------------------------------------------------------

--
-- Structure for view `locations`
--
DROP TABLE IF EXISTS `locations`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `locations`  AS  select `c`.`cname` AS `cname`,`sc`.`scname` AS `scname`,`w`.`wname` AS `wname` from ((`counties` `c` join `sub_counties` `sc`) join `wards` `w`) where ((`c`.`countcode` = `sc`.`countcode`) and (`sc`.`id` = `w`.`subcounty_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `pending_apps`
--
DROP TABLE IF EXISTS `pending_apps`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pending_apps`  AS  select `app`.`fname` AS `First Name`,`app`.`sname` AS `SURNAME`,`app`.`lname` AS `LASTNAME`,`app`.`gender` AS `GENDER`,`app`.`dob` AS `DATE OF BIRTH`,`app`.`application_date` AS `REG DATE`,`app`.`regtype` AS `TYPE`,`p`.`fname` AS `FATHER's NAME`,`p`.`fid` AS `FATHERID`,`p`.`mname` AS `MOTHER's NAME`,`p`.`mid` AS `M ID`,`p`.`contact` AS `CONTACT`,`l`.`wname` AS `LOCATION`,`d`.`docname` AS `FIRSTDOC`,`d`.`docname2` AS `SECDOC` from (((`application_birth` `app` join `wards` `l`) join `applicant_parent` `p`) join `documents` `d`) where ((`app`.`locationid` = `l`.`id`) and (`app`.`applicant_pid` = `p`.`id`) and (`app`.`docid` = `d`.`id`) and (`app`.`status` = 'pending')) ;

-- --------------------------------------------------------

--
-- Structure for view `pending_permits`
--
DROP TABLE IF EXISTS `pending_permits`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pending_permits`  AS  select `app`.`fname` AS `FIRST NAME`,`app`.`lname` AS `LAST NAME`,`app`.`gender` AS `GENDER`,`app`.`pid` AS `ID/PASSPORT`,`app`.`dob` AS `DATE OF BIRTH`,`app`.`dod` AS `DATE OF DEATH`,`app`.`docid` AS `PERMIT ID`,`l`.`wname` AS `LOCATION` from (`application_death` `app` join `wards` `l`) where ((`app`.`locations` = `l`.`id`) and (`app`.`status` = 'pending')) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant_parent`
--
ALTER TABLE `applicant_parent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_birth`
--
ALTER TABLE `application_birth`
  ADD PRIMARY KEY (`reg_serial`),
  ADD KEY `applicant_pid` (`applicant_pid`);

--
-- Indexes for table `application_death`
--
ALTER TABLE `application_death`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pid` (`pid`);

--
-- Indexes for table `counties`
--
ALTER TABLE `counties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cname` (`cname`),
  ADD UNIQUE KEY `countcode` (`countcode`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`docname`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `docname` (`docname`);

--
-- Indexes for table `registry_type`
--
ALTER TABLE `registry_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_counties`
--
ALTER TABLE `sub_counties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogins`
--
ALTER TABLE `userlogins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant_parent`
--
ALTER TABLE `applicant_parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `application_birth`
--
ALTER TABLE `application_birth`
  MODIFY `applicant_pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `application_death`
--
ALTER TABLE `application_death`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `counties`
--
ALTER TABLE `counties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `registry_type`
--
ALTER TABLE `registry_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_counties`
--
ALTER TABLE `sub_counties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `userlogins`
--
ALTER TABLE `userlogins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
