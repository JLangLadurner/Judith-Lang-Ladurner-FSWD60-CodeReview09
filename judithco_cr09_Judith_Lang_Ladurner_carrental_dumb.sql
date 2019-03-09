-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2019 at 12:14 PM
-- Server version: 5.7.25
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `judithco_cr09_Judith_Lang_Ladurner_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `Account`
--

CREATE TABLE `Account` (
  `acount_id` int(11) NOT NULL,
  `fk_usr_id` int(11) DEFAULT NULL,
  `fk_payment_id` int(11) DEFAULT NULL,
  `fk_admin_id` int(11) DEFAULT NULL,
  `account_created` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Account`
--

INSERT INTO `Account` (`acount_id`, `fk_usr_id`, `fk_payment_id`, `fk_admin_id`, `account_created`) VALUES
(1, 1, 3, 2, '2019-01-07'),
(2, 2, 2, 1, '2019-02-07'),
(3, 3, 2, 4, '2019-03-07'),
(4, 4, 3, 5, '2019-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `Admin_car`
--

CREATE TABLE `Admin_car` (
  `admin_id` int(11) NOT NULL,
  `admin_first_name` varchar(55) DEFAULT NULL,
  `admin_last_name` varchar(55) DEFAULT NULL,
  `admin_phone` int(11) DEFAULT NULL,
  `admin_email` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admin_car`
--

INSERT INTO `Admin_car` (`admin_id`, `admin_first_name`, `admin_last_name`, `admin_phone`, `admin_email`) VALUES
(1, 'Roberta', 'TheGreat', 1234567, 'thegreat@email.com'),
(2, 'Johnny', 'TheKing', 1234567, 'theking@email.com'),
(3, 'Gudrun', 'DOE', 1234567, 'doe@email.com'),
(4, 'Salsa', 'Verde', 1234567, 'verde@email.com'),
(5, 'Dagobert', 'Duck', 1234567, 'duck@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `Car_park`
--

CREATE TABLE `Car_park` (
  `car_id` int(11) NOT NULL,
  `car_mod` varchar(55) DEFAULT NULL,
  `car_type` varchar(55) DEFAULT NULL,
  `car_HP` int(11) DEFAULT NULL,
  `init_milage` int(11) DEFAULT NULL,
  `car_year` year(4) DEFAULT NULL,
  `year_bought` year(4) DEFAULT NULL,
  `available` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Car_park`
--

INSERT INTO `Car_park` (`car_id`, `car_mod`, `car_type`, `car_HP`, `init_milage`, `car_year`, `year_bought`, `available`) VALUES
(1, 'BMW', 'SUV', 110, 30000, 2015, 2015, 1),
(2, 'MiniCooper', 'compact', 90, 2016, 0000, 2016, 1),
(3, 'Jaguar', 'classic', 300, 1989, 0000, 2017, 0),
(4, 'Mercedes', 'E-Class', 200, 30000, 2010, 2018, 1),
(5, 'FIAT', 'combi', 140, 10000, 2009, 2009, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Contract`
--

CREATE TABLE `Contract` (
  `contract_id` int(11) NOT NULL,
  `fk_inq_id` int(11) DEFAULT NULL,
  `fk_admin_id` int(11) DEFAULT NULL,
  `contract_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Contract`
--

INSERT INTO `Contract` (`contract_id`, `fk_inq_id`, `fk_admin_id`, `contract_date`) VALUES
(1, 1, 1, '2019-01-07'),
(2, 2, 2, '2019-01-07'),
(3, 3, 4, '2019-01-07'),
(4, 4, 5, '2019-01-07');

-- --------------------------------------------------------

--
-- Table structure for table `end_loc`
--

CREATE TABLE `end_loc` (
  `end_loc_id` int(11) NOT NULL,
  `address_el` varchar(55) DEFAULT NULL,
  `pick_up_date` date DEFAULT NULL,
  `milage_end` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `end_loc`
--

INSERT INTO `end_loc` (`end_loc_id`, `address_el`, `pick_up_date`, `milage_end`) VALUES
(1, 'DROPOFF1', '2019-03-30', 125625),
(2, 'DROPOFF2', '0000-00-00', 125625),
(3, 'DROPOFF3', '2019-04-30', 125625),
(4, 'DROPOFF4', '2019-05-30', 125625);

-- --------------------------------------------------------

--
-- Table structure for table `Inquiry`
--

CREATE TABLE `Inquiry` (
  `inq_id` int(11) NOT NULL,
  `fk_account_id` int(11) DEFAULT NULL,
  `fk_car_id` int(11) DEFAULT NULL,
  `usr_pick_up_date` date DEFAULT NULL,
  `usr_drop_off_date` date DEFAULT NULL,
  `fk_start_loc_id` int(11) DEFAULT NULL,
  `fk_end_loc_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Inquiry`
--

INSERT INTO `Inquiry` (`inq_id`, `fk_account_id`, `fk_car_id`, `usr_pick_up_date`, `usr_drop_off_date`, `fk_start_loc_id`, `fk_end_loc_id`) VALUES
(1, 1, 2, '2019-03-23', '2019-03-30', 1, 2),
(2, 2, 3, '2019-02-23', '2019-02-25', 2, 1),
(3, 3, 3, '2019-05-18', '2019-05-22', 1, 2),
(4, 4, 5, '2019-06-07', '2019-06-13', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `fk_report_id` int(11) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_amount` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `fk_report_id`, `invoice_date`, `invoice_amount`) VALUES
(1, 1, '2018-05-23', 690),
(2, 2, '2016-02-23', 900),
(3, 3, '2015-03-23', 360),
(4, 4, '2017-02-23', 750);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `loc_id` int(11) NOT NULL,
  `fk_car_id` int(11) DEFAULT NULL,
  `fk_start_loc_id` int(11) DEFAULT NULL,
  `fk_end_loc_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`loc_id`, `fk_car_id`, `fk_start_loc_id`, `fk_end_loc_id`) VALUES
(1, 1, 2, 4),
(2, 2, 1, 3),
(3, 5, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `fk_invoice_id` int(11) DEFAULT NULL,
  `first_payment` date DEFAULT NULL,
  `last_payment` date DEFAULT NULL,
  `first_payment_amount` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `fk_invoice_id`, `first_payment`, `last_payment`, `first_payment_amount`) VALUES
(1, 1, '2018-03-14', '2018-03-30', 200),
(2, 2, '2017-02-14', '2017-02-25', 150),
(3, 3, '2019-03-14', '2019-03-17', 180),
(4, 4, '2019-04-18', '2019-04-21', 190);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `fk_contract_id` int(11) DEFAULT NULL,
  `fk_loc_id` int(11) DEFAULT NULL,
  `milage_total` int(11) DEFAULT NULL,
  `milage_driven` int(11) DEFAULT NULL,
  `date_returned` date DEFAULT NULL,
  `demage` tinyint(1) DEFAULT NULL,
  `demage_name` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `fk_contract_id`, `fk_loc_id`, `milage_total`, `milage_driven`, `date_returned`, `demage`, `demage_name`) VALUES
(1, 2, 3, 22000, 750, '2019-03-30', 0, 'none'),
(2, 1, 4, 23000, 900, '2019-02-27', 1, 'missing mirror left'),
(3, 3, 1, 27000, 900, '2019-03-30', 0, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `start_loc`
--

CREATE TABLE `start_loc` (
  `start_loc_id` int(11) NOT NULL,
  `address_sl` varchar(55) DEFAULT NULL,
  `pick_up_date` date DEFAULT NULL,
  `milage_start` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `start_loc`
--

INSERT INTO `start_loc` (`start_loc_id`, `address_sl`, `pick_up_date`, `milage_start`) VALUES
(1, 'Headquater1', '2019-03-23', 236656),
(2, 'Headquater2', '2019-02-23', 236656),
(3, 'Headquater3', '2019-04-23', 236656),
(4, 'Headquater4', '2019-05-23', 236656);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `usr_id` int(11) NOT NULL,
  `usr_first_name` varchar(55) DEFAULT NULL,
  `usr_last_name` varchar(55) DEFAULT NULL,
  `usr_birth_date` date DEFAULT NULL,
  `usr_address` varchar(55) DEFAULT NULL,
  `usr_country` varchar(55) DEFAULT NULL,
  `usr_email` varchar(55) DEFAULT NULL,
  `usr_phone` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`usr_id`, `usr_first_name`, `usr_last_name`, `usr_birth_date`, `usr_address`, `usr_country`, `usr_email`, `usr_phone`) VALUES
(1, 'Hubert', 'Schmidt', '1975-10-31', 'Godknowswhere 123', 'Austria', 'Hubert@hisemail.com', 660123654),
(2, 'Rose', 'Rosie', '1973-07-14', 'Schweinsstasse 48', 'Hungary', 'RoseRosie@email.com', 660123654),
(3, 'George', 'Cloony', '1969-05-01', 'Somewhere Como', 'Italy', 'Cloony@email.com', 660123654),
(4, 'Mickey', 'Mouse', '1919-06-01', 'Magic Kingdom', 'California', 'mousey@email.com', 0),
(5, 'Minnie', 'Mouse', '1919-07-01', 'Magic Kingdom 2', 'Florida', 'minni@email.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Account`
--
ALTER TABLE `Account`
  ADD PRIMARY KEY (`acount_id`),
  ADD KEY `fk_usr_id` (`fk_usr_id`),
  ADD KEY `fk_payment_id` (`fk_payment_id`),
  ADD KEY `fk_admin_id` (`fk_admin_id`);

--
-- Indexes for table `Admin_car`
--
ALTER TABLE `Admin_car`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `Car_park`
--
ALTER TABLE `Car_park`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `Contract`
--
ALTER TABLE `Contract`
  ADD PRIMARY KEY (`contract_id`),
  ADD KEY `fk_inq_id` (`fk_inq_id`),
  ADD KEY `fk_admin_id` (`fk_admin_id`);

--
-- Indexes for table `end_loc`
--
ALTER TABLE `end_loc`
  ADD PRIMARY KEY (`end_loc_id`);

--
-- Indexes for table `Inquiry`
--
ALTER TABLE `Inquiry`
  ADD PRIMARY KEY (`inq_id`),
  ADD KEY `fk_account_id` (`fk_account_id`),
  ADD KEY `fk_car_id` (`fk_car_id`),
  ADD KEY `fk_start_loc_id` (`fk_start_loc_id`),
  ADD KEY `fk_end_loc_id` (`fk_end_loc_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `fk_report_id` (`fk_report_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`loc_id`),
  ADD KEY `fk_car_id` (`fk_car_id`),
  ADD KEY `fk_start_loc_id` (`fk_start_loc_id`),
  ADD KEY `fk_end_loc_id` (`fk_end_loc_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `fk_invoice_id` (`fk_invoice_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `fk_contract_id` (`fk_contract_id`),
  ADD KEY `fk_loc_id` (`fk_loc_id`);

--
-- Indexes for table `start_loc`
--
ALTER TABLE `start_loc`
  ADD PRIMARY KEY (`start_loc_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Account`
--
ALTER TABLE `Account`
  MODIFY `acount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Admin_car`
--
ALTER TABLE `Admin_car`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Car_park`
--
ALTER TABLE `Car_park`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Contract`
--
ALTER TABLE `Contract`
  MODIFY `contract_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `end_loc`
--
ALTER TABLE `end_loc`
  MODIFY `end_loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Inquiry`
--
ALTER TABLE `Inquiry`
  MODIFY `inq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `start_loc`
--
ALTER TABLE `start_loc`
  MODIFY `start_loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
