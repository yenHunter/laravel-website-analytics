-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 06:11 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_apps`
--

-- --------------------------------------------------------

--
-- Table structure for table `district_list`
--

CREATE TABLE `district_list` (
  `districtID` int(11) NOT NULL,
  `divisionID` int(11) NOT NULL,
  `districtCode` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `districtName_EN` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `districtName_BN` varchar(100) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district_list`
--

INSERT INTO `district_list` (`districtID`, `divisionID`, `districtCode`, `districtName_EN`, `districtName_BN`, `createdBy`, `updatedBy`, `lastUpdated`) VALUES
(1, 1, '26', 'Dhaka', 'ঢাকা', 0, 0, '2022-11-06 03:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `division_list`
--

CREATE TABLE `division_list` (
  `divisionID` int(11) NOT NULL,
  `divisionCode` varchar(10) NOT NULL,
  `divisionName_EN` varchar(50) NOT NULL,
  `divisionName_BN` varchar(100) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `division_list`
--

INSERT INTO `division_list` (`divisionID`, `divisionCode`, `divisionName_EN`, `divisionName_BN`, `createdBy`, `updatedBy`, `lastUpdated`) VALUES
(1, '30', 'Dhaka', 'ঢাকা', 0, 0, '2022-11-06 03:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `farming_activity`
--

CREATE TABLE `farming_activity` (
  `f_activityID` int(11) NOT NULL,
  `upazilaID` int(11) NOT NULL,
  `officerTraining` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `khamariTraining` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `portalUpdate` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `fieldLevel_validation` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `remarks` varchar(5000) CHARACTER SET utf8mb4 NOT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gis_activity`
--

CREATE TABLE `gis_activity` (
  `g_activityID` int(11) NOT NULL,
  `upazilaID` int(11) NOT NULL,
  `scanMap_status` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `sopSol_prepare` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `chemicalData_review` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `chemicalData_join` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `sopSol_upload` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `demData_upload` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `edaphicLayer_process` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `suitabilityAssessment` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `lulc_prepare` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `incorporateSop` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `uploadLulc` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `remarks` varchar(5000) CHARACTER SET utf8mb4 NOT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mouza_list`
--

CREATE TABLE `mouza_list` (
  `mouzaID` int(11) NOT NULL,
  `upazilaID` int(11) NOT NULL,
  `unionID` int(11) NOT NULL,
  `mouzaCode` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `mouzaName` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `socio_activity`
--

CREATE TABLE `socio_activity` (
  `se_activityID` int(11) NOT NULL,
  `upazilaID` int(11) NOT NULL,
  `surveyStatus` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `dataEditing` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `dataAnalysis_crop` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `dataAnalysis_pattern` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `dataEntry_czis` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `dataChecking_czis` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `remarks` varchar(5000) CHARACTER SET utf8mb4 NOT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `soil_activity`
--

CREATE TABLE `soil_activity` (
  `s_activityID` int(11) NOT NULL,
  `upazilaID` int(11) NOT NULL,
  `nirdeshikaCollect` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `mapReview` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `coddingPreparation` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `coddingReview` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `coddingUpload` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `dataPreparation` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `dataReview` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `fertilizerRecommendation` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `suitabilityAssessment` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `suitabilityMap` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `remarks` varchar(5000) CHARACTER SET utf8mb4 NOT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `soil_chemical_datas`
--

CREATE TABLE `soil_chemical_datas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `propertyID` int(11) DEFAULT NULL,
  `sampleLocation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mappingUnit` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soilSeries` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soilGroup` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texture` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salinity` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pH` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchangableAcidity` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organicMatter` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nitrogen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phosphorusOlson` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phosphorusBre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `potassium` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sulfur` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zinc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boron` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calcium` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `magnesium` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copper` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iron` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manganese` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `molybdenum` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cadmium` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chromium` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `lastUpdated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `soil_chemical_datas`
--

INSERT INTO `soil_chemical_datas` (`id`, `propertyID`, `sampleLocation`, `mappingUnit`, `latitude`, `longitude`, `landType`, `soilSeries`, `soilGroup`, `texture`, `salinity`, `pH`, `exchangableAcidity`, `organicMatter`, `nitrogen`, `phosphorusOlson`, `phosphorusBre`, `potassium`, `sulfur`, `zinc`, `boron`, `calcium`, `magnesium`, `copper`, `iron`, `manganese`, `molybdenum`, `lead`, `cadmium`, `nickel`, `chromium`, `remarks`, `createdBy`, `updatedBy`, `lastUpdated`) VALUES
(1, 6, '1', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '6.59', '0', '1.78', '0.09', '6.82', '0', '0.09', '4.5', '0.42', '0.18', '8.87', '2.24', '2.13', '55.81', '29.55', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(2, 6, '4', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '5.53', '0', '1.78', '0.09', '0', '11.33', '0.37', '49.43', '0.81', '0.13', '4.46', '1.25', '0.78', '138.6', '26.35', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(3, 6, '6', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '6.44', '0', '2.47', '0.12', '0', '7.58', '0.15', '9.25', '1.64', '0.94', '10', '2.4', '3.4', '71.86', '35.92', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(4, 6, '23', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '6.4', '0', '2.2', '0.11', '0', '2.3', '0.09', '4.61', '0.4', '0.18', '8.51', '2.22', '2.82', '92.7', '43.92', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(5, 6, '25', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '5.9', '0', '2.4', '0.12', '0', '30.23', '0.13', '9.3', '0.52', '0.13', '4.45', '1.98', '2.21', '118.1', '31.74', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(6, 6, '26', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '7.3', '0', '1.23', '0.06', '4.58', '0', '0.09', '2.59', '0.25', '0.13', '6.5', '2.33', '0.79', '22.5', '10.19', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(7, 6, '31', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '6.35', '0', '3.09', '0.15', '0', '2.6', '0.19', '5.09', '0.45', '0.21', '6.51', '2.42', '2.64', '63.11', '16.57', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(8, 6, '32', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '6.1', '0', '3.09', '0.15', '0', '16.8', '0.11', '61.1', '1.08', '0.13', '6.23', '2.31', '2.77', '226', '41.53', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(9, 6, '33', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '6.25', '0', '2.68', '0.13', '0', '19.33', '0.08', '11.5', '1.02', '0.62', '4.87', '1.94', '1.07', '92.7', '24.41', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(10, 6, '34', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '5.77', '0', '1.99', '0.1', '0', '14.8', '0.15', '10.57', '0.89', '0.18', '3.87', '2.03', '2.06', '189.2', '59.18', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(11, 6, '40', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '6.76', '0', '2.68', '0.13', '13.04', '0', '0.09', '9.5', '0.85', '0.65', '6.56', '2.46', '3.05', '85.54', '34.21', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(12, 6, '41', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '6.94', '0', '3.3', '0.16', '13.2', '0', '0.09', '15.41', '1.22', '0.12', '4.7', '2.05', '1.43', '65.81', '17.61', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(13, 6, '51', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '7.3', '0', '2.13', '0.11', '4.44', '0', '0.07', '5.6', '0.32', '0.68', '5.19', '2.12', '1.68', '39', '19.83', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(14, 6, '52', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '6.2', '0', '1.99', '0.1', '0', '6.11', '0.09', '10.93', '0.58', '0.16', '4.86', '2.13', '1.69', '114', '61.94', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(15, 6, '58', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '5.89', '0', '2.06', '0.1', '0', '25.02', '0.15', '2.89', '0.84', '0.36', '4.79', '1.92', '2.31', '189.6', '26.68', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(16, 6, '61', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '6.71', '0', '1.51', '0.08', '12.2', '0', '0.11', '20.14', '0.41', '0.17', '5.23', '2.11', '4.07', '113.7', '27.98', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(17, 6, '62', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '5.74', '0', '2.54', '0.13', '0', '10.53', '0.12', '17.33', '3.4', '0.15', '3.63', '1.57', '1.06', '144.9', '53.19', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(18, 6, '64', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '6.63', '0', '2.2', '0.11', '5.8', '0', '0.08', '9.78', '0.38', '0.35', '3.53', '1.58', '1.46', '55.2', '26.18', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(19, 6, '65', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '6.52', '0', '2.88', '0.14', '0', '11.42', '0.12', '12.45', '0.49', '0.36', '5.79', '2.24', '1.68', '200.7', '25.44', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(20, 6, '67', '1', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '6.32', '0', '2.68', '0.13', '0', '16.14', '0.1', '9.76', '1.25', '0.32', '5.92', '2.36', '2.23', '84.91', '23.88', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(21, 6, '8', '1', NULL, NULL, 'MHL', 'Silmandi', '1941', 'Clay Loam', '0', '7.41', '0', '1.99', '0.1', '8.23', '0', '0.1', '6.43', '0.32', '0.24', '6.73', '2.35', '1.43', '20.57', '25.94', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(22, 6, '12', '1', NULL, NULL, 'MHL', 'Silmandi', '1941', 'Clay Loam', '0', '7.47', '0', '2.06', '0.1', '6.2', '0', '0.1', '9.96', '0.29', '0.15', '7.5', '2.22', '2.49', '40.72', '26.98', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(23, 6, '69', '1', NULL, NULL, 'MHL', 'Silmandi', '1941', 'Clay Loam', '0', '6.21', '0', '2.33', '0.12', '0', '10.4', '0.09', '14.37', '0.44', '0.3', '4.51', '1.52', '1.62', '79.56', '20.3', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(24, 6, '10', '2', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '5.52', '0', '3.1', '0.15', '0', '4.85', '0.1', '5.34', '0.68', '0.08', '6.27', '2', '2.03', '132', '20.42', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(25, 6, '22', '2', NULL, NULL, 'HL', 'Sonatala', '1954', 'Loam', '0', '6.8', '0', '2.33', '0.12', '3.42', '0', '0.13', '10.91', '0.32', '0.38', '7.38', '2.43', '2.6', '39.2', '17.06', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(26, 6, '5', '2', NULL, NULL, 'HL', 'Tarakanda', '2004', 'Sandy Loam', '0', '7.15', '0', '2.33', '0.12', '4.03', '0', '0.07', '9.06', '0.28', '0.51', '3.82', '1.73', '1.44', '53.87', '14.15', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(27, 6, '11', '2', NULL, NULL, 'HL', 'Tarakanda', '2004', 'Sandy Loam', '0', '5.9', '0', '2.68', '0.12', '0', '4.8', '0.09', '25.7', '0.41', '0.14', '3', '2.08', '2.3', '122.7', '11.89', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(28, 6, '3', '2', NULL, NULL, 'MHL', 'Sonatala', '1954', 'Loam', '0', '6.56', '0', '2.33', '0.12', '3.45', '0', '0.16', '17.57', '0.53', '0.32', '4.63', '2.03', '2.52', '91.29', '66.99', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(29, 6, '18', '2', NULL, NULL, 'MHL', 'Tarakanda', '2004', 'Sandy Loam', '0', '5.6', '0', '2.33', '0.12', '0', '8.23', '0.11', '5.02', '0.68', '0.19', '3.55', '1.99', '1.81', '159.4', '43.15', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(30, 6, '2', '3', NULL, NULL, 'MHL', 'Sonatala', '1954', 'Loam', '0', '7.22', '0', '2.4', '0.12', '6.7', '0', '0.1', '5.1', '0.39', '0.4', '5.6', '2.17', '1.6', '51.19', '24.15', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(31, 6, '7', '3', NULL, NULL, 'MHL', 'Sonatala', '1954', 'Loam', '0', '7.28', '0', '2.33', '0.12', '14.01', '0', '0.11', '3.9', '0.39', '0.28', '5.95', '2.24', '2.95', '91.91', '31.38', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(32, 6, '9', '3', NULL, NULL, 'MHL', 'Sonatala', '1954', 'Loam', '0', '6.9', '0', '2.33', '0.12', '4.49', '0', '0.07', '1.2', '0.31', '0.17', '6.76', '2.36', '1.9', '54.87', '23.84', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(33, 6, '29', '3', NULL, NULL, 'MHL', 'Sonatala', '1954', 'Loam', '0', '6.56', '0', '2.75', '0.12', '2.14', '0', '0.08', '3.3', '0.42', '0.68', '5.19', '1.97', '1.88', '77.88', '39.08', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(34, 6, '35', '3', NULL, NULL, 'MHL', 'Sonatala', '1954', 'Loam', '0', '7.05', '0', '1.78', '0.09', '29.08', '0', '0.1', '5.6', '0.54', '0.81', '5.63', '2.23', '0.9', '30.58', '24.45', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(35, 6, '48', '3', NULL, NULL, 'MHL', 'Sonatala', '1954', 'Loam', '0', '6.2', '0', '3.06', '0.15', '0', '2.46', '0.09', '5.5', '0.46', '0.17', '8.52', '2.33', '3.01', '58.12', '15.26', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(36, 6, '53', '3', NULL, NULL, 'MHL', 'Sonatala', '1954', 'Loam', '0', '6.7', '0', '2.82', '0.14', '2.66', '0', '0.07', '4.58', '0.4', '0.15', '5.7', '2.01', '2.15', '85.07', '25.41', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(37, 6, '54', '3', NULL, NULL, 'MHL', 'Sonatala', '1954', 'Loam', '0', '7.17', '0', '2.78', '0.14', '6.26', '0', '0.12', '7.5', '0.48', '0.46', '8.54', '2.48', '3.53', '59.1', '20.82', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(38, 6, '68', '3', NULL, NULL, 'MHL', 'Sonatala', '1954', 'Loam', '0', '6.7', '0', '2.26', '0.11', '25.35', '0', '0.08', '9.1', '0.67', '0.2', '7.25', '2.38', '1.88', '97.2', '22.32', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(39, 6, '17', '3', NULL, NULL, 'MHL', 'Silmandi', '1941', 'Clay Loam', '0', '7.17', '0', '3.07', '0.15', '3.85', '0', '0.09', '14.53', '0.52', '0.23', '7.96', '2.46', '2.68', '76.29', '22.35', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(40, 6, '19', '3', NULL, NULL, 'MHL', 'Silmandi', '1941', 'Clay Loam', '0', '7.14', '0', '3.1', '0.15', '2.67', '0', '0.07', '2.62', '0.27', '0.84', '5.1', '2.12', '2.05', '76.46', '18.31', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(41, 6, '39', '3', NULL, NULL, 'MHL', 'Silmandi', '1941', 'Clay Loam', '0', '7.21', '0', '2.78', '0.14', '3.55', '0', '0.08', '10.62', '0.44', '0.18', '5.89', '2.13', '1.64', '70.32', '14.68', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(42, 6, '16', '3', NULL, NULL, 'MHL', 'Lokdeo', '1208', 'Clay Loam', '0', '7.38', '0', '2.4', '0.12', '3.61', '0', '0.11', '10.78', '0.42', '0.21', '5.53', '2.05', '2.09', '58.58', '17.59', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(43, 6, '36', '3', NULL, NULL, 'MHL', 'Lokdeo', '1208', 'Clay Loam', '0', '6.2', '0', '3.1', '0.15', '0', '1.41', '0.13', '4.39', '0.47', '0.23', '6.38', '2.21', '3.22', '157.1', '27.02', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(44, 6, '55', '3', NULL, NULL, 'MLL', 'Lokdeo', '1208', 'Clay Loam', '0', '7.4', '0', '1.71', '0.09', '9.62', '0', '0.13', '23.36', '0.42', '0.24', '7.52', '2.4', '1.42', '26.92', '21.75', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(45, 6, '66', '3', NULL, NULL, 'MLL', 'Lokdeo', '1208', 'Clay Loam', '0', '6.8', '0', '2.4', '0.14', '2.63', '0', '0.11', '13.7', '0.43', '0.27', '6.51', '2.02', '3.01', '76.71', '27.55', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(46, 6, '46', '4', NULL, NULL, 'MHL', 'Lokdeo', '1208', 'Clay Loam', '0', '6.77', '0', '3.07', '0.15', '2.21', '0', '0.11', '21.24', '0.67', '0.25', '8.71', '2.37', '3.8', '112.5', '22.12', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(47, 6, '45', '4', NULL, NULL, 'MLL', 'Ghatail', '712', 'Clay Loam', '0', '7.55', '0', '3.09', '0.15', '2.92', '0', '0.1', '10.17', '0.32', '0.34', '8.68', '2.54', '1.78', '47.11', '18.27', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(48, 6, '47', '4', NULL, NULL, 'MLL', 'Ghatail', '712', 'Clay Loam', '0', '6.56', '0', '2.74', '0.14', '2.17', '0', '0.11', '2.35', '0.42', '0.46', '10.74', '2.55', '5.52', '115.8', '5.39', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(49, 6, '44', '5', NULL, NULL, 'MLL', 'Silmandi', '1941', 'Clay Loam', '0', '7.13', '0', '2.01', '0.1', '8.68', '0', '0.15', '24.14', '0.31', '0.13', '5.69', '2.13', '2.85', '90', '20.86', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(50, 6, '20', '5', NULL, NULL, 'MLL', 'Lokdeo', '1208', 'Clay Loam', '0', '7.42', '0', '2.74', '0.14', '3.06', '0', '0.11', '25.27', '0.26', '0.14', '8.55', '2.32', '2.69', '53.03', '8.98', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(51, 6, '21', '5', NULL, NULL, 'MLL', 'Lokdeo', '1208', 'Clay Loam', '0', '6.86', '0', '2.01', '0.1', '3.27', '0', '0.09', '27.68', '0.31', '0.17', '4.21', '1.91', '2.33', '80.51', '12.33', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(52, 6, '56', '5', NULL, NULL, 'LL', 'Ghorargaon', '720', 'Clay Loam', '0', '7.08', '0', '2.78', '0.14', '3.75', '0', '0.13', '9.06', '0.35', '0.15', '6.77', '2.39', '3.78', '86.44', '31.92', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(53, 6, '30', '6', NULL, NULL, 'LL', 'Ghatail', '712', 'Clay Loam', '0', '6.3', '0', '3.09', '0.15', '0', '2.51', '0.11', '23.8', '0.49', '0.27', '8.92', '2.48', '4.75', '64.91', '50.13', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(54, 6, '24', '6', NULL, NULL, 'LL', 'Balina', '212', 'Clay ', '0', '7.24', '0', '2.05', '0.1', '2.44', '0', '0.09', '19.81', '0.33', '0.32', '10.24', '2.29', '2', '43.22', '28.97', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(55, 6, '59', '6', NULL, NULL, 'LL', 'Balina', '212', 'Clay ', '0', '7.2', '0', '2.4', '0.12', '2.98', '0', '0.17', '21.39', '0.31', '0.38', '8.73', '2.45', '4.1', '65.28', '16.82', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(56, 6, '13', '7', NULL, NULL, 'HL', 'Melandaha', '1323', 'Loam', '0', '6.72', '0', '2.33', '0.12', '4.7', '0', '0.12', '23.33', '0.5', '0.13', '6.33', '1.95', '1.82', '48.45', '59.68', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(57, 6, '15', '7', NULL, NULL, 'MHL', 'Melandaha', '1323', 'Loam', '0', '5.9', '0', '2.68', '0.13', '0', '7.9', '0.16', '9.4', '0.4', '0.13', '6.24', '1.95', '1.82', '51.6', '45.53', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(58, 6, '37', '7', NULL, NULL, 'MHL', 'Melandaha', '1323', 'Loam', '0', '6.2', '0', '2.2', '0.11', '0', '11.65', '0.13', '10.89', '0.51', '0.52', '5.97', '2', '1.91', '88.23', '52.65', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(59, 6, '57', '7', NULL, NULL, 'MHL', 'Melandaha', '1323', 'Loam', '0', '5.8', '0', '2.33', '0.12', '0', '12.78', '0.15', '17.4', '0.83', '0.4', '8.07', '2.16', '2.55', '63.91', '54.02', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(60, 6, '50', '7', NULL, NULL, 'MHL', 'Dhamrai', '440', 'Clay Loam', '0', '5.4', '0', '2.33', '0.12', '0', '5.57', '0.14', '26.37', '0.45', '0.28', '5.75', '2.13', '2.11', '80.16', '48.01', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(61, 6, '38', '8', NULL, NULL, 'MHL', 'Melandaha', '1323', 'Loam', '0', '5.65', '0', '2.33', '0.12', '0', '3.4', '0.14', '21.39', '0.43', '0.16', '4.58', '1.91', '2.29', '90', '34.27', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(62, 6, '28', '8', NULL, NULL, 'MHL', 'Dhamrai', '440', 'Clay Loam', '0', '5.55', '0', '2.4', '0.12', '0', '5.35', '0.11', '20.86', '0.44', '0.12', '5.1', '1.86', '3.08', '101.1', '24.57', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(63, 6, '14', '8', NULL, NULL, 'MLL', 'Dhamrai', '440', 'Clay Loam', '0', '7.45', '0', '2.4', '0.12', '9.31', '0', '0.15', '23.08', '0.44', '0.22', '9.01', '2.16', '2.97', '42.69', '15.16', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(64, 6, '49', '8', NULL, NULL, 'MLL', 'Dhamrai', '440', 'Clay Loam', '0', '5.9', '0', '2.47', '0.12', '0', '5.6', '0.16', '22.16', '0.46', '0.14', '6.79', '2.05', '3.83', '116', '46.1', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(65, 6, '27', '8', NULL, NULL, 'MLL', 'Brahmmaputra Silty Alluvium', '1943', 'Loam', '0', '5.91', '0', '2.06', '0.1', '0', '14.88', '0.2', '11.6', '0.49', '0.35', '4.25', '1.65', '1.43', '71.56', '23.82', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(66, 6, '42', '8', NULL, NULL, 'MLL', 'Brahmmaputra Silty Alluvium', '1943', 'Loam', '0', '6.3', '0', '2.54', '0.13', '0', '5.95', '0.15', '14.95', '0.61', '0.3', '7.04', '2.12', '2.68', '63.39', '39.44', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(67, 6, '43', '8', NULL, NULL, 'MLL', 'Brahmmaputra Silty Alluvium', '1943', 'Loam', '0', '5.6', '0', '1.51', '0.08', '0', '9.39', '0.14', '3.04', '0.55', '0.16', '3.8', '1.37', '0.95', '34.08', '13.37', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(68, 6, '60', '8', NULL, NULL, 'MLL', 'Brahmmaputra Silty Alluvium', '1943', 'Loam', '0', '6.8', '0', '2.75', '0.13', '2.93', '0', '0.12', '15.14', '0.4', '0.27', '8.83', '2.38', '3.21', '28.63', '22.47', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12'),
(69, 6, '63', '8', NULL, NULL, 'MLL', 'Brahmmaputra Silty Alluvium', '1943', 'Loam', '0', '5.9', '0', '2.75', '0.13', '0', '2.63', '0.14', '11.95', '0.59', '0.09', '6.63', '2.21', '3.68', '72.87', '51.53', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-19 22:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `soil_chemical_property`
--

CREATE TABLE `soil_chemical_property` (
  `propertyID` int(11) NOT NULL,
  `upazilaID` int(11) NOT NULL,
  `productionYear` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `verificationStatus` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `verifiedBy` int(11) DEFAULT NULL,
  `verificationDate` datetime DEFAULT NULL,
  `remarks` varchar(5000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `soil_chemical_property`
--

INSERT INTO `soil_chemical_property` (`propertyID`, `upazilaID`, `productionYear`, `verificationStatus`, `verifiedBy`, `verificationDate`, `remarks`, `createdBy`, `updatedBy`, `lastUpdated`) VALUES
(6, 1, '2017', NULL, 1, NULL, NULL, 0, 0, '2022-11-06 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `union_list`
--

CREATE TABLE `union_list` (
  `unionID` int(11) NOT NULL,
  `upazilaID` int(11) NOT NULL,
  `unionCode` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `unionName_EN` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `unionName_BN` varchar(100) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `union_list`
--

INSERT INTO `union_list` (`unionID`, `upazilaID`, `unionCode`, `unionName_EN`, `unionName_BN`, `createdBy`, `updatedBy`, `lastUpdated`) VALUES
(1, 1, '40', 'Dhamrai Paurashava', 'ধামরাই পৌরসভা', 0, 0, '2022-11-06 04:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `upazila_list`
--

CREATE TABLE `upazila_list` (
  `upazilaID` int(11) NOT NULL,
  `districtID` int(11) NOT NULL,
  `upazilaCode` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `upazilaName_EN` varchar(50) NOT NULL,
  `upazilaName_BN` varchar(100) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `lastupdated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazila_list`
--

INSERT INTO `upazila_list` (`upazilaID`, `districtID`, `upazilaCode`, `upazilaName_EN`, `upazilaName_BN`, `createdBy`, `updatedBy`, `lastupdated`) VALUES
(1, 1, '14', 'Dhamrai', 'ধামরাই', 0, 0, '2022-11-06 04:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `upazila_nirdeshika`
--

CREATE TABLE `upazila_nirdeshika` (
  `nirdeshikaID` int(11) NOT NULL,
  `upazilaID` int(11) NOT NULL,
  `serialNo` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `bookYear` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `mapYear` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `publishingFund` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `czpPhase` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `remarks` varchar(5000) CHARACTER SET utf8mb4 NOT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `lastupdated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Frioz Ebna Jobaier', 'firoz.jobaier@gmail.com', '1', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district_list`
--
ALTER TABLE `district_list`
  ADD PRIMARY KEY (`districtID`),
  ADD KEY `divisionID` (`divisionID`);

--
-- Indexes for table `division_list`
--
ALTER TABLE `division_list`
  ADD PRIMARY KEY (`divisionID`);

--
-- Indexes for table `farming_activity`
--
ALTER TABLE `farming_activity`
  ADD PRIMARY KEY (`f_activityID`),
  ADD KEY `upazilaID_Far` (`upazilaID`);

--
-- Indexes for table `gis_activity`
--
ALTER TABLE `gis_activity`
  ADD PRIMARY KEY (`g_activityID`),
  ADD KEY `upazilaID_Gis` (`upazilaID`);

--
-- Indexes for table `mouza_list`
--
ALTER TABLE `mouza_list`
  ADD PRIMARY KEY (`mouzaID`),
  ADD KEY `upazilaID_Mou` (`upazilaID`),
  ADD KEY `unionID` (`unionID`);

--
-- Indexes for table `socio_activity`
--
ALTER TABLE `socio_activity`
  ADD PRIMARY KEY (`se_activityID`),
  ADD KEY `upazilaID_Soc` (`upazilaID`);

--
-- Indexes for table `soil_activity`
--
ALTER TABLE `soil_activity`
  ADD PRIMARY KEY (`s_activityID`),
  ADD KEY `upazilaID_Soi` (`upazilaID`);

--
-- Indexes for table `soil_chemical_datas`
--
ALTER TABLE `soil_chemical_datas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `propertyID` (`propertyID`);

--
-- Indexes for table `soil_chemical_property`
--
ALTER TABLE `soil_chemical_property`
  ADD PRIMARY KEY (`propertyID`),
  ADD KEY `upazilaID_scp` (`upazilaID`);

--
-- Indexes for table `union_list`
--
ALTER TABLE `union_list`
  ADD PRIMARY KEY (`unionID`),
  ADD KEY `upazilaID` (`upazilaID`);

--
-- Indexes for table `upazila_list`
--
ALTER TABLE `upazila_list`
  ADD PRIMARY KEY (`upazilaID`),
  ADD KEY `districtID` (`districtID`);

--
-- Indexes for table `upazila_nirdeshika`
--
ALTER TABLE `upazila_nirdeshika`
  ADD PRIMARY KEY (`nirdeshikaID`),
  ADD KEY `upazilaID_Nir` (`upazilaID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `district_list`
--
ALTER TABLE `district_list`
  MODIFY `districtID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `division_list`
--
ALTER TABLE `division_list`
  MODIFY `divisionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `farming_activity`
--
ALTER TABLE `farming_activity`
  MODIFY `f_activityID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gis_activity`
--
ALTER TABLE `gis_activity`
  MODIFY `g_activityID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mouza_list`
--
ALTER TABLE `mouza_list`
  MODIFY `mouzaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socio_activity`
--
ALTER TABLE `socio_activity`
  MODIFY `se_activityID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soil_activity`
--
ALTER TABLE `soil_activity`
  MODIFY `s_activityID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soil_chemical_datas`
--
ALTER TABLE `soil_chemical_datas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `soil_chemical_property`
--
ALTER TABLE `soil_chemical_property`
  MODIFY `propertyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `union_list`
--
ALTER TABLE `union_list`
  MODIFY `unionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upazila_list`
--
ALTER TABLE `upazila_list`
  MODIFY `upazilaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upazila_nirdeshika`
--
ALTER TABLE `upazila_nirdeshika`
  MODIFY `nirdeshikaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `district_list`
--
ALTER TABLE `district_list`
  ADD CONSTRAINT `divisionID` FOREIGN KEY (`divisionID`) REFERENCES `division_list` (`divisionID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `farming_activity`
--
ALTER TABLE `farming_activity`
  ADD CONSTRAINT `upazilaID_Far` FOREIGN KEY (`upazilaID`) REFERENCES `upazila_list` (`upazilaID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gis_activity`
--
ALTER TABLE `gis_activity`
  ADD CONSTRAINT `upazilaID_Gis` FOREIGN KEY (`upazilaID`) REFERENCES `upazila_list` (`upazilaID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mouza_list`
--
ALTER TABLE `mouza_list`
  ADD CONSTRAINT `unionID` FOREIGN KEY (`unionID`) REFERENCES `union_list` (`unionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upazilaID_Mou` FOREIGN KEY (`upazilaID`) REFERENCES `upazila_list` (`upazilaID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `socio_activity`
--
ALTER TABLE `socio_activity`
  ADD CONSTRAINT `upazilaID_Soc` FOREIGN KEY (`upazilaID`) REFERENCES `upazila_list` (`upazilaID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `soil_activity`
--
ALTER TABLE `soil_activity`
  ADD CONSTRAINT `upazilaID_Soi` FOREIGN KEY (`upazilaID`) REFERENCES `upazila_list` (`upazilaID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `soil_chemical_datas`
--
ALTER TABLE `soil_chemical_datas`
  ADD CONSTRAINT `propertyID` FOREIGN KEY (`propertyID`) REFERENCES `soil_chemical_property` (`propertyID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `soil_chemical_property`
--
ALTER TABLE `soil_chemical_property`
  ADD CONSTRAINT `upazilaID_scp` FOREIGN KEY (`upazilaID`) REFERENCES `upazila_list` (`upazilaID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `union_list`
--
ALTER TABLE `union_list`
  ADD CONSTRAINT `upazilaID` FOREIGN KEY (`upazilaID`) REFERENCES `upazila_list` (`upazilaID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `upazila_list`
--
ALTER TABLE `upazila_list`
  ADD CONSTRAINT `districtID` FOREIGN KEY (`districtID`) REFERENCES `district_list` (`districtID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `upazila_nirdeshika`
--
ALTER TABLE `upazila_nirdeshika`
  ADD CONSTRAINT `upazilaID_Nir` FOREIGN KEY (`upazilaID`) REFERENCES `upazila_list` (`upazilaID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
