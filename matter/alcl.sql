-- phpMyAdmin SQL Dump
-- version 3.5.7deb1.precise~ppa.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 10, 2013 at 04:40 PM
-- Server version: 5.5.28-0ubuntu0.12.04.2
-- PHP Version: 5.3.10-1ubuntu3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `alcl`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_xadmin`
--

CREATE TABLE IF NOT EXISTS `jos_xadmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Command` varchar(50) NOT NULL DEFAULT '',
  `Values` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_xadmin`
--

INSERT INTO `jos_xadmin` (`id`, `Command`, `Values`) VALUES
(1, 'NewJoinings', 'Start');

-- --------------------------------------------------------

--
-- Table structure for table `jos_xbusiness_closings_data`
--

CREATE TABLE IF NOT EXISTS `jos_xbusiness_closings_data` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DistributorID` mediumint(9) NOT NULL DEFAULT '0',
  `WeekLeftDistributors` mediumint(9) NOT NULL DEFAULT '0',
  `ForwordedLeftPV` bigint(20) NOT NULL DEFAULT '0',
  `LeftCarryPV` int(11) NOT NULL DEFAULT '0',
  `WeekRightDistributors` mediumint(9) NOT NULL DEFAULT '0',
  `ForwordedRightPV` bigint(20) NOT NULL DEFAULT '0',
  `RightCarryPV` int(11) NOT NULL DEFAULT '0',
  `WeekLeftPV` bigint(20) NOT NULL DEFAULT '0',
  `WeekRightPV` bigint(20) NOT NULL DEFAULT '0',
  `WeekPV` bigint(20) NOT NULL DEFAULT '0',
  `WeekPairs` int(11) NOT NULL DEFAULT '0',
  `LastWeekCarryAmount` double NOT NULL DEFAULT '0',
  `WeekCarryAmount` double NOT NULL DEFAULT '0',
  `TDSAmount` double NOT NULL DEFAULT '0',
  `PairIncomeAmount` double NOT NULL DEFAULT '0',
  `Simulation` double NOT NULL DEFAULT '0',
  `PairIncomeNet` double NOT NULL DEFAULT '0',
  `Royalty` double NOT NULL DEFAULT '0',
  `WeekIntroductionAmount` double NOT NULL DEFAULT '0',
  `WeekAmount` double NOT NULL DEFAULT '0',
  `ServiceCharge` double NOT NULL,
  `VoucherDeduction` double NOT NULL,
  `WeekAmountNet` double NOT NULL,
  `Closing` varchar(20) NOT NULL DEFAULT '',
  `ChequeNo` varchar(20) NOT NULL DEFAULT '',
  `SurveyIncome` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `DistributorID` (`DistributorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xbvreward`
--

CREATE TABLE IF NOT EXISTS `jos_xbvreward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `distributor_id` int(11) NOT NULL,
  `reward1` datetime NOT NULL,
  `reward2` datetime NOT NULL,
  `reward3` datetime NOT NULL,
  `reward4` datetime NOT NULL,
  `reward5` datetime NOT NULL,
  `reward6` datetime NOT NULL,
  `reward7` datetime NOT NULL,
  `reward8` datetime NOT NULL,
  `reward9` datetime NOT NULL,
  `reward10` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `period` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xcideveloper_projects`
--

CREATE TABLE IF NOT EXISTS `jos_xcideveloper_projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `component` varchar(50) NOT NULL,
  `com_name` varchar(50) NOT NULL,
  `extension_type` varchar(255) DEFAULT NULL,
  `params` text,
  `published` tinyint(4) DEFAULT NULL,
  `manifest` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xclosingmain`
--

CREATE TABLE IF NOT EXISTS `jos_xclosingmain` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `distributor_id` int(11) NOT NULL,
  `closing` datetime NOT NULL,
  `LastClosingCarryAmount` int(11) NOT NULL,
  `IntroductionAmount` int(11) NOT NULL,
  `RMB` int(11) NOT NULL,
  `BinaryIncomeFromIntrosShare` double NOT NULL DEFAULT '0',
  `Level1` int(11) NOT NULL,
  `Level2` int(11) NOT NULL,
  `Level3` int(11) NOT NULL,
  `Level4` int(11) NOT NULL,
  `Level5` int(11) NOT NULL,
  `Level6` int(11) NOT NULL,
  `Level7` int(11) NOT NULL,
  `Level8` int(11) NOT NULL,
  `Level9` int(11) NOT NULL,
  `Level10` int(11) NOT NULL,
  `BinaryIncome` int(11) NOT NULL,
  `FutureBinary` int(11) DEFAULT NULL,
  `RoyaltyIncome` double NOT NULL DEFAULT '0',
  `SurveyIncome` int(11) NOT NULL,
  `ClosingAmount` double NOT NULL DEFAULT '0',
  `ClosingTDSAmount` double NOT NULL,
  `ClosingServiceCharge` double NOT NULL,
  `OtherDeductions` double NOT NULL,
  `OtherDeductionRemarks` text,
  `ClosingUpgradationDeduction` double NOT NULL DEFAULT '0',
  `FirstPayoutDeduction` double NOT NULL DEFAULT '0',
  `ClosingAmountNet` int(11) NOT NULL,
  `ClosingCarriedAmount` int(11) NOT NULL,
  `ChequeNo` varchar(10) DEFAULT NULL,
  `CuriorNo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `closing_name` (`closing`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xclosingsession`
--

CREATE TABLE IF NOT EXISTS `jos_xclosingsession` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `distributor_id` int(11) NOT NULL,
  `SessionLeftPV` bigint(20) NOT NULL,
  `SessionRightPV` bigint(20) NOT NULL,
  `SessionPairPV` bigint(20) NOT NULL DEFAULT '0',
  `SessionPairBV` bigint(20) NOT NULL DEFAULT '0',
  `SessionLeftRP` bigint(20) NOT NULL,
  `SessionRightRP` bigint(20) NOT NULL,
  `SessionPairRP` bigint(20) NOT NULL DEFAULT '0',
  `SessionIntros` bigint(20) NOT NULL,
  `SessionGreenCount` bigint(20) NOT NULL DEFAULT '0',
  `SessionLeftCount` bigint(20) NOT NULL DEFAULT '0',
  `SessionRightCount` bigint(20) NOT NULL,
  `TotalGreenCount` bigint(20) NOT NULL,
  `TotalCount` bigint(20) NOT NULL,
  `Session` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xconfig`
--

CREATE TABLE IF NOT EXISTS `jos_xconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xkitmaster`
--

CREATE TABLE IF NOT EXISTS `jos_xkitmaster` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL DEFAULT '',
  `MRP` double NOT NULL DEFAULT '0',
  `DP` double NOT NULL DEFAULT '0',
  `BV` double NOT NULL DEFAULT '0',
  `PV` double NOT NULL DEFAULT '0',
  `RP` smallint(6) NOT NULL DEFAULT '0',
  `AmountToIntroducer` smallint(6) NOT NULL DEFAULT '0',
  `Capping` bigint(20) NOT NULL DEFAULT '0',
  `DefaultGreen` tinyint(4) NOT NULL DEFAULT '1',
  `DefaultColor` char(10) NOT NULL DEFAULT 'blue',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `jos_xkitmaster`
--

INSERT INTO `jos_xkitmaster` (`id`, `Name`, `MRP`, `DP`, `BV`, `PV`, `RP`, `AmountToIntroducer`, `Capping`, `DefaultGreen`, `DefaultColor`, `published`) VALUES
(1, 'Foce Watch', 3100, 3100, 0, 500, 0, 100, 75000, 1, 'blue', 1),
(36, 'Bio Magnatic Bracelet', 3100, 3100, 0, 500, 0, 100, 75000, 0, 'blue', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_xlegs`
--

CREATE TABLE IF NOT EXISTS `jos_xlegs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `distributor_id` int(11) NOT NULL,
  `Leg` char(255) NOT NULL,
  `downline_id` int(11) NOT NULL,
  `SessionPV` bigint(20) NOT NULL DEFAULT '0',
  `MidSessionPV` bigint(20) NOT NULL DEFAULT '0',
  `ClosingPV` bigint(20) NOT NULL DEFAULT '0',
  `SessionBV` bigint(20) NOT NULL DEFAULT '0',
  `MidSessionBV` bigint(20) NOT NULL DEFAULT '0',
  `ClosingBV` bigint(20) NOT NULL DEFAULT '0',
  `SessionRP` bigint(20) NOT NULL DEFAULT '0',
  `MidSessionRP` bigint(20) NOT NULL DEFAULT '0',
  `ClosingRP` bigint(20) NOT NULL DEFAULT '0',
  `SessionIntros` bigint(20) NOT NULL,
  `MidSessionIntros` bigint(20) NOT NULL,
  `ClosingIntros` bigint(20) NOT NULL,
  `SessionGreenCount` bigint(20) NOT NULL DEFAULT '0',
  `MidSessionGreenCount` bigint(20) NOT NULL DEFAULT '0',
  `ClosingGreenCount` bigint(20) NOT NULL DEFAULT '0',
  `TotalGreenCount` bigint(20) NOT NULL,
  `SessionCount` bigint(20) NOT NULL DEFAULT '0',
  `MidSessionCount` bigint(20) NOT NULL DEFAULT '0',
  `ClosingCount` bigint(20) NOT NULL DEFAULT '0',
  `TotalCount` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xpersonaldetails`
--

CREATE TABLE IF NOT EXISTS `jos_xpersonaldetails` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `distributor_id` int(11) DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Father_HusbandName` varchar(50) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `Dob` date DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Via` varchar(20) NOT NULL DEFAULT '',
  `Country` varchar(20) NOT NULL DEFAULT '',
  `Tahsil` varchar(20) NOT NULL DEFAULT '',
  `District` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `PinCode` varchar(6) NOT NULL DEFAULT '-',
  `EmailID` varchar(50) DEFAULT NULL,
  `OfficeNo` varchar(20) DEFAULT NULL,
  `ResidanceNo` varchar(10) NOT NULL DEFAULT '',
  `MobileNo` varchar(20) NOT NULL DEFAULT '0',
  `Nominee` varchar(50) DEFAULT NULL,
  `RelainWithNominee` varchar(10) DEFAULT NULL,
  `NomineeDob` date DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `PanNo` varchar(20) DEFAULT NULL,
  `Occupation` varchar(50) NOT NULL DEFAULT '-',
  `Bank` varchar(50) DEFAULT NULL,
  `IFSC` varchar(50) DEFAULT NULL,
  `AccountNumber` varchar(50) DEFAULT NULL,
  `Product` varchar(50) DEFAULT NULL,
  `PinManagerPassword` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4422 ;

--
-- Dumping data for table `jos_xpersonaldetails`
--

INSERT INTO `jos_xpersonaldetails` (`id`, `distributor_id`, `Name`, `Father_HusbandName`, `Gender`, `Dob`, `Address`, `City`, `Via`, `Country`, `Tahsil`, `District`, `State`, `PinCode`, `EmailID`, `OfficeNo`, `ResidanceNo`, `MobileNo`, `Nominee`, `RelainWithNominee`, `NomineeDob`, `Password`, `PanNo`, `Occupation`, `Bank`, `IFSC`, `AccountNumber`, `Product`, `PinManagerPassword`) VALUES
(4421, 1, 'root distributor', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '-', NULL, NULL, '', '0', NULL, NULL, NULL, 'root', NULL, '-', NULL, NULL, NULL, NULL, 'root');

-- --------------------------------------------------------

--
-- Table structure for table `jos_xpinmaster`
--

CREATE TABLE IF NOT EXISTS `jos_xpinmaster` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Pin` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `kit_id` int(11) NOT NULL DEFAULT '0',
  `BV` double NOT NULL DEFAULT '0',
  `PV` double NOT NULL DEFAULT '0',
  `RP` int(11) DEFAULT '0',
  `Used` tinyint(4) DEFAULT '0',
  `adcrd_id` mediumint(9) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pos_id` int(11) DEFAULT '1',
  `under_pos` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Pin` (`Pin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_xpinmaster`
--

INSERT INTO `jos_xpinmaster` (`id`, `Pin`, `kit_id`, `BV`, `PV`, `RP`, `Used`, `adcrd_id`, `published`, `created_at`, `updated_at`, `pos_id`, `under_pos`) VALUES
(1, 'root_pin', 1, 80, 20, 0, 1, 1, 1, '2013-04-01 00:00:00', '2013-04-01 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_xpintransaction`
--

CREATE TABLE IF NOT EXISTS `jos_xpintransaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Fromdistributor_id` int(11) DEFAULT NULL,
  `Todistributor_id` int(11) DEFAULT NULL,
  `Narration` varchar(100) DEFAULT NULL,
  `Transaction_Type` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xrewards`
--

CREATE TABLE IF NOT EXISTS `jos_xrewards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `distributor_id` int(11) NOT NULL,
  `Reward1` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Reward2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Reward3` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Reward4` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Reward5` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Reward6` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Reward7` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Reward8` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Reward9` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Reward10` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Reward11` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Reward12` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_xrewards`
--

INSERT INTO `jos_xrewards` (`id`, `distributor_id`, `Reward1`, `Reward2`, `Reward3`, `Reward4`, `Reward5`, `Reward6`, `Reward7`, `Reward8`, `Reward9`, `Reward10`, `Reward11`, `Reward12`) VALUES
(1, 111561, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jos_xshiftidlog`
--

CREATE TABLE IF NOT EXISTS `jos_xshiftidlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `shifted_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xspecialreward`
--

CREATE TABLE IF NOT EXISTS `jos_xspecialreward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `distributor_id` int(11) NOT NULL,
  `reward1` datetime NOT NULL,
  `reward2` datetime NOT NULL,
  `reward3` datetime NOT NULL,
  `reward4` datetime NOT NULL,
  `reward5` datetime NOT NULL,
  `reward6` datetime NOT NULL,
  `reward7` datetime NOT NULL,
  `reward8` datetime NOT NULL,
  `reward9` datetime NOT NULL,
  `reward10` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `period` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_xspecialreward`
--

INSERT INTO `jos_xspecialreward` (`id`, `distributor_id`, `reward1`, `reward2`, `reward3`, `reward4`, `reward5`, `reward6`, `reward7`, `reward8`, `reward9`, `reward10`, `period`) VALUES
(1, 111561, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_xstaffmaster`
--

CREATE TABLE IF NOT EXISTS `jos_xstaffmaster` (
  `StaffID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Password` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `AccessLevel` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Point` mediumint(9) NOT NULL DEFAULT '0',
  `adc_comp` char(3) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`StaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xsurveys`
--

CREATE TABLE IF NOT EXISTS `jos_xsurveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` text,
  `Survey` text,
  `A` text,
  `B` text,
  `C` text,
  `D` text,
  `Correct` varchar(2) DEFAULT NULL,
  `Points` int(11) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Type` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xsurvey_done`
--

CREATE TABLE IF NOT EXISTS `jos_xsurvey_done` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `distributor_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xtreedetails`
--

CREATE TABLE IF NOT EXISTS `jos_xtreedetails` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `sponsor_id` mediumint(9) NOT NULL DEFAULT '0',
  `introducer_id` mediumint(9) NOT NULL DEFAULT '0',
  `pin_id` bigint(20) DEFAULT NULL,
  `kit_id` mediumint(9) NOT NULL DEFAULT '0',
  `adcrd_id` int(11) NOT NULL DEFAULT '1',
  `PV` int(11) NOT NULL,
  `BV` int(11) NOT NULL,
  `RP` int(11) NOT NULL,
  `SessionPairPV` bigint(20) NOT NULL DEFAULT '0',
  `MidSessionPairPV` bigint(20) NOT NULL DEFAULT '0',
  `ClosingPairPV` bigint(20) NOT NULL DEFAULT '0',
  `TotalPairPV` bigint(20) NOT NULL DEFAULT '0',
  `SessionPairBV` bigint(20) NOT NULL DEFAULT '0',
  `MidSessionBV` bigint(20) NOT NULL DEFAULT '0',
  `ClosingBV` float(20,2) NOT NULL DEFAULT '0.00',
  `TotalBV` bigint(20) NOT NULL DEFAULT '0',
  `SessionPairRP` bigint(20) NOT NULL DEFAULT '0',
  `MidSessionPairRP` bigint(20) NOT NULL DEFAULT '0',
  `ClosingPairRP` bigint(20) NOT NULL DEFAULT '0',
  `TotalPairRP` bigint(20) NOT NULL DEFAULT '0',
  `SessionIntros` int(11) NOT NULL DEFAULT '0',
  `SessionIntroductionAmount` int(11) NOT NULL DEFAULT '0',
  `MidSessionIntros` int(11) NOT NULL DEFAULT '0',
  `ClosingIntros` int(11) NOT NULL DEFAULT '0',
  `TotalIntroduces` int(11) NOT NULL DEFAULT '0',
  `TotalIntroductionAmount` int(11) NOT NULL DEFAULT '0',
  `SessionGreenCount` int(11) NOT NULL DEFAULT '0',
  `MidSessionGreenCount` int(11) NOT NULL DEFAULT '0',
  `ClosingGreenCount` int(11) NOT NULL DEFAULT '0',
  `TotalGreenCount` bigint(20) NOT NULL DEFAULT '0',
  `SessionCount` int(11) NOT NULL,
  `MidSessionCount` int(11) NOT NULL,
  `ClosingCount` int(11) NOT NULL,
  `TotalCount` int(11) NOT NULL,
  `LastClosingCarryAmount` double NOT NULL DEFAULT '0',
  `IntroductionIncome` int(11) NOT NULL,
  `BinaryIncomeFromIntrosShare` int(11) NOT NULL DEFAULT '0',
  `RMB` double NOT NULL DEFAULT '0',
  `LevelIncome1` int(11) NOT NULL,
  `LevelIncome2` int(11) NOT NULL,
  `LevelIncome3` int(11) NOT NULL,
  `LevelIncome4` int(11) NOT NULL,
  `LevelIncome5` int(11) NOT NULL,
  `LevelIncome6` int(11) NOT NULL,
  `LevelIncome7` int(11) NOT NULL,
  `LevelIncome8` int(11) NOT NULL,
  `LevelIncome9` int(11) NOT NULL,
  `LevelIncome10` int(11) NOT NULL,
  `RoyaltyIncome` double NOT NULL DEFAULT '0',
  `SurveyIncome` int(11) DEFAULT '0',
  `ClosingAmount` double NOT NULL DEFAULT '0',
  `TotalClosingAmount` double NOT NULL DEFAULT '0',
  `ClosingTDSAmount` double NOT NULL DEFAULT '0',
  `TotalTDSAmount` double NOT NULL DEFAULT '0',
  `ClosingServiceCharge` double NOT NULL DEFAULT '0',
  `OtherDeductions` double NOT NULL DEFAULT '0',
  `ClosingUpgradationDeduction` double NOT NULL DEFAULT '0',
  `TotalUpgradationDeduction` double NOT NULL DEFAULT '0',
  `OtherDeductionRemarks` text,
  `FirstPayoutDeduction` double NOT NULL DEFAULT '0',
  `ClosingAmountNet` double NOT NULL DEFAULT '0',
  `ClosingCarriedAmount` double NOT NULL DEFAULT '0',
  `Path` text CHARACTER SET utf8 NOT NULL,
  `GreenDate` date NOT NULL DEFAULT '0000-00-00',
  `Counted` int(11) NOT NULL DEFAULT '0',
  `SessionNewJoining` tinyint(1) NOT NULL DEFAULT '0',
  `MidSessionNewJoining` tinyint(1) DEFAULT '0',
  `ClosingNewJoining` tinyint(1) DEFAULT '0',
  `JoiningDate` date NOT NULL,
  `jid` int(11) DEFAULT NULL,
  `published` tinyint(4) DEFAULT '1',
  `temp1` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `Path` (`Path`(255))
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_xtreedetails`
--

INSERT INTO `jos_xtreedetails` (`id`, `sponsor_id`, `introducer_id`, `pin_id`, `kit_id`, `adcrd_id`, `PV`, `BV`, `RP`, `SessionPairPV`, `MidSessionPairPV`, `ClosingPairPV`, `TotalPairPV`, `SessionPairBV`, `MidSessionBV`, `ClosingBV`, `TotalBV`, `SessionPairRP`, `MidSessionPairRP`, `ClosingPairRP`, `TotalPairRP`, `SessionIntros`, `SessionIntroductionAmount`, `MidSessionIntros`, `ClosingIntros`, `TotalIntroduces`, `TotalIntroductionAmount`, `SessionGreenCount`, `MidSessionGreenCount`, `ClosingGreenCount`, `TotalGreenCount`, `SessionCount`, `MidSessionCount`, `ClosingCount`, `TotalCount`, `LastClosingCarryAmount`, `IntroductionIncome`, `BinaryIncomeFromIntrosShare`, `RMB`, `LevelIncome1`, `LevelIncome2`, `LevelIncome3`, `LevelIncome4`, `LevelIncome5`, `LevelIncome6`, `LevelIncome7`, `LevelIncome8`, `LevelIncome9`, `LevelIncome10`, `RoyaltyIncome`, `SurveyIncome`, `ClosingAmount`, `TotalClosingAmount`, `ClosingTDSAmount`, `TotalTDSAmount`, `ClosingServiceCharge`, `OtherDeductions`, `ClosingUpgradationDeduction`, `TotalUpgradationDeduction`, `OtherDeductionRemarks`, `FirstPayoutDeduction`, `ClosingAmountNet`, `ClosingCarriedAmount`, `Path`, `GreenDate`, `Counted`, `SessionNewJoining`, `MidSessionNewJoining`, `ClosingNewJoining`, `JoiningDate`, `jid`, `published`, `temp1`) VALUES
(1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, '0', '0000-00-00', 0, 0, 0, 0, '2013-04-01', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_xxbvslab`
--

CREATE TABLE IF NOT EXISTS `jos_xxbvslab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xxcategory`
--

CREATE TABLE IF NOT EXISTS `jos_xxcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_xxcategory`
--

INSERT INTO `jos_xxcategory` (`id`, `name`) VALUES
(1, 'Health Care'),
(2, 'Electronics'),
(3, 'Insurance'),
(4, 'FMCG'),
(5, 'House Hold'),
(6, 'Garments');

-- --------------------------------------------------------

--
-- Table structure for table `jos_xxgroups`
--

CREATE TABLE IF NOT EXISTS `jos_xxgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `head_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `Path` text,
  `pos_id` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_jos_xxgroups_jos_xxpos1` (`pos_id`) USING BTREE,
  KEY `fk_jos_xxgroups_jos_xxheads1` (`head_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=29 ;

--
-- Dumping data for table `jos_xxgroups`
--

INSERT INTO `jos_xxgroups` (`id`, `name`, `head_id`, `group_id`, `Path`, `pos_id`, `lft`, `rgt`) VALUES
(1, 'root', NULL, NULL, NULL, NULL, 0, 55),
(2, 'Capital Account', 1, NULL, NULL, NULL, 1, 2),
(3, 'Bank OD', 2, NULL, NULL, NULL, 3, 4),
(4, 'Bank CC', 2, NULL, NULL, NULL, 5, 6),
(5, 'Bank Loan', 1, NULL, NULL, NULL, 7, 8),
(6, 'Secured Loan', 1, NULL, NULL, NULL, 9, 10),
(7, 'Un Secured Loan', 2, NULL, NULL, NULL, 11, 12),
(8, 'Sundry Creditors', 3, NULL, NULL, NULL, 13, 16),
(9, 'Duties And Taxes', 3, NULL, NULL, NULL, 17, 18),
(10, 'Provisions', 3, NULL, NULL, NULL, 19, 20),
(11, 'Suspance', 4, NULL, NULL, NULL, 21, 22),
(12, 'Branches And Divisions', 5, NULL, NULL, NULL, 23, 24),
(13, 'Fixed Assets', 6, NULL, NULL, NULL, 25, 26),
(14, 'Investments', 7, NULL, NULL, NULL, 27, 28),
(15, 'Closing Stocks', 8, NULL, NULL, NULL, 29, 30),
(16, 'Current Assets', 8, NULL, NULL, NULL, 31, 34),
(17, 'Loan And Advances (Assets)', 8, NULL, NULL, NULL, 35, 36),
(18, 'Sundry Debtors', 8, NULL, NULL, NULL, 37, 38),
(19, 'Bank Accounts', 8, NULL, NULL, NULL, 39, 40),
(20, 'Direct Expenses', 10, NULL, NULL, NULL, 41, 42),
(21, 'In Direct Expenses', 11, NULL, NULL, NULL, 43, 44),
(22, 'Direct Income', 12, NULL, NULL, NULL, 45, 46),
(23, 'In Direct Income', 13, NULL, NULL, NULL, 47, 48),
(24, 'Purchase Account', 14, NULL, NULL, NULL, 49, 50),
(25, 'Sales Account', 15, NULL, NULL, NULL, 51, 52),
(26, 'Distributors', 3, 8, NULL, NULL, 14, 15),
(27, 'Loans (Liability)', 2, NULL, NULL, NULL, 53, 54),
(28, 'Cash Group', 8, 16, NULL, NULL, 32, 33);

-- --------------------------------------------------------

--
-- Table structure for table `jos_xxheads`
--

CREATE TABLE IF NOT EXISTS `jos_xxheads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `type` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `isPANDL` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=16 ;

--
-- Dumping data for table `jos_xxheads`
--

INSERT INTO `jos_xxheads` (`id`, `name`, `type`, `isPANDL`) VALUES
(1, 'Capital Account', 'Liability', 0),
(2, 'Loans (Liability)', 'Liability', 0),
(3, 'Current Liabilities', 'Liability', 0),
(4, 'Suspance Account', 'Liability', 0),
(5, 'Branch And Division', 'Liability', 0),
(6, 'Fixed Assets', 'Asset', 0),
(7, 'Investements', 'Asset', 0),
(8, 'Current Assets', 'Asset', 0),
(9, 'Loans And Advances (Assets)', 'Asset', 0),
(10, 'Direct Expenses', 'P&L', 1),
(11, 'InDirect Expenses', 'P&L', 1),
(12, 'Direct Income', 'P&L', 1),
(13, 'InDirect Income', 'P&L', 1),
(14, 'Purchase Account', 'P&L', 1),
(15, 'Sales Account', 'P&L', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_xxitems`
--

CREATE TABLE IF NOT EXISTS `jos_xxitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `LastPurchasePrice` float DEFAULT NULL,
  `DP` float DEFAULT NULL,
  `MRP` float DEFAULT NULL,
  `DealerPrice` float DEFAULT NULL,
  `RetailerPrice` float DEFAULT NULL,
  `Unit` varchar(45) DEFAULT NULL,
  `BV` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_jos_xxitems_jos_xxcategory1` (`category_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_xxitems`
--

INSERT INTO `jos_xxitems` (`id`, `name`, `category_id`, `LastPurchasePrice`, `DP`, `MRP`, `DealerPrice`, `RetailerPrice`, `Unit`, `BV`) VALUES
(1, 'Foce Watch', 2, NULL, 0, 0, 0, 0, 'Pcs', 0),
(2, 'Bio Magnatic Bracelet', 1, NULL, 0, 0, 0, 0, 'Pcs', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_xxkititems`
--

CREATE TABLE IF NOT EXISTS `jos_xxkititems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kit_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_xxkititems`
--

INSERT INTO `jos_xxkititems` (`id`, `kit_id`, `item_id`, `Qty`) VALUES
(1, 1, 1, 1),
(2, 36, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_xxkitledgers`
--

CREATE TABLE IF NOT EXISTS `jos_xxkitledgers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kit_id` int(11) DEFAULT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  `Amount` float(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_xxkitledgers`
--

INSERT INTO `jos_xxkitledgers` (`id`, `kit_id`, `ledger_id`, `Amount`) VALUES
(1, 1, 16, 3100.00),
(2, 36, 17, 3100.00);

-- --------------------------------------------------------

--
-- Table structure for table `jos_xxkittransfers`
--

CREATE TABLE IF NOT EXISTS `jos_xxkittransfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kit_id` int(11) DEFAULT NULL,
  `from_ledger_id` int(11) DEFAULT NULL,
  `to_ledger_id` int(11) DEFAULT NULL,
  `no_of_kits` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `is_completed` tinyint(1) DEFAULT NULL,
  `Transfered` int(11) DEFAULT NULL,
  `Transfered_on` datetime DEFAULT NULL,
  `Accepted_Received` tinyint(4) DEFAULT '0',
  `pos_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_xxkittransfers`
--

INSERT INTO `jos_xxkittransfers` (`id`, `kit_id`, `from_ledger_id`, `to_ledger_id`, `no_of_kits`, `order_date`, `is_completed`, `Transfered`, `Transfered_on`, `Accepted_Received`, `pos_id`) VALUES
(1, 1, 1, 17, 1, '2013-04-06 00:00:00', 0, 0, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_xxledgers`
--

CREATE TABLE IF NOT EXISTS `jos_xxledgers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `distributor_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `pos_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `default_account` tinyint(1) DEFAULT NULL,
  `items_id` int(11) DEFAULT NULL,
  `ledger_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_jos_xxledgers_jos_xxgroups1` (`group_id`) USING BTREE,
  KEY `fk_jos_xxledgers_jos_xxpos1` (`pos_id`) USING BTREE,
  KEY `fk_jos_xxledgers_jos_xxstaff1` (`staff_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=18 ;

--
-- Dumping data for table `jos_xxledgers`
--

INSERT INTO `jos_xxledgers` (`id`, `name`, `created_at`, `updated_at`, `distributor_id`, `group_id`, `pos_id`, `staff_id`, `default_account`, `items_id`, `ledger_type`) VALUES
(1, 'pos_COMPANY POS', '2013-04-09 00:00:00', '2013-04-09 00:00:00', 1, 12, NULL, NULL, 1, NULL, NULL),
(2, 'Cash', '2013-04-09 00:00:00', '2013-04-09 00:00:00', NULL, 28, NULL, NULL, 1, NULL, NULL),
(3, 'Discount Allowed', '2013-04-09 00:00:00', '2013-04-09 00:00:00', NULL, 21, NULL, NULL, 1, NULL, NULL),
(4, 'Discount Received', '2013-04-09 00:00:00', '2013-04-09 00:00:00', NULL, 23, NULL, NULL, 1, NULL, NULL),
(5, 'Purchase Account', '2013-04-09 00:00:00', '2013-04-09 00:00:00', NULL, 24, NULL, NULL, 1, NULL, NULL),
(6, 'Sales Account', '2013-04-09 00:00:00', '2013-04-09 00:00:00', NULL, 25, NULL, NULL, 1, NULL, NULL),
(7, 'TDS', '2013-04-09 00:00:00', '2013-04-09 00:00:00', NULL, 9, NULL, NULL, 1, NULL, NULL),
(8, 'Commission', '2013-04-09 00:00:00', '2013-04-09 00:00:00', NULL, 20, NULL, NULL, 1, NULL, NULL),
(9, 'Service Tax Payable', '2013-04-09 00:00:00', '2013-04-09 00:00:00', NULL, 9, NULL, NULL, 1, NULL, NULL),
(10, 'XYZ Bank Account', '2013-04-09 00:00:00', '2013-04-09 00:00:00', NULL, 19, NULL, NULL, 1, NULL, NULL),
(11, 'Service Charge', '2013-04-09 00:00:00', '2013-04-09 00:00:00', NULL, 23, NULL, NULL, 1, NULL, NULL),
(12, 'Other Deductions', '2013-04-09 00:00:00', '2013-04-09 00:00:00', NULL, 23, NULL, NULL, 1, NULL, NULL),
(13, 'First Payout Deduction', '2013-04-09 00:00:00', '2013-04-09 00:00:00', NULL, 27, NULL, NULL, 1, NULL, NULL),
(14, 'Upgradation Deduction', '2013-04-09 00:00:00', '2013-04-09 00:00:00', NULL, 27, NULL, NULL, 1, NULL, NULL),
(15, '1 root distributor', '2013-04-09 16:24:32', '2013-04-09 16:24:32', 1, 26, NULL, NULL, 1, NULL, NULL),
(16, 'Foce Watch Sales Ledger', '2013-04-09 00:00:00', '2013-04-09 00:00:00', NULL, 25, NULL, NULL, 1, NULL, NULL),
(17, 'Bio Magnatic Sales Ledger', '2013-04-09 00:00:00', '2013-04-09 00:00:00', NULL, 25, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_xxpos`
--

CREATE TABLE IF NOT EXISTS `jos_xxpos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_xxpos`
--

INSERT INTO `jos_xxpos` (`id`, `name`, `owner_id`, `type`, `ledger_id`) VALUES
(1, 'COMPANY POS', 1, 'Company', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_xxsalarymaster`
--

CREATE TABLE IF NOT EXISTS `jos_xxsalarymaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Pairs` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Months` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xxstaff`
--

CREATE TABLE IF NOT EXISTS `jos_xxstaff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `pos_id` int(11) DEFAULT '0',
  `AccessLevel` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_jos_xxstaff_jos_xxpos` (`pos_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_xxstaff`
--

INSERT INTO `jos_xxstaff` (`id`, `name`, `username`, `password`, `pos_id`, `AccessLevel`) VALUES
(1, 'COMPANY POS_SUPER_STAFF', 'pos_1_admin', 'admin', 1, '1000'),
(2, 'alcladmin', 'alcladmin', 'alcladmin', 0, '1000');

-- --------------------------------------------------------

--
-- Table structure for table `jos_xxstocks`
--

CREATE TABLE IF NOT EXISTS `jos_xxstocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `Stock` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xxvoucherdetails`
--

CREATE TABLE IF NOT EXISTS `jos_xxvoucherdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) DEFAULT NULL,
  `pos_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `Rate` float DEFAULT NULL,
  `Qty` float DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xxvouchers`
--

CREATE TABLE IF NOT EXISTS `jos_xxvouchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ledger_id` int(11) DEFAULT NULL,
  `pos_id` int(11) DEFAULT NULL,
  `AmountCR` float(11,2) DEFAULT NULL,
  `AmountDR` float(11,2) DEFAULT NULL,
  `VoucherNo` int(11) DEFAULT NULL,
  `Narration` text,
  `VoucherType` varchar(45) DEFAULT NULL,
  `RefAccount` int(11) DEFAULT NULL,
  `has_details` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `entry_side` varchar(2) DEFAULT NULL,
  `entry_count_in_side` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `VoucherNo` (`VoucherNo`),
  KEY `VoucherType` (`VoucherType`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=8 ;

--
-- Dumping data for table `jos_xxvouchers`
--

INSERT INTO `jos_xxvouchers` (`id`, `ledger_id`, `pos_id`, `AmountCR`, `AmountDR`, `VoucherNo`, `Narration`, `VoucherType`, `RefAccount`, `has_details`, `created_at`, `entry_side`, `entry_count_in_side`) VALUES
(1, 1, 1, 0.00, 100.00, 1, 'Joining of 1', 'SALES', 1, 0, '2013-04-01 00:00:00', 'DR', 1),
(2, 15, 1, 0.00, 100.00, 2, 'Joining of 1', 'SALES', 15, 0, '2013-04-01 00:00:00', 'DR', 1),
(4, 1, 1, 100.00, 0.00, 1, 'Received on 2013-04-01', 'RECEIPT', 1, 0, '2013-04-01 00:00:00', 'CR', 1),
(5, 22, 1, 0.00, 100.00, 1, 'Received on 2013-04-01', 'RECEIPT', 1, 0, '2013-04-01 00:00:00', 'DR', 1),
(6, 15, 1, 100.00, 0.00, 2, 'Received on 2013-04-01', 'RECEIPT', 15, 0, '2013-04-01 00:00:00', 'CR', 1),
(7, 22, 1, 0.00, 100.00, 2, 'Received on 2013-04-01', 'RECEIPT', 15, 0, '2013-04-01 00:00:00', 'DR', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
