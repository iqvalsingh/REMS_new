-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2023 at 01:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `remsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898980, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-08-05 07:15:32'),
(2, 'Admin1', 'admin1', 8989898980, 'admin1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-08-05 07:15:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

CREATE TABLE `tblcity` (
  `ID` int(10) NOT NULL,
  `CityName` varchar(100) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `StateID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcity`
--

INSERT INTO `tblcity` (`ID`, `CityName`, `EnterDate`, `StateID`) VALUES
(1, 'Aligarh', '2019-09-15 11:29:25', 2),
(2, 'Varanasi', '2019-09-15 11:29:28', 2),
(3, 'Allahabad', '2019-09-15 11:29:32', 2),
(4, 'Ghaziabad', '2019-09-26 17:32:40', 2),
(5, 'New Castle', '2019-08-06 11:41:20', 2),
(6, 'Varanasi new', '2022-11-29 15:15:45', 2),
(7, 'Mount Gambier', '2019-08-06 11:43:20', 2),
(8, 'Whyalla', '2019-08-06 11:43:43', 2),
(9, 'Brisbane', '2019-08-06 11:44:32', 2),
(10, 'Los Angeles', '2019-08-06 11:45:07', 16),
(11, 'San Francisco', '2019-08-06 11:45:49', 16),
(12, 'Miami', '2019-08-06 11:46:30', 16),
(13, 'Orlando', '2019-08-06 11:46:51', 16),
(14, 'queens', '2019-08-06 11:47:59', 16),
(15, 'ABC', '2019-09-20 05:33:17', 18),
(16, 'Patna', '2019-08-07 06:29:29', 1),
(18, 'New Delhi', '2019-09-30 19:02:33', 4),
(19, 'Rupnagar', '2022-12-11 08:21:59', 19);

-- --------------------------------------------------------

--
-- Table structure for table `tblcity_temp`
--

CREATE TABLE `tblcity_temp` (
  `ID` int(10) NOT NULL,
  `CountryID` int(5) DEFAULT NULL,
  `StateID` int(5) NOT NULL,
  `CityName` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcity_temp`
--

