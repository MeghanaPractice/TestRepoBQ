-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2023 at 11:12 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bqassets`
--
CREATE DATABASE IF NOT EXISTS `bqassets` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bqassets`;

-- --------------------------------------------------------

--
-- Table structure for table `deviceasset`
--

DROP TABLE IF EXISTS `deviceasset`;
CREATE TABLE `deviceasset` (
  `inUse` tinyint(1) NOT NULL,
  `DeviceNo` varchar(7) NOT NULL,
  `Brand` varchar(45) NOT NULL,
  `DeviceAssetID` varchar(45) NOT NULL,
  `CodeRef2` varchar(45) DEFAULT NULL,
  `ModelName` varchar(45) DEFAULT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `Emp_ID` varchar(50) DEFAULT NULL,
  `Team_IDf` varchar(50) DEFAULT NULL,
  `IMEICode` varchar(45) DEFAULT NULL,
  `SerialNo` varchar(45) DEFAULT NULL,
  `Accessories` varchar(45) DEFAULT NULL,
  `AdditionalInfo` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deviceasset`
--

INSERT INTO `deviceasset` (`inUse`, `DeviceNo`, `Brand`, `DeviceAssetID`, `CodeRef2`, `ModelName`, `Category`, `PurchaseDate`, `Emp_ID`, `Team_IDf`, `IMEICode`, `SerialNo`, `Accessories`, `AdditionalInfo`) VALUES
(1, 'D000001', 'Apple', 'B-i2', 'i2', 'iPhone 7', 'iOS', NULL, 'Beqisoft Office', 'Beqisoft Office', '3.55E+14', 'DNPVCM2RJ5KN', 'Cable', 'Device + Cable'),
(0, 'D000002', 'Apple', 'B-i3', 'i6', 'iphone 8 plus', 'iOS', NULL, 'Beqisoft Office', 'Beqisoft Office', '3.57E+14', 'F2QVDM59JCLY', NULL, 'Devices'),
(0, 'D000003', 'Apple', 'B-i4', 'i7', 'iPad pro / 11.4', 'iPAD', NULL, 'NEWTESTEMP', 'NEWTESTTEAM', NULL, 'DMPWTOBIJ28L', NULL, 'Device'),
(0, 'D000004', 'Samsung', 'BA1', 'A3', 'vivo 1725', 'Handset', NULL, 'Monica Seles', 'ESPN Functionality', '868530039072134/868530039072126', 'NULL', 'Adaptor', 'Device + Adaptor'),
(0, 'D000005', 'Samsung', 'BA3', 'A7', 'Samsung Galaxy NOTE 8', 'Handset', NULL, 'manikanta', 'ESPN Functionality', '352016091987628/\r352017091987626', 'RZ8K31F5LSN', NULL, 'Device'),
(0, 'D000006', 'Samsung', 'BA4', 'A9', 'Google pixel 2XL -OS -9,', 'Handset', NULL, 'Chandramouli P', 'Fantasy', '3.58E+14', '804KPRW1753646', 'C USB Cable', 'Device + Cable'),
(0, 'D000007', 'Test', 'Test1', NULL, 'ANEW', NULL, '2023-07-04', 'Kishore Kumar', 'EPE', NULL, NULL, NULL, NULL),
(0, 'D000008', 'Test', 'ATEST2', NULL, 'Test', NULL, '2023-08-16', 'NEWTESTEMP', 'NEWTESTTEAM', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `PersonID` varchar(7) NOT NULL,
  `EmployeeID` varchar(50) NOT NULL DEFAULT 'admin',
  `EmployeeName` varchar(50) DEFAULT NULL,
  `TeamIDNo` varchar(50) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `ContactNo` varchar(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`PersonID`, `EmployeeID`, `EmployeeName`, `TeamIDNo`, `Designation`, `ContactNo`, `Email`) VALUES
('B000001', 'Ashwini R', 'Ashwini R', 'EPE', 'QA Analyst', '9375676576', ''),
('B000002', 'ATest1', 'atest1', 'NEWTESTTEAM', '', '9999999999', 'test1@test.com'),
('B000003', 'Beqisoft Office', 'Beqisoft Office', 'Beqisoft Office', '', '', ''),
('B000004', 'Chandramouli P', 'Chandramouli P', 'Fantasy', '', '', ''),
('B000005', 'Deepika', 'Deepika', 'ESPN Analytics', '', '', ''),
('B000006', 'Deepika M', 'Deepika M', 'EPE', '', '', ''),
('B000007', 'Employee22', 'emp1', 'EPE', '', '', ''),
('B000008', 'Employee23', 'emp2', 'EPE', '', '', ''),
('B000009', 'Karthik D', 'Karthik D', 'EPE', '', '', ''),
('B000010', 'Kishore Kumar', 'Kishore Kumar', 'EPE', '', '', ''),
('B000011', 'Madesh P', 'Madesh P', 'EPE', '', '', ''),
('B000012', 'Madhura', 'Madhura', 'EPE', '', '', ''),
('B000013', 'manikanta', 'manikanta', 'ESPN Functionality', '', '', ''),
('B000014', 'Manoj', 'Manoj', 'EPE', '', '', ''),
('B000015', 'Mohit Kumar', 'Mohit Kumar', 'EPE', '', '', ''),
('B000016', 'Monica Seles', 'Monica Seles', 'ESPN Functionality', '', '', ''),
('B000017', 'NewEmp', 'New', 'EPE', '', '', ''),
('B000018', 'Poosala Chandramouli', 'Poosala Chandramouli', 'EPE', '', '', ''),
('B000019', 'Prathima C', 'Prathima C', 'EPE', '', '', ''),
('B000020', 'Rinu Ponnachan', 'Rinu Ponnachan', 'EPE', '', '', ''),
('B000021', 'Saravanan', 'Saravanan', 'EPE', '', '', ''),
('B000022', 'Sujatha', 'Sujatha', 'EPE', '', '', ''),
('B000023', 'Test0', 'Test0', NULL, '', '', ''),
('B000024', 'empTest1', 'TestUser', 'Fantasy', 'Test', '', 'signuptest@gmail.com'),
('B000026', 'NEWTESTEMP', 'NEWTESTEMP', 'NEWTESTTEAM', '', '3939492434', 'sddfdsdsfssds@fdsfd.wdfd');

-- --------------------------------------------------------

--
-- Table structure for table `laptopasset`
--

DROP TABLE IF EXISTS `laptopasset`;
CREATE TABLE `laptopasset` (
  `inUse` tinyint(1) NOT NULL,
  `LaptopNo` varchar(7) NOT NULL,
  `Brand` varchar(45) NOT NULL,
  `LaptopAssetID` varchar(45) NOT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `ModelName` varchar(45) DEFAULT NULL,
  `ModelNo` varchar(45) DEFAULT NULL,
  `SerialNo` varchar(45) DEFAULT NULL,
  `EmpID` varchar(50) DEFAULT NULL,
  `Team_ID` varchar(50) DEFAULT NULL,
  `ScreenSize` varchar(20) DEFAULT NULL,
  `CharlesID` varchar(45) DEFAULT NULL,
  `CharlesKey` varchar(45) DEFAULT NULL,
  `MSOfficeKey` varchar(45) DEFAULT NULL,
  `MSOfficeUsername` varchar(45) DEFAULT NULL,
  `MSOfficePassword` varchar(45) DEFAULT NULL,
  `Accessories` varchar(100) DEFAULT NULL,
  `Warranty` int(11) DEFAULT NULL,
  `AdditionalItems` varchar(100) DEFAULT NULL,
  `OtherDetails` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `laptopasset`
--

INSERT INTO `laptopasset` (`inUse`, `LaptopNo`, `Brand`, `LaptopAssetID`, `PurchaseDate`, `ModelName`, `ModelNo`, `SerialNo`, `EmpID`, `Team_ID`, `ScreenSize`, `CharlesID`, `CharlesKey`, `MSOfficeKey`, `MSOfficeUsername`, `MSOfficePassword`, `Accessories`, `Warranty`, `AdditionalItems`, `OtherDetails`) VALUES
(0, 'L000000', 'Test', 'ATest11', '2023-07-19', 'Atest1', NULL, NULL, 'empTest1', 'Fantasy', '13', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 'A test value\n*AdminTestUser(Admin): Another value\n*AdminTestUser(Admin): Another test\n*empTest1(Standard): A third test'),
(1, 'L000001', 'Lenovo', 'BEQI 51780002', NULL, 'ThinkPad T490', '20RYS07R00', 'PF2B1ZL6', 'Deepika M', 'EPE', '35.56', 'Beqisoft Technologies Private Limited', 'a024f38a68e805399f', NULL, 'Deepika@beqisoft.com', ' Xos12751', NULL, 3, NULL, 'Laptop Computer Sysytem-1N, Battery-1N, Adapter-1N, Manual-1N, Power Cord-1N, test'),
(1, 'L000002', 'MacBook', 'BEQI 51780003', '2020-12-09', 'MacBook Air 13-inch', 'A2179', 'FVFDG227M6KG', 'Sujatha', 'EPE', '13', 'BEQISOFT TECHNOLOGIES PRIVATE LIMITED', ' 4e95f35d21b7aa1e87', NULL, 'sujatha@beqisoft.onmicrosoft.com', 'Qug10732', 'HDMI Cable, Adaptor', 3, 'ALOGIC USB Cable', 'test'),
(0, 'L000003', 'Lenovo', 'BEQI 51780005', NULL, 'ThinkPad T14 Gen 1', '20S0S1MC00', 'PF24469N', 'Mohit Kumar', 'EPE', '35.56', 'Beqisoft Technologies Private Limited', 'a024f38a68e805399f', NULL, 'mohit@beqisoft.onmicrosoft.com', 'Jaf77886', NULL, 3, NULL, 'Laptop Computer Sysytem-1N, Battery-1N, Adapter-1N, Manual-1N, Power Cord-1N'),
(0, 'L000004', 'Lenovo', 'BEQI 51780006', NULL, 'ThinkPad T14 Gen 1', '20S0S1MC00', 'PF2419QT', 'Saravanan', 'EPE', '35.56', 'Beqisoft Technologies Private Limited', 'a024f38a68e805399f', NULL, 'nishikar@beqisoft.onmicrosoft.com', 'Rut85340', NULL, 3, 'cable', 'Laptop Computer Sysytem-1N, Battery-1N, Adapter-1N, Manual-1N, Power Cord-1N'),
(0, 'L000005', 'Lenovo', 'BEQI 51780007', NULL, 'ThinkPad T14 Gen 1', '20S0S1MC00', 'PF24563V', 'Kishore Kumar', 'EPE', '35.56', 'Beqisoft Technologies Private Limited', 'a024f38a68e805399f', NULL, 'seema@beqisoft.onmicrosoft.com', 'Dox21868', NULL, 3, NULL, 'Laptop Computer Sysytem-1N, Battery-1N, Adapter-1N, Manual-1N, Power Cord-1N\n*AdminTestUser(Admin): Adaptor'),
(0, 'L000006', 'Lenovo', 'BEQI 51780008', NULL, 'ThinkPad T14 Gen 1', '20S0S1MC00', 'PF2419SY', 'Manoj', 'EPE', '35.56', 'Beqisoft Technologies Private Limited', 'a024f38a68e805399f', NULL, 'n.manoj@beqisoft.onmicrosoft.com', 'Hug29440', NULL, 3, NULL, 'Laptop Computer Sysytem-1N, Battery-1N, Adapter-1N, Manual-1N, Power Cord-1N'),
(0, 'L000007', 'Lenovo', 'BEQI 51780009', NULL, 'ThinkPad T14 Gen 1', '20S0S1MC00', 'PF23SSN7', 'Poosala Chandramouli', 'EPE', '35.56', 'Username: BEQISOFT TECHNOLOGIES PRIVATE LIMIT', '93a344610c39429831', NULL, 'chandramouli@beqisoft.onmicrosoft.com', 'Mav38465', NULL, 3, NULL, 'Laptop Computer Sysytem-1N, Battery-1N, Adapter-1N, Manual-1N, Power Cord-1N'),
(0, 'L000008', 'Lenovo', 'BEQI 51780010', NULL, 'ThinkPad T14 Gen 1', '20S0S1MC00', 'PF22GMYX', 'Madesh P', 'EPE', '35.56', 'Beqisoft Technologies Private Limited', 'a024f38a68e805399f', NULL, 'madesh@beqisoft.onmicrosoft.com', 'Gaq93340', NULL, 3, NULL, 'Laptop Computer Sysytem-1N,Battery-1N,Adapter-1N, Manual-1N,Power Cord-1N'),
(0, 'L000009', 'Lenovo', 'BEQI 51780015', '2021-09-08', 'ThinkPad E14 Gen 2', '20TAS08H00', 'PF2XWK5G', 'Rinu Ponnachan', 'EPE', '35.56', 'BEQISOFT TECHNOLOGIES PRIVATE LIMITED', 'bc3f643bb30c603c4e', NULL, NULL, NULL, NULL, 3, NULL, 'Laptop Computer Sysytem-1N, Battery-1N, Adapter-1N, Manual-1N, Power Cord-1N'),
(0, 'L000010', 'Lenovo', 'BEQI 51780016', '2021-09-08', 'ThinkPad E14 Gen 2', '20TAS08H00', 'PF2XWA4N', 'Ashwini R', 'EPE', '35.56', 'BEQISOFT TECHNOLOGIES PRIVATE LIMITED', '77269c01491161b68a', NULL, NULL, NULL, NULL, 3, NULL, 'Laptop Computer Sysytem-1N, Battery-1N, Adapter-1N, Manual-1N, Power Cord-1N'),
(0, 'L000011', 'Lenovo', 'BEQI 51780017', '2021-09-08', 'ThinkPad E14 Gen 2', '20TAS08H00', 'PF2Z65ZW', 'Madhura', 'EPE', '35.56', 'BEQISOFT TECHNOLOGIES PRIVATE LIMITED', '7f98910acf9679c148', NULL, NULL, NULL, NULL, 3, NULL, 'Laptop Computer Sysytem-1N, Battery-1N, Adapter-1N, Manual-1N, Power Cord-1N'),
(0, 'L000012', 'Lenovo', 'BEQI 51780018', '2021-09-08', 'ThinkPad E14 Gen 2', '20TAS08H00', 'PF2XWRNN', 'Karthik D', 'EPE', '35.56', 'BEQISOFT TECHNOLOGIES PRIVATE LIMITED', '8e3df0229a9eb6d315', NULL, NULL, NULL, NULL, 3, NULL, 'Laptop Computer Sysytem-1N, Battery-1N, Adapter-1N, Manual-1N, Power Cord-1N'),
(0, 'L000013', 'Lenovo', 'BEQI 51780040', NULL, 'ThinkPad E14', '20RAS08A00', 'PF1TMCNQ', 'Prathima C', 'EPE', '35.56', 'Beqisoft Technologies Private Limited', 'a024f38a68e805399f', 'NQYQV-MY89W-JJ9F6-M88TR-GXY9B', NULL, NULL, NULL, 3, NULL, 'Laptop Computer Sysytem-1N, Battery-1N, Adapter-1N, Manual-1N, Power Cord-1N'),
(0, 'L000015', 'Lenovo', 'BEQI TESE1234', NULL, 'ThinkPad T490', '20RYS07R00', 'PF2B1ZL6', NULL, NULL, '35.56', 'Beqisoft Technologies Private Limited', 'a024f38a68e805399f', NULL, 'Deepika@beqisoft.com', ' Xos12751', NULL, 3, NULL, 'Laptop Computer Sysytem-1N, Battery-1N, Adapter-1N, Manual-1N, Power Cord-1N'),
(1, 'L000016', 'TEST', 'ATestLaptop-updated', '2023-08-15', 'Test', '12346', '12347', 'ATest1', 'NEWTESTTEAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 'ATEST\n*AdminTestUser(Admin): updated');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `TeamNo` varchar(7) NOT NULL,
  `TeamID` varchar(50) NOT NULL,
  `TeamName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`TeamNo`, `TeamID`, `TeamName`) VALUES
('T000001', 'Beqisoft Office', 'Beqisoft Office'),
('T000002', 'EPE', 'EPE'),
('T000003', 'ESPN Analytics', 'ESPN Analytics'),
('T000004', 'ESPN Functionality', 'ESPN Functionality'),
('T000005', 'Fantasy', 'Fantasy'),
('T000007', 'Test0', 'EditTest0'),
('T000012', 'NEWTESTTEAM', 'NEWTESTTEAM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deviceasset`
--
ALTER TABLE `deviceasset`
  ADD PRIMARY KEY (`DeviceNo`),
  ADD UNIQUE KEY `DeviceAssetID` (`DeviceAssetID`),
  ADD KEY `Emp_ID_idx` (`Emp_ID`),
  ADD KEY `Team_IDf_idx` (`Team_IDf`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`PersonID`),
  ADD UNIQUE KEY `EmployeeID` (`EmployeeID`),
  ADD KEY `TeamIDNo` (`TeamIDNo`);

--
-- Indexes for table `laptopasset`
--
ALTER TABLE `laptopasset`
  ADD PRIMARY KEY (`LaptopNo`),
  ADD UNIQUE KEY `LaptopAssetID` (`LaptopAssetID`),
  ADD KEY `EmpID_idx` (`EmpID`),
  ADD KEY `Team_ID_idx` (`Team_ID`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`TeamNo`),
  ADD UNIQUE KEY `TeamID` (`TeamID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deviceasset`
--
ALTER TABLE `deviceasset`
  ADD CONSTRAINT `Emp_ID` FOREIGN KEY (`Emp_ID`) REFERENCES `employee` (`EmployeeID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Team_IDf` FOREIGN KEY (`Team_IDf`) REFERENCES `team` (`TeamID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `TeamIDNo` FOREIGN KEY (`TeamIDNo`) REFERENCES `team` (`TeamID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `laptopasset`
--
ALTER TABLE `laptopasset`
  ADD CONSTRAINT `EmpID` FOREIGN KEY (`EmpID`) REFERENCES `employee` (`EmployeeID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Team_ID` FOREIGN KEY (`Team_ID`) REFERENCES `team` (`TeamID`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