INSERT INTO `tblcity_temp` (`ID`, `CountryID`, `StateID`, `CityName`, `EnterDate`) VALUES
(1, 1, 2, 'Aligarh', '2019-09-15 11:29:25'),
(2, 1, 2, 'Varanasi', '2019-09-15 11:29:28'),
(3, 1, 2, 'Allahabad', '2019-09-15 11:29:32'),
(4, 1, 2, 'Ghaziabad', '2019-09-26 17:32:40'),
(5, 2, 2, 'New Castle', '2019-08-06 11:41:20'),
(6, 1, 2, 'Varanasi', '2019-09-26 17:34:29'),
(7, 2, 2, 'Mount Gambier', '2019-08-06 11:43:20'),
(8, 2, 2, 'Whyalla', '2019-08-06 11:43:43'),
(9, 2, 2, 'Brisbane', '2019-08-06 11:44:32'),
(10, 16, 16, 'Los Angeles', '2019-08-06 11:45:07'),
(11, 16, 16, 'San Francisco', '2019-08-06 11:45:49'),
(12, 16, 16, 'Miami', '2019-08-06 11:46:30'),
(13, 16, 16, 'Orlando', '2019-08-06 11:46:51'),
(14, 16, 16, 'queens', '2019-08-06 11:47:59'),
(15, 7, 18, 'ABC', '2019-09-20 05:33:17'),
(16, 1, 1, 'Patna', '2019-08-07 06:29:29'),
(18, 1, 4, 'Delhi', '2022-11-29 15:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblcountry`
--

CREATE TABLE `tblcountry` (
  `ID` int(10) NOT NULL,
  `CountryName` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcountry`
--

INSERT INTO `tblcountry` (`ID`, `CountryName`, `EnterDate`) VALUES
(1, 'India', '2019-08-06 07:19:38'),
(2, 'Australia', '2019-08-06 07:21:04'),
(3, 'Brazil', '2019-08-06 07:21:20'),
(4, 'China', '2019-08-06 07:21:34'),
(5, 'Germany', '2019-08-06 07:21:52'),
(6, 'Ireland', '2019-08-06 07:22:16'),
(7, 'Japan', '2019-08-06 07:22:27'),
(8, 'Kenya', '2019-08-06 07:22:38'),
(9, 'Malaysia', '2019-08-06 07:22:57'),
(10, 'Russia', '2019-08-06 07:23:19'),
(11, 'Singapore', '2019-08-06 07:23:35'),
(12, 'South Africa', '2019-08-06 07:23:48'),
(13, 'Thailand', '2019-08-06 07:24:04'),
(14, 'Turkey', '2019-08-06 07:24:18'),
(15, 'UK', '2019-08-06 07:24:28'),
(16, 'USA', '2019-08-06 07:24:37'),
(17, 'Zimbabwe', '2019-08-06 07:24:52'),
(18, 'Vietnam', '2019-08-06 10:17:40'),
(19, 'Sri Lanka', '2022-12-11 06:21:51'),
(20, 'Spain', '2022-12-11 06:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `ID` int(10) NOT NULL,
  `PropertyID` int(10) NOT NULL,
  `FullName` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `MobileNumber` bigint(10) NOT NULL,
  `Message` mediumtext NOT NULL,
  `EnquiryNumber` varchar(200) NOT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(10) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`ID`, `PropertyID`, `FullName`, `Email`, `MobileNumber`, `Message`, `EnquiryNumber`, `EnquiryDate`, `Status`, `Remark`, `RemarkDate`) VALUES
(1, 1, 'Akash Chandra', 'ac@gmail.com', 7894561239, 'When I will come to you to see the property', '283495176', '2019-08-13 05:36:13', 'Answer', 'Fine You will come tomorrow morning i.e 17 aug', '2019-08-16 11:17:25'),
(2, 2, 'Ramesh Kumar', 'ramesh@gmail.com', 8989889898, 'Give me best prices of this property', '295692123', '2019-08-16 11:58:27', NULL, NULL, NULL),
(3, 2, 'Akash', 'akash@gmail.com', 5656565656, 'hgfhf gy f ', '611895685', '2019-08-18 16:02:03', NULL, NULL, NULL),
(4, 4, 'Simple user', 'testuser2@gmail.com', 1231231231, 'Test Enquiry', '558385754', '2019-09-30 19:00:26', 'Answer', 'This is for testing', '2019-09-30 19:28:09'),
(5, 2, 'Simple user', 'testuser2@gmail.com', 1231231231, 'I want some discount on this property.', '203492977', '2019-09-30 19:33:22', NULL, NULL, NULL),
(6, 4, 'Testing', 'testing@gmail.com', 1234567890, 'Enquiry', '689459276', '2022-10-29 07:45:39', 'Answer', 'nada', '2022-10-29 07:51:39'),
(7, 1, 'Testing123', 'testing123@gmail.com', 9874563210, 'I want to see the property', '367659919', '2022-12-25 18:27:36', NULL, NULL, NULL),
(8, 1, 'test', 'test123456@gmail.com', 9874563210, 'Testing enquiry', '298054734', '2022-12-28 09:05:01', NULL, NULL, NULL),
(9, 3, 'test2', 'test123456@gmail.com', 9874563210, 'testing2', '431753606', '2022-12-28 09:09:14', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `id` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  `PropertyId` int(10) NOT NULL,
  `UserRemark` mediumtext NOT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Is_Publish` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfeedback`
--

INSERT INTO `tblfeedback` (`id`, `UserId`, `PropertyId`, `UserRemark`, `PostingDate`, `Is_Publish`) VALUES
(1, 3, 1, 'This review is for testing.', '2019-09-20 19:15:03', 1),
(2, 4, 4, 'awesome', '2022-10-29 07:50:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<b><font color=\"#003399\">Real Estate Management System 12</font></b><div><br></div><div><b><font color=\"#003399\">Our Vision:</font></b></div><div><span style=\"color: rgb(170, 170, 170); font-family: Poppins, sans-serif;\">Propin ipsum dolor sit amet, consectetur adipisicing elited eiusmod tempore incidid ut labor et dolore magna aliquaut enim ad minim veniam.</span><br></div><div><span style=\"color: rgb(170, 170, 170); font-family: Poppins, sans-serif;\"><br></span></div><div><span style=\"font-family: Poppins, sans-serif;\"><b style=\"\"><font color=\"#003399\">Our Goal:</font></b></span></div><div><span style=\"color: rgb(170, 170, 170); font-family: Poppins, sans-serif;\">Duis aute viele irure dolor in reprer volupta velite esse cilume dolore eu fugiat nulla pariatur. Excepteur sint occae cupidat non proident.</span><span style=\"color: rgb(170, 170, 170); font-family: Poppins, sans-serif;\"><b><br></b></span></div><div><br></div>', 'info@gmsil.com', 8989899898, '2022-12-12 09:21:47'),
(2, 'contactus', 'Contact Us', 'D-204,c  Hole Town South West,<div>Delhi-110096,India</div>', 'info1@gmail.com', 8529631235, '2022-12-23 11:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblproperty`
--

CREATE TABLE `tblproperty` (
  `id` int(10) NOT NULL,
  `userId` int(10) DEFAULT NULL,
  `propertyTitle` varchar(120) DEFAULT NULL,
  `propertyDescription` varchar(120) DEFAULT NULL,
  `propertyTypeId` int(10) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `bedrooms` int(4) DEFAULT NULL,
  `bathrooms` int(4) DEFAULT NULL,
  `floors` int(4) DEFAULT NULL,
  `garages` int(4) DEFAULT NULL,
  `area` decimal(10,3) DEFAULT NULL,
  `size` decimal(10,3) DEFAULT NULL,
  `rentOrSalePrice` varchar(20) DEFAULT NULL,
  `beforePriceLabel` varchar(20) DEFAULT NULL,
  `afterPriceLabel` varchar(20) DEFAULT NULL,
  `propertyId` int(10) DEFAULT NULL,
  `centerCooling` int(1) DEFAULT NULL,
  `balcony` int(1) DEFAULT NULL,
  `petFriendly` int(1) DEFAULT NULL,
  `barbeque` int(1) DEFAULT NULL,
  `fireAlarm` int(1) DEFAULT NULL,
  `modernKitchen` int(1) DEFAULT NULL,
  `storage` int(1) DEFAULT NULL,
  `dryer` int(1) DEFAULT NULL,
  `heating` int(1) DEFAULT NULL,
  `pool` int(1) DEFAULT NULL,
  `laundry` int(1) DEFAULT NULL,
  `sauna` int(1) DEFAULT NULL,
  `gym` int(1) DEFAULT NULL,
  `elevator` int(1) DEFAULT NULL,
  `dishWasher` int(1) DEFAULT NULL,
  `emergencyExit` int(1) DEFAULT NULL,
  `featuredImage` varchar(120) DEFAULT NULL,
  `galleryImage1` varchar(120) DEFAULT NULL,
  `galleryImage2` varchar(120) DEFAULT NULL,
  `galleryImage3` varchar(120) DEFAULT NULL,
  `galleryImage4` varchar(120) DEFAULT NULL,
  `galleryImage5` varchar(120) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `countryId` int(10) DEFAULT NULL,
  `cityId` int(10) DEFAULT NULL,
  `stateId` int(10) DEFAULT NULL,
  `zipCode` varchar(15) DEFAULT NULL,
  `neighborhood` varchar(200) DEFAULT NULL,
  `listingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblproperty`
--

INSERT INTO `tblproperty` (`id`, `userId`, `propertyTitle`, `propertyDescription`, `propertyTypeId`, `status`, `location`, `bedrooms`, `bathrooms`, `floors`, `garages`, `area`, `size`, `rentOrSalePrice`, `beforePriceLabel`, `afterPriceLabel`, `propertyId`, `centerCooling`, `balcony`, `petFriendly`, `barbeque`, `fireAlarm`, `modernKitchen`, `storage`, `dryer`, `heating`, `pool`, `laundry`, `sauna`, `gym`, `elevator`, `dishWasher`, `emergencyExit`, `featuredImage`, `galleryImage1`, `galleryImage2`, `galleryImage3`, `galleryImage4`, `galleryImage5`, `address`, `countryId`, `cityId`, `stateId`, `zipCode`, `neighborhood`, `listingDate`) VALUES
(1, 1, '2 BHK Builder Floor', 'There two bed room with wide balcony.\r\n2. Drawing room with fall ceiling & Texture Paint\r\n3. Modern and modular kitchen ', 1, 'Sale', 'Uttam Nagar East', 2, 2, 1, 1, '520.000', '500.000', '24.10', '23.00', '25.00', 629126491, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, '386bb628f5a3da130210ee422d57422e1565679999jpeg', 'bb2e708549fa0abc3608aeb12243a5471565937233.jpg', 'c65756e6c9ec41e207d132375b324c441565937949.jpg', '42be96d2f93056d5a5b106a9abed40051565937999.jpg', '338c3a6332a0200a77b7bfe0e9ea54721565938082.jpg', 'af63798a7deebebd06af935925cba9fb1565938126jpeg', 'Uttam Nagar ', 1, 16, 5, '110096', 'uttam nagar east metro station', '2022-12-30 12:32:39'),
(2, 2, '3 BHK 800 Sq-ft Flat', 'This project looks stunning and it is developed with the attention to all the small details. You will always receive com', 1, 'Sale', 'Rohini Sector 24', 3, 2, 1, 0, '800.000', '796.000', '68.00', '65.00', '69.00', 850464384, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'image5.jpg', 'cff8ad28cf40ebf4fbdd383fe546098d1565329707.jpg', '7fdc1a630c238af0815181f9faa190f51565329707.jpg', '5fb637257132ad8e014dff431326a5ac1565329707.jpg', 'b37cef0d9aff875f77888c297150b1421565329707.jpg', 'cff8ad28cf40ebf4fbdd383fe546098d1565329707.jpg', 'Sector 24 ', 1, 18, 4, '110096', 'sector 24 metro', '2019-08-09 05:48:27'),
(3, 1, '1Bedroom 1Bath', 'Very Nice House Park Facing Xu 1 New House All Facility Are Available Fully Green Area Very Close To Pari Chaowk Near Me', 2, 'Sale', 'Greater Noida', 1, 1, 1, 1, '67.000', '60.000', '43.00', '42.00', '44.00', 118245832, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '386bb628f5a3da130210ee422d57422e1565679999jpeg', 'f1d9313ad97dcfd6e2b37dbf805a5b4f1565679999jpeg', 'd4e6271f4e62bb1f7cf10004553f3efe1565679999.jpg', '1e6ae4ada992769567b71815f124fac51565679999.jpg', 'efc1a80c391be252d7d777a437f868701565679999.jpg', '588b11ad7a92d13777fe0be3adf633bf1565679999.jpg', 'Sector Xu-I Gr Noida, , Aligarh, U P', 1, 1, 2, '4464644', 'Near Crossing Republic School', '2019-08-13 07:06:39'),
(4, 4, '5Bedrooms 7Baths', 'Prime location\r\nWalking distance from galleria market & iffco metro station\r\nElite designer villa\r\n5bhk\r\nWest facing\r\nHu', 4, 'Sale', 'Sushant Lok Phase - 1', 5, 7, 3, 2, '250.840', '245.760', '5.99', '4.99', '6.99', 869693774, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 'af63798a7deebebd06af935925cba9fb1565680584jpeg', '31d460256ad31331e4d59d1377b2556b1565680584jpeg', 'd3a2a650c3ca6d9a7886a9e403bca6901565680584jpeg', 'd3812a144fafaa264821a7b1154ae44c1565680584jpeg', '0ac462ac57b106b3c62e8a310c2afe931565680584jpeg', 'c584f57049e5155743d83a21a0971b741565680584jpeg', 'A Block, Sushant Lok Phase - 1', 1, 2, 2, '221001', 'Near Kendriya Vidalya', '2019-08-13 07:16:24'),
(5, 2, '5 BHK Residential House 4830 sqft', 'Non-Vegetarians, Without Company Lease, Pets allowed', 2, 'Rent', 'Vasant Vihar', 5, 6, 0, 2, '4830.000', '4200.000', '45000.00', '43000.00', '48000.00', 131599041, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 'b8a1a89aa25d962639c36371b8728c571565681197.jpg', 'af63798a7deebebd06af935925cba9fb1565681197jpeg', '31d460256ad31331e4d59d1377b2556b1565681197jpeg', 'b3dc4d2ca49fca95b80b4a2c66c833b81565681197.jpg', 'd4e6271f4e62bb1f7cf10004553f3efe1565681197.jpg', '0ac462ac57b106b3c62e8a310c2afe931565681197jpeg', 'D-510,', 7, 14, 18, '4654646', 'XYZ', '2019-08-13 07:26:37'),
(6, 1, 'House for Sale', 'I want to sell my house as i am moving out', 1, 'Sale', 'Nehru Nagar', 2, 2, 2, 2, '1500.000', '1500.000', '99.00', '99.00', '99.00', 985246549, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, '9e7bb0f5a6c9cc30f52ac23568fafb4f1565327797.jpg', '94d39c9ea3bacd079a48607a45d06e6d1565936640.jpg', 'a166b6fa401faee1d81434142c926f911565329246.jpg', '9e7bb0f5a6c9cc30f52ac23568fafb4f1565327797.jpg', '94d39c9ea3bacd079a48607a45d06e6d1565936640.jpg', 'a166b6fa401faee1d81434142c926f911565329246.jpg', 'Nehru Nagar', 1, 19, 19, '140001', 'Government college', '2022-12-25 11:24:30'),
(7, 1, '2BHK flat for sale', 'I want to sell me flat', 1, 'Sale', 'Thane', 2, 2, 15, 1, '700.000', '700.000', '99 Lakhs', '90 Lakhs', '99 Lakhs', 936194640, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 1, '9e7bb0f5a6c9cc30f52ac23568fafb4f1565327797.jpg', '94d39c9ea3bacd079a48607a45d06e6d1565936640.jpg', 'a166b6fa401faee1d81434142c926f911565329246.jpg', '9e7bb0f5a6c9cc30f52ac23568fafb4f1565327797.jpg', '94d39c9ea3bacd079a48607a45d06e6d1565936640.jpg', 'a166b6fa401faee1d81434142c926f911565329246.jpg', 'Thane', 1, 19, 19, '140001', 'Government college', '2022-12-25 11:46:16'),
(8, 1, 'New 2BHK flat for sale', 'I want to sell my flat', 1, 'Sale', 'Thane', 2, 2, 2, 2, '700.000', '700.000', '99 Lakhs', '90 Lakh', '99 Lakh', 290131362, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 0, 1, '9e7bb0f5a6c9cc30f52ac23568fafb4f1565327797.jpg', '94d39c9ea3bacd079a48607a45d06e6d1565936640.jpg', 'a166b6fa401faee1d81434142c926f911565329246.jpg', '9e7bb0f5a6c9cc30f52ac23568fafb4f1565327797.jpg', '94d39c9ea3bacd079a48607a45d06e6d1565936640.jpg', 'a166b6fa401faee1d81434142c926f911565329246.jpg', 'Thane', 1, 19, 19, '140001', 'Government college', '2022-12-25 11:50:56'),
(9, 1, 'New Property', 'sdv erdg rdg rfth', 2, 'Sale', 'hgfghfgh', 2, 2, 2, 2, '1000.000', '1000.000', '99 Lakhs', '90 Lakhs', '99 Lakhs', 402329362, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, '9e7bb0f5a6c9cc30f52ac23568fafb4f1565327797.jpg', '94d39c9ea3bacd079a48607a45d06e6d1565936640.jpg', 'a166b6fa401faee1d81434142c926f911565329246.jpg', '9e7bb0f5a6c9cc30f52ac23568fafb4f1565327797.jpg', '94d39c9ea3bacd079a48607a45d06e6d1565936640.jpg', 'a166b6fa401faee1d81434142c926f911565329246.jpg', 'Thane', 1, 19, 19, '140001', 'Government college', '2022-12-30 16:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblpropertytype`
--

CREATE TABLE `tblpropertytype` (
  `ID` int(10) NOT NULL,
  `PropertType` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpropertytype`
--

INSERT INTO `tblpropertytype` (`ID`, `PropertType`, `EnterDate`) VALUES
(1, 'Apartments', '2019-08-06 06:31:56'),
(2, 'Houses', '2019-08-06 06:32:20'),
(3, 'Offices', '2019-08-06 06:32:32'),
(4, 'Villas', '2019-08-06 06:32:48'),
(5, 'Lands', '2019-08-06 06:32:57'),
(6, 'Test 123', '2019-09-30 19:01:32'),
(7, 'apart', '2022-11-30 17:31:01'),
(8, 'New Property Type', '2022-12-04 03:53:46'),
(9, 'New Property Type', '2023-01-05 14:53:20'),
(10, 'Test 123', '2023-01-05 14:54:08'),
(11, 'New Property Type', '2023-01-05 14:54:17'),
(12, 'Test 123', '2023-01-05 14:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblproperty_temp`
--

CREATE TABLE `tblproperty_temp` (
  `ID` int(10) NOT NULL,
  `UserID` char(20) DEFAULT NULL,
  `PropertyTitle` mediumtext DEFAULT NULL,
  `PropertDescription` mediumtext DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Location` varchar(200) DEFAULT NULL,
  `Bedrooms` varchar(200) DEFAULT NULL,
  `Bathrooms` varchar(200) DEFAULT NULL,
  `Floors` varchar(200) DEFAULT NULL,
  `Garages` varchar(200) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `RentorsalePrice` varchar(120) DEFAULT NULL,
  `BeforePricelabel` varchar(120) DEFAULT NULL,
  `AfterPricelabel` varchar(120) DEFAULT NULL,
  `PropertyID` varchar(120) DEFAULT NULL,
  `CenterCooling` int(4) DEFAULT NULL,
  `Balcony` int(4) DEFAULT NULL,
  `PetFriendly` int(4) DEFAULT NULL,
  `Barbeque` int(4) DEFAULT NULL,
  `FireAlarm` int(4) DEFAULT NULL,
  `ModernKitchen` int(4) DEFAULT NULL,
  `Storage` int(4) DEFAULT NULL,
  `Dryer` int(4) DEFAULT NULL,
  `Heating` int(4) DEFAULT NULL,
  `Pool` int(4) DEFAULT NULL,
  `Laundry` int(4) DEFAULT NULL,
  `Sauna` int(4) DEFAULT NULL,
  `Gym` int(4) DEFAULT NULL,
  `Elevator` int(4) DEFAULT NULL,
  `DishWasher` int(4) DEFAULT NULL,
  `EmergencyExit` int(4) DEFAULT NULL,
  `FeaturedImage` varchar(200) DEFAULT NULL,
  `GalleryImage1` varchar(200) DEFAULT NULL,
  `GalleryImage2` varchar(200) DEFAULT NULL,
  `GalleryImage3` varchar(200) DEFAULT NULL,
  `GalleryImage4` varchar(200) DEFAULT NULL,
  `GalleryImage5` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `City` varchar(220) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `ZipCode` varchar(200) DEFAULT NULL,
  `Neighborhood` varchar(200) DEFAULT NULL,
  `ListingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproperty_temp`
--

INSERT INTO `tblproperty_temp` (`ID`, `UserID`, `PropertyTitle`, `PropertDescription`, `Type`, `Status`, `Location`, `Bedrooms`, `Bathrooms`, `Floors`, `Garages`, `Area`, `Size`, `RentorsalePrice`, `BeforePricelabel`, `AfterPricelabel`, `PropertyID`, `CenterCooling`, `Balcony`, `PetFriendly`, `Barbeque`, `FireAlarm`, `ModernKitchen`, `Storage`, `Dryer`, `Heating`, `Pool`, `Laundry`, `Sauna`, `Gym`, `Elevator`, `DishWasher`, `EmergencyExit`, `FeaturedImage`, `GalleryImage1`, `GalleryImage2`, `GalleryImage3`, `GalleryImage4`, `GalleryImage5`, `Address`, `Country`, `City`, `State`, `ZipCode`, `Neighborhood`, `ListingDate`) VALUES
(1, '1', '2 BHK Builder Floor', 'There two bed room with wide balcony.\r\n2. Drawing room with fall ceiling & Texture Paint\r\n3. Modern and modular kitchen with chimney and other\r\nattachments.\r\n4. two bath room with tile work upto roof height and branded\r\nfittings.\r\n5. Car parking and lift available.\r\n6. Wall to wall pop , texture paint & tiles work on front elevation.\r\n7. Vitrified tiles flooring, Kalinga wire, Branded\r\nelectrical fittings.\r\n8. Separate electric and water connections with appropriate\r\nsupply.\r\n9. Building structure according to height with branded fittings\r\nand a', 'Apartments', 'Sale', 'Uttam Nagar East', '2', '2', '1 (Out of 4 Floors)', '1 Covered', '520 sq ft', '500 sq ft', '24.1 Lac', '23 lac', '25 lac', '629126491', 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, '94d39c9ea3bacd079a48607a45d06e6d1565936640.jpg', 'bb2e708549fa0abc3608aeb12243a5471565937233.jpg', 'c65756e6c9ec41e207d132375b324c441565937949.jpg', '42be96d2f93056d5a5b106a9abed40051565937999.jpg', '338c3a6332a0200a77b7bfe0e9ea54721565938082.jpg', 'af63798a7deebebd06af935925cba9fb1565938126jpeg', 'Uttam Nagar ', '1', 'Patna', '5', '110096', 'uttam nagar east metro station', '2019-08-09 05:40:47'),
(2, '2', '3 BHK 800 Sq-ft Flat', 'This project looks stunning and it is developed with the attention to all the small details. You will always receive compliments for the embedded classy effect crafted in Rahil Homes. Rahil Homes is one of the popular residential projects that are located in Sector 24, Rohini, New Delhi. This project offers 1, 2, 3 & 4 BHK Builder Floor Flats with basic amenities for the comfort of residents. It is close to market and many educational institutions.', 'Apartments', 'Sale', 'Rohini Sector 24', '3', '2', '1 (Out of 4 Floors)', 'Yes', '800 sqft', '796 sqft', '68 lack', '65 lac', '69 lac', '850464384', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'image5.jpg', 'cff8ad28cf40ebf4fbdd383fe546098d1565329707.jpg', '7fdc1a630c238af0815181f9faa190f51565329707.jpg', '5fb637257132ad8e014dff431326a5ac1565329707.jpg', 'b37cef0d9aff875f77888c297150b1421565329707.jpg', 'cff8ad28cf40ebf4fbdd383fe546098d1565329707.jpg', 'Sector 24 ', '1', 'New Delhi', '4', '110096', 'sector 24 metro', '2019-08-09 05:48:27'),
(3, '1', '1Bedroom 1Bath', 'Very Nice House Park Facing Xu 1 New House All Facility Are Available Fully Green Area Very Close To Pari Chaowk Near Metro Additional Details : Having A Provision To Park 1 Cars. You Can Easily Park Your Car Inside The Compound There Is Also A Separate Washroom For Domestic Help. The House Has Boring Supply. The Kitchen Has Been Built With Modular Fittings.', 'Houses', 'Sale', 'Greater Noida', '1', '1', '1', '1 Covered, 1 Open', '67 Sq. Meter', '60 Sq. Meter  ', '43 Lac', '42 lac', '44 lac', '118245832', 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '386bb628f5a3da130210ee422d57422e1565679999jpeg', 'f1d9313ad97dcfd6e2b37dbf805a5b4f1565679999jpeg', 'd4e6271f4e62bb1f7cf10004553f3efe1565679999.jpg', '1e6ae4ada992769567b71815f124fac51565679999.jpg', 'efc1a80c391be252d7d777a437f868701565679999.jpg', '588b11ad7a92d13777fe0be3adf633bf1565679999.jpg', 'Sector Xu-I Gr Noida, , Aligarh, U P', '1', 'Aligarh', '2', '4464644', 'Near Crossing Republic School', '2019-08-13 07:06:39'),
(4, '4', '5Bedrooms 7Baths', 'Prime location\r\nWalking distance from galleria market & iffco metro station\r\nElite designer villa\r\n5bhk\r\nWest facing\r\nHuge drawing and dinning\r\nGym area\r\nVrv system\r\nItalian marble in drawing room, rooms and bathroom\r\nModular kitchen & wardrobes with german fittings\r\nBathroom fittings of queo & kohler\r\nTerrace garden with bar and service counter and gazebo\r\nFront two side lawn with landscaping and gazebo\r\nWater body and fountain in the backyard\r\nServant room\r\n4 reserved car parking\r\nReady to move in for more details call us...', 'Villas', 'Sale', 'Sushant Lok Phase - 1', '5', '7', '3 floors', '2 Covered, 2 Open', '250.84 sq mtr', '245.76 sq mtr', '5.99 cr', '4.99 cr', '6.99 cr', '869693774', 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 'af63798a7deebebd06af935925cba9fb1565680584jpeg', '31d460256ad31331e4d59d1377b2556b1565680584jpeg', 'd3a2a650c3ca6d9a7886a9e403bca6901565680584jpeg', 'd3812a144fafaa264821a7b1154ae44c1565680584jpeg', '0ac462ac57b106b3c62e8a310c2afe931565680584jpeg', 'c584f57049e5155743d83a21a0971b741565680584jpeg', 'A Block, Sushant Lok Phase - 1', '1', 'Varanasi', '2', '221001', 'Near Kendriya Vidalya', '2019-08-13 07:16:24'),
(5, '2', '5 BHK Residential House 4830 sqft', 'Non-Vegetarians, Without Company Lease, Pets allowed', 'Houses', 'Rent', 'Vasant Vihar', '5', '6', 'Ground (Out of 1 Floors)', '2 Covered, 2 Open', '4830 sq ft', '4200 sq ft', '45000', '43000', '48000', '131599041', 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 'b8a1a89aa25d962639c36371b8728c571565681197.jpg', 'af63798a7deebebd06af935925cba9fb1565681197jpeg', '31d460256ad31331e4d59d1377b2556b1565681197jpeg', 'b3dc4d2ca49fca95b80b4a2c66c833b81565681197.jpg', 'd4e6271f4e62bb1f7cf10004553f3efe1565681197.jpg', '0ac462ac57b106b3c62e8a310c2afe931565681197jpeg', 'D-510,', '7', 'queens', '18', '4654646', 'XYZ', '2019-08-13 07:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblstate`
--

CREATE TABLE `tblstate` (
  `ID` int(10) NOT NULL,
  `CountryID` int(5) DEFAULT NULL,
  `StateName` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstate`
--

INSERT INTO `tblstate` (`ID`, `CountryID`, `StateName`, `EnterDate`) VALUES
(1, 1, 'Madhya Pradesh', '2019-08-06 10:48:36'),
(2, 1, 'Uttar Pradesh', '2019-08-06 10:48:58'),
(3, 1, 'Tamilnadu', '2019-08-06 10:49:07'),
(4, 1, 'Delhi/NCR', '2019-08-06 10:49:29'),
(5, 1, 'Bihar', '2019-08-06 10:49:39'),
(6, 1, 'Uttrakhand', '2019-08-06 10:49:50'),
(7, 2, 'New South Wales', '2019-08-06 10:51:29'),
(8, 2, 'Queensland', '2019-08-06 10:51:49'),
(9, 2, 'South Australia', '2019-08-06 10:52:11'),
(10, 2, 'Victoria', '2019-08-06 10:52:32'),
(11, 2, 'Tasmania', '2019-08-06 10:52:45'),
(12, 16, 'California', '2019-08-06 10:54:21'),
(13, 16, 'Florida', '2019-08-06 10:54:42'),
(14, 16, 'New York', '2019-08-06 10:55:02'),
(15, 16, 'New Mexico', '2019-08-06 10:55:24'),
(16, 16, 'New Jersey.', '2019-08-06 10:55:41'),
(17, 16, 'Virginia', '2019-08-06 10:55:56'),
(18, 7, 'Tokyo', '2019-09-15 10:24:06'),
(19, 1, 'Punjab', '2022-12-11 07:22:59'),
(20, 1, 'WB', '2022-12-11 07:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `UserType` int(5) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Aboutme` mediumtext NOT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `UserType`, `PostingDate`, `Aboutme`, `UpdationDate`) VALUES
(1, 'Test', 'test@gmail.com', 8596234569, 'f925916e2754e5e03f75dd58a5733251', 1, '2019-08-07 15:50:08', 'I am Mahesh.\r\nLorem ipsum  dolor 12sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit.\r\n', '2022-12-28 09:30:15'),
(2, 'Rajesh Singh', 'raj@gmail.com', 4446464646, 'f925916e2754e5e03f75dd58a5733251', 2, '2019-08-07 15:52:34', '', '2022-12-25 14:38:11'),
(3, 'Akash', 'akash@gmail.com', 5656565656, 'f925916e2754e5e03f75dd58a5733251', 3, '2019-08-07 15:53:05', 'NA', '2022-12-25 14:38:19'),
(4, 'Test user', 'testuser@gmail.com', 1234567890, 'f925916e2754e5e03f75dd58a5733251', 1, '2019-09-30 18:57:00', 'Test', '2019-09-30 18:58:10'),
(5, 'Simple user', 'testuser2@gmail.com', 1231231231, 'f925916e2754e5e03f75dd58a5733251', 3, '2019-09-30 18:59:41', '', '2019-09-30 18:59:41'),
(6, 'Test1', 'test1@gmail.com', 9876543210, 'f925916e2754e5e03f75dd58a5733251', 1, '2022-12-23 13:23:25', '', '2019-09-30 18:58:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcity`
--
ALTER TABLE `tblcity`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_tblcity_tblstate_id` (`StateID`);

--
-- Indexes for table `tblcity_temp`
--
ALTER TABLE `tblcity_temp`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcountry`
--
ALTER TABLE `tblcountry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_tblenquiry_tblproperty` (`PropertyID`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tblfeedback_tbluser` (`UserId`),
  ADD KEY `fk_tblfeedback_tblproperty` (`PropertyId`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproperty`
--
ALTER TABLE `tblproperty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tblproperty_tbluser_id` (`userId`),
  ADD KEY `fk_tblproperty_tblpropertytype_id` (`propertyTypeId`),
  ADD KEY `fk_tblproperty_tblcountry_id` (`countryId`),
  ADD KEY `fk_tblproperty_tblcity_id` (`cityId`),
  ADD KEY `fk_tblproperty_tblstate_id` (`stateId`);

--
-- Indexes for table `tblpropertytype`
--
ALTER TABLE `tblpropertytype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproperty_temp`
--
ALTER TABLE `tblproperty_temp`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstate`
--
ALTER TABLE `tblstate`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_tblstate_tblcountry_id` (`CountryID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcity`
--
ALTER TABLE `tblcity`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblcity_temp`
--
ALTER TABLE `tblcity_temp`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcountry`
--
ALTER TABLE `tblcountry`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblproperty`
--
ALTER TABLE `tblproperty`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpropertytype`
--
ALTER TABLE `tblpropertytype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblproperty_temp`
--
ALTER TABLE `tblproperty_temp`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblstate`
--
ALTER TABLE `tblstate`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcity`
--
ALTER TABLE `tblcity`
  ADD CONSTRAINT `fk_tblcity_tblstate_id` FOREIGN KEY (`StateID`) REFERENCES `tblstate` (`ID`);

--
-- Constraints for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD CONSTRAINT `fk_tblenquiry_tblproperty` FOREIGN KEY (`PropertyID`) REFERENCES `tblproperty` (`id`);

--
-- Constraints for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD CONSTRAINT `fk_tblfeedback_tblproperty` FOREIGN KEY (`PropertyId`) REFERENCES `tblproperty` (`id`),
  ADD CONSTRAINT `fk_tblfeedback_tbluser` FOREIGN KEY (`UserId`) REFERENCES `tbluser` (`ID`);

--
-- Constraints for table `tblproperty`
--
ALTER TABLE `tblproperty`
  ADD CONSTRAINT `fk_tblproperty_tblcountry_id` FOREIGN KEY (`countryId`) REFERENCES `tblcountry` (`ID`),
  ADD CONSTRAINT `fk_tblproperty_tblpropertytype_id` FOREIGN KEY (`propertyTypeId`) REFERENCES `tblpropertytype` (`ID`),
  ADD CONSTRAINT `fk_tblproperty_tblstate_id` FOREIGN KEY (`stateId`) REFERENCES `tblstate` (`ID`),
  ADD CONSTRAINT `fk_tblproperty_tbluser_id` FOREIGN KEY (`userId`) REFERENCES `tbluser` (`ID`);

--
-- Constraints for table `tblstate`
--
ALTER TABLE `tblstate`
  ADD CONSTRAINT `fk_tblstate_tblcountry_id` FOREIGN KEY (`CountryID`) REFERENCES `tblcountry` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
