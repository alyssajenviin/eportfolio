-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 03:15 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eportfolio_db_old`
--

-- --------------------------------------------------------

--
-- Table structure for table `checklist`
--

CREATE TABLE `checklist` (
  `id` varchar(15) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` text NOT NULL,
  `has_term` varchar(45) DEFAULT NULL,
  `per_subject` varchar(45) DEFAULT NULL,
  `per_section` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `checklist`
--

INSERT INTO `checklist` (`id`, `title`, `description`, `has_term`, `per_subject`, `per_section`, `status`, `created_at`, `updated_at`) VALUES
('CHK-0001', 'OBTLP', 'Outcome Base', NULL, NULL, NULL, 'Active', '2022-07-06 10:07:01.199044', '2022-07-06 10:07:01.199044'),
('CHK-0002', 'LEARNING MATERIALS', 'LEARNING MATERIALS', NULL, NULL, NULL, 'Active', '2022-07-06 10:32:42.831545', '2022-07-06 10:32:42.831545'),
('CHK-0003', 'ASSESSMENT TASK', 'ASSESSMENT TASK', NULL, NULL, NULL, 'Active', '2022-07-06 10:34:25.394776', '2022-07-06 10:34:25.394776'),
('CHK-0004', 'TERMS EXAMINATIONS', 'TERMS EXAMINATIONS', NULL, NULL, NULL, 'Active', '2022-07-06 10:34:45.822129', '2022-07-06 10:34:45.822129'),
('CHK-0005', 'SAMPLES CHECKED EXAM AND ASSESSMENT TASKS', 'SAMPLES CHECKED EXAM AND ASSESSMENT TASKS', NULL, NULL, NULL, 'Active', '2022-07-06 10:35:17.117238', '2022-07-06 10:35:17.117238'),
('CHK-0006', 'TOS OR RUBRICS', 'TOS OR RUBRICS', NULL, NULL, NULL, 'Active', '2022-07-06 10:35:34.139855', '2022-11-08 09:10:34.327436'),
('CHK-0007', 'CLASS ATTENDANCE', 'CLASS ATTENDANCE', NULL, NULL, NULL, 'Active', '2022-11-15 01:35:37.557830', '2022-11-15 01:35:37.557830');

-- --------------------------------------------------------

--
-- Table structure for table `esignature`
--

CREATE TABLE `esignature` (
  `id` varchar(255) NOT NULL,
  `semestral_id` varchar(255) NOT NULL,
  `department_head_id` varchar(255) DEFAULT NULL,
  `name` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `esignature`
--

INSERT INTO `esignature` (`id`, `semestral_id`, `department_head_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
('SIG-0001', 'SEM-0003', 'USER-0003', 'document', 'Active', '2022-10-31 13:01:41', '2022-10-19 01:20:19'),
('SIG-0002', 'SEM-0001', 'USER-0003', 'signed_doc', 'Active', '2022-10-31 13:01:49', '2022-10-23 12:12:38'),
('SIG-0003', 'SEM-0001', 'USER-0003', 'sample', 'Active', '2022-10-31 13:01:53', '2022-10-23 14:29:47'),
('SIG-0004', 'SEM-0001', NULL, 'esignature_file', 'Active', '2022-11-06 12:12:31', '2022-11-06 12:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `esignature_has_user`
--

CREATE TABLE `esignature_has_user` (
  `id` int(11) NOT NULL,
  `signature_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mime_type` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `signature_status` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `esignature_has_user`
--

INSERT INTO `esignature_has_user` (`id`, `signature_id`, `user_id`, `name`, `mime_type`, `url`, `signature_status`, `status`, `created_at`, `updated_at`) VALUES
(5, 'SIG-0001', 'PROF-0001', 'Professor1_Professor1_document.pdf', 'pdf', '2022-2023_1stesignature', 'Done', 'Active', '2022-11-01 08:49:54', '2022-10-19 01:20:19'),
(6, 'SIG-0001', 'PROF-0002', 'Professor2_Professor2_document.pdf', 'pdf', '2022-2023_1stesignature', 'On Process', 'Active', '2022-11-01 08:50:43', '2022-10-19 01:20:19'),
(10, 'SIG-0002', 'PROF-0001', 'Professor1_Professor1_signed_doc.pdf', 'pdf', '2020-2021_1stesignature', 'On Process', 'Active', '2022-11-01 08:50:46', '2022-10-23 12:12:38'),
(11, 'SIG-0002', 'PROF-0002', 'Professor2_Professor2_signed_doc.pdf', 'pdf', '2020-2021_1stesignature', 'On Process', 'Active', '2022-11-01 08:50:59', '2022-10-23 12:12:38'),
(12, 'SIG-0003', 'PROF-0001', 'Professor1_Professor1_sample.docx', 'docx', '2020-2021_1stesignature', 'On Process', 'Active', '2022-11-01 08:51:10', '2022-10-23 14:29:47'),
(13, 'SIG-0003', 'PROF-0002', 'Professor2_Professor2_sample.docx', 'docx', '2020-2021_1stesignature', 'On Process', 'Active', '2022-11-01 08:51:13', '2022-10-23 14:29:47'),
(14, 'SIG-0004', 'PROF-0001', 'Professor1_Professor1_esignature_file.pdf', 'pdf', '2020-2021_1stesignature', 'On Process', 'Active', '2022-11-06 12:12:31', '2022-11-06 12:12:31'),
(15, 'SIG-0004', 'PROF-0002', 'Professor2_Professor2_esignature_file.pdf', 'pdf', '2020-2021_1stesignature', 'On Process', 'Active', '2022-11-06 12:12:31', '2022-11-06 12:12:31'),
(16, 'SIG-0004', 'PROF-0003', 'Professor3_Professor3_esignature_file.pdf', 'pdf', '2020-2021_1stesignature', 'On Process', 'Active', '2022-11-06 12:12:31', '2022-11-06 12:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `esignature_logs`
--

CREATE TABLE `esignature_logs` (
  `id` int(11) NOT NULL,
  `esignature_has_user_id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `esignature_logs`
--

INSERT INTO `esignature_logs` (`id`, `esignature_has_user_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'PROF-0001', 'Done', '2022-10-20 12:06:37', '2022-10-20 12:06:37'),
(2, 5, 'USER-0003', 'Done', '2022-10-21 07:45:48', '2022-10-21 07:45:48'),
(3, 5, 'USER-0002', 'Done', '2022-10-23 11:06:37', '2022-10-23 11:06:37'),
(4, 6, 'PROF-0002', 'On Process', '2022-10-19 01:20:19', '2022-10-19 01:20:19'),
(5, 6, 'USER-0003', 'Waiting', '2022-10-19 01:20:19', '2022-10-19 01:20:19'),
(6, 6, 'USER-0002', 'Waiting', '2022-10-19 01:20:19', '2022-10-19 01:20:19'),
(10, 10, 'PROF-0001', 'Done', '2022-10-23 13:05:34', '2022-10-23 13:05:34'),
(11, 10, 'USER-0003', 'On Process', '2022-10-23 13:05:34', '2022-10-23 13:05:34'),
(12, 10, 'USER-0002', 'Waiting', '2022-10-23 12:12:38', '2022-10-23 12:12:38'),
(13, 11, 'PROF-0002', 'On Process', '2022-10-23 12:12:38', '2022-10-23 12:12:38'),
(14, 11, 'USER-0003', 'Waiting', '2022-10-23 12:12:38', '2022-10-23 12:12:38'),
(15, 11, 'USER-0002', 'Waiting', '2022-10-23 12:12:38', '2022-10-23 12:12:38'),
(16, 12, 'PROF-0001', 'On Process', '2022-10-27 23:56:26', '2022-10-27 23:38:40'),
(17, 12, 'USER-0003', 'Waiting', '2022-10-24 10:50:28', '2022-10-24 07:22:22'),
(18, 12, 'USER-0002', 'Waiting', '2022-10-24 10:50:38', '2022-10-24 07:22:22'),
(19, 13, 'PROF-0002', 'On Process', '2022-10-23 14:29:47', '2022-10-23 14:29:47'),
(20, 13, 'USER-0003', 'Waiting', '2022-10-23 14:29:47', '2022-10-23 14:29:47'),
(21, 13, 'USER-0002', 'Waiting', '2022-10-23 14:29:47', '2022-10-23 14:29:47'),
(22, 14, 'PROF-0001', 'On Process', '2022-11-06 12:12:31', '2022-11-06 12:12:31'),
(23, 14, 'USER-0003', 'Waiting', '2022-11-06 12:12:31', '2022-11-06 12:12:31'),
(24, 14, 'USER-0002', 'Waiting', '2022-11-06 12:12:31', '2022-11-06 12:12:31'),
(25, 15, 'PROF-0002', 'On Process', '2022-11-06 12:12:31', '2022-11-06 12:12:31'),
(26, 15, 'USER-0003', 'Waiting', '2022-11-06 12:12:31', '2022-11-06 12:12:31'),
(27, 15, 'USER-0002', 'Waiting', '2022-11-06 12:12:31', '2022-11-06 12:12:31'),
(28, 16, 'PROF-0003', 'On Process', '2022-11-06 12:12:31', '2022-11-06 12:12:31'),
(29, 16, 'USER-0003', 'Waiting', '2022-11-06 12:12:31', '2022-11-06 12:12:31'),
(30, 16, 'USER-0002', 'Waiting', '2022-11-06 12:12:31', '2022-11-06 12:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `folder_id` varchar(255) NOT NULL,
  `professor_id` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `convert_file_name` text DEFAULT NULL,
  `mime_type` varchar(255) NOT NULL,
  `url` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `folder_id`, `professor_id`, `name`, `convert_file_name`, `mime_type`, `url`, `status`, `created_at`, `updated_at`) VALUES
(2, 'S4xkd', 'PROF-0001', 'CUSTOMER_116-02.xlsx', NULL, 'xlsx', '2022-2023_1st/Professor1_Professor1', 'Active', '2022-10-18 14:14:18.444132', '2022-10-18 14:14:18.444132'),
(3, 'S4xkd', 'PROF-0001', 'sample.docx', NULL, 'docx', '2020-2021_1st/Professor1_Professor1', 'Active', '2022-10-24 13:09:32.057253', '2022-10-24 13:09:32.057253'),
(4, 'S4xkd', 'PROF-0001', '1OneSO2linesCorrectDataOpenSO.csv', NULL, 'csv', '2020-2021_1st/Professor1_Professor1', 'Active', '2022-11-04 12:19:27.516927', '2022-11-04 12:19:27.516927'),
(5, 'S4xkd', 'PROF-0001', '2OneSO2linesMultipleErrorValidation.csv', NULL, 'csv', '2020-2021_1st/Professor1_Professor1', 'Active', '2022-11-04 12:21:14.741081', '2022-11-04 12:21:14.741081'),
(6, 'S4xkd', 'PROF-0001', 'MultipleSOCorrectData.csv', NULL, 'csv', '2020-2021_1st/Professor1_Professor1', 'Active', '2022-11-04 12:22:46.353536', '2022-11-04 12:22:46.353536'),
(7, '1', 'PROF-0001', 'MultipleSOCustomernotexisting.csv', NULL, 'csv', '2020-2021_1st/Professor1_Professor1', 'Active', '2022-11-04 12:30:53.952228', '2022-11-04 12:30:53.952228'),
(8, 'S4xkd', 'PROF-0001', 'MultipleSOItemNonotexisting.csv', NULL, 'csv', '2020-2021_1st/Professor1_Professor1', 'Active', '2022-11-04 12:31:15.131537', '2022-11-04 12:31:15.131537'),
(9, '1', 'USER-0001', 'CAPSTONE-2-Lesson-4.doc', NULL, 'doc', '2020-2021_1st/Admin_Admin', 'Active', '2022-11-14 17:48:19.527555', '2022-11-14 17:48:19.527555');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` varchar(10) NOT NULL,
  `parent_id` varchar(11) DEFAULT NULL,
  `professor_id` varchar(255) NOT NULL,
  `sem_has_checklist_id` int(255) DEFAULT NULL,
  `name` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `parent_id`, `professor_id`, `sem_has_checklist_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
('S4xkd', NULL, 'PROF-0001', 1, 'Prelim', 'Active', '2022-10-16 09:15:30.530468', '2022-10-16 09:15:30.530468');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `user_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'PROF-0001', 'The documentesignature_file.pdfhas been uploaded', '2022-11-06 12:12:31', '2022-11-06 12:12:31'),
(4, 'PROF-0002', 'The documentesignature_file.pdfhas been uploaded', '2022-11-06 12:12:31', '2022-11-06 12:12:31'),
(7, 'PROF-0003', 'The documentesignature_file.pdfhas been uploaded', '2022-11-06 12:12:31', '2022-11-06 12:12:31'),
(8, 'USER-0003', 'The documentesignature_file.pdfhas been uploaded', '2022-11-06 12:12:31', '2022-11-06 12:12:31'),
(9, 'USER-0002', 'The documentesignature_file.pdfhas been uploaded', '2022-11-06 12:12:31', '2022-11-06 12:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` varchar(10) NOT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `affliation` varchar(45) DEFAULT NULL,
  `birthday` varchar(45) DEFAULT NULL,
  `civil_status` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `tel_number` varchar(45) DEFAULT NULL,
  `house_no` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `barangay` varchar(45) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `last_name`, `first_name`, `middle_name`, `affliation`, `birthday`, `civil_status`, `gender`, `contact_number`, `tel_number`, `house_no`, `region`, `province`, `city`, `barangay`, `created_at`, `updated_at`) VALUES
('PER-0001', 'Admin', 'Admin', 'Admin', NULL, '1996-04-03T05:56:00.000Z', 'Single', 'Male', '0123456789', NULL, '123', 'REGION IV-A (CALABARZON)', 'BATANGAS', 'AGONCILLO', 'Adia', '2022-10-01 14:53:04.973236', NULL),
('PER-0002', 'Professor1', 'Professor1', 'Professor1', NULL, '2022-10-05T13:18:00.000Z', 'Single', 'Male', '123456', '123456', '123', 'REGION IV-A (CALABARZON)', 'LAGUNA', 'CABUYAO CITY', 'Baclaran', '2022-10-18 13:20:10.218545', NULL),
('PER-0003', 'Professor2', 'Professor2', 'Professor2', NULL, '2022-10-05T13:20:00.000Z', 'Single', 'Male', '123', '123', '123', 'REGION IV-A (CALABARZON)', 'LAGUNA', 'CABUYAO CITY', 'Bigaa', '2022-10-18 13:21:26.331004', NULL),
('PER-0004', 'Dean1', 'Dean1', 'Dean1', NULL, '2022-10-04T14:01:00.000Z', 'Single', 'Male', '123', '123', '123', 'REGION IV-A (CALABARZON)', 'BATANGAS', 'AGONCILLO', 'Adia', '2022-10-18 14:04:26.557660', NULL),
('PER-0005', 'DeptHead1', 'DeptHead1', 'DeptHead1', NULL, '2022-10-01T14:05:00.000Z', 'Single', 'Male', '123', '123', '123', 'REGION IV-A (CALABARZON)', 'BATANGAS', 'AGONCILLO', 'Adia', '2022-10-18 14:06:39.717996', NULL),
('PER-0006', 'Professor3', 'Professor3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-01 12:01:09.506897', NULL),
('PER-0007', 'Professor4', 'Professor4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-01 12:09:22.081105', NULL),
('PER-0008', 'Professor5', 'Professor5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-01 12:18:31.850000', NULL),
('PER-0009', 'Professor6', 'Professor6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-06 10:28:02.250316', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id` varchar(10) NOT NULL,
  `department_head_id` varchar(100) NOT NULL,
  `program_abbr` varchar(45) DEFAULT NULL,
  `program_description` varchar(100) DEFAULT NULL,
  `program_status` varchar(45) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `department_head_id`, `program_abbr`, `program_description`, `program_status`, `created_at`, `updated_at`) VALUES
('PRG-0001', 'USR-0003', 'BSIT', 'Bachelor of Science in Information Technology', 'Active', '2022-06-17 07:03:05.316249', '2022-06-17 07:04:23.303175'),
('PRG-0002', 'PER-0006', 'BSCS', 'Bachelor of Science in Computer Science', 'Active', '2022-10-11 08:32:16.047414', '2022-11-08 01:05:33.584453');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` varchar(10) NOT NULL,
  `section_abbr` varchar(45) DEFAULT NULL,
  `section_description` varchar(45) DEFAULT NULL,
  `section_status` varchar(45) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `year_level_id` varchar(10) NOT NULL,
  `program_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `section_abbr`, `section_description`, `section_status`, `created_at`, `updated_at`, `year_level_id`, `program_id`) VALUES
('SEC-0001', '2ITW-1', 'Information Technology', 'Active', '2022-06-17 07:41:10.414384', '2022-06-17 07:42:36.624061', 'YRL-0001', 'PRG-0001');

-- --------------------------------------------------------

--
-- Table structure for table `semestral`
--

CREATE TABLE `semestral` (
  `id` varchar(10) NOT NULL,
  `semestral_abbr` varchar(45) DEFAULT NULL,
  `semestral_description` varchar(45) DEFAULT NULL,
  `semestral_status` varchar(45) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `year_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semestral`
--

INSERT INTO `semestral` (`id`, `semestral_abbr`, `semestral_description`, `semestral_status`, `created_at`, `updated_at`, `year_id`) VALUES
('SEM-0001', '1st', 'First Semestral', 'Active', '2022-06-16 06:30:31.005008', '2022-06-16 06:30:31.589888', 'YR-0001'),
('SEM-0002', '2nd', 'Second Semester', 'Active', '2022-06-16 06:30:41.104674', '2022-06-16 06:30:41.104674', 'YR-0001'),
('SEM-0003', '1st', 'First Semestral', 'Active', '2022-07-06 02:05:24.463129', '2022-07-06 02:05:24.463129', 'YR-0003'),
('SEM-0004', '1st', 'First Semestral', 'Active', '2022-11-07 07:22:02.292817', '2022-11-08 01:02:59.267171', 'YR-0004');

-- --------------------------------------------------------

--
-- Table structure for table `semestral_checklist`
--

CREATE TABLE `semestral_checklist` (
  `id` varchar(45) NOT NULL,
  `semestral_id` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `is_upload` varchar(45) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semestral_checklist`
--

INSERT INTO `semestral_checklist` (`id`, `semestral_id`, `status`, `is_upload`, `created_at`, `updated_at`) VALUES
('SEM-CHK-0001', 'SEM-0001', 'Active', 'Yes', '2022-11-08 01:23:27.612155', '2022-11-08 01:23:27.611404'),
('SEM-CHK-0002', 'SEM-0003', 'Active', 'No', '2022-10-23 11:12:54.336191', '2022-07-07 07:12:28.891598'),
('SEM-CHK-0003', 'SEM-0002', 'Active', 'No', '2022-08-27 02:04:00.391370', '2022-08-27 02:04:00.391370');

-- --------------------------------------------------------

--
-- Table structure for table `semestral_dean`
--

CREATE TABLE `semestral_dean` (
  `id` int(11) NOT NULL,
  `semestral_id` varchar(255) NOT NULL,
  `dean_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semestral_dean`
--

INSERT INTO `semestral_dean` (`id`, `semestral_id`, `dean_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 'SEM-0001', 'USER-0002', 'Inactive', '2022-11-05 13:23:51', '2022-11-05 13:23:51'),
(3, 'SEM-0001', 'USER-0002', 'Active', '2022-11-05 13:27:00', '2022-11-05 13:27:00'),
(4, 'SEM-0004', 'USER-0002', 'Active', '2022-11-14 18:14:59', '2022-11-14 18:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `semestral_has_dept_head`
--

CREATE TABLE `semestral_has_dept_head` (
  `id` int(11) NOT NULL,
  `semestral_id` varchar(255) NOT NULL,
  `program_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semestral_has_dept_head`
--

INSERT INTO `semestral_has_dept_head` (`id`, `semestral_id`, `program_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'SEM-0001', 'PRG-0002', 'USER-0003', '2022-10-23 10:45:42', '2022-10-16 01:26:36'),
(4, 'SEM-0001', 'PRG-0001', 'USER-0003', '2022-10-23 10:45:48', '2022-10-16 03:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `semestral_has_professor`
--

CREATE TABLE `semestral_has_professor` (
  `id` int(11) NOT NULL,
  `semestral_professor_id` varchar(255) NOT NULL,
  `section_id` varchar(255) DEFAULT NULL,
  `subject_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `semestral_professor`
--

CREATE TABLE `semestral_professor` (
  `id` int(11) NOT NULL,
  `semestral_id` varchar(255) NOT NULL,
  `professor_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semestral_professor`
--

INSERT INTO `semestral_professor` (`id`, `semestral_id`, `professor_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SEM-0001', 'PROF-0001', 'Inactive', '2022-11-05 12:27:40.000000', '2022-11-14 18:09:13.511562'),
(2, 'SEM-0001', 'PROF-0002', 'Active', '2022-10-18 14:08:00.000000', '2022-10-18 14:08:00.000000'),
(3, 'SEM-0001', 'PROF-0003', 'Active', '2022-11-05 12:28:02.000000', '2022-10-18 12:10:46.000000'),
(4, 'SEM-0004', 'PROF-0001', 'Active', '2022-11-14 18:07:50.473734', '2022-11-14 18:07:50.473734'),
(5, 'SEM-0004', 'PROF-0001', 'Active', '2022-11-14 18:08:15.758756', '2022-11-14 18:08:15.758756'),
(6, 'SEM-0004', 'PROF-0002', 'Active', '2022-11-14 18:08:15.780322', '2022-11-14 18:08:15.780322'),
(7, 'SEM-0004', 'PROF-0003', 'Active', '2022-11-14 18:08:15.792497', '2022-11-14 18:08:15.792497'),
(8, 'SEM-0004', 'PROF-0004', 'Active', '2022-11-14 18:08:15.793128', '2022-11-14 18:08:15.793128'),
(9, 'SEM-0004', 'PROF-0005', 'Active', '2022-11-14 18:08:15.793639', '2022-11-14 18:08:15.793639'),
(10, 'SEM-0004', 'PROF-0006', 'Active', '2022-11-14 18:08:15.794359', '2022-11-14 18:08:15.794359');

-- --------------------------------------------------------

--
-- Table structure for table `sem_has_checklist`
--

CREATE TABLE `sem_has_checklist` (
  `id` int(11) NOT NULL,
  `semestral_checklist_id` varchar(45) NOT NULL,
  `checklist_id` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sem_has_checklist`
--

INSERT INTO `sem_has_checklist` (`id`, `semestral_checklist_id`, `checklist_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SEM-CHK-0001', 'CHK-0001', 'Active', '2022-07-07 03:33:11.891947', '2022-07-07 03:33:11.891947'),
(2, 'SEM-CHK-0001', 'CHK-0002', 'Active', '2022-07-07 03:33:11.892258', '2022-07-07 03:33:11.892258'),
(3, 'SEM-CHK-0001', 'CHK-0003', 'Active', '2022-07-07 03:33:11.892461', '2022-07-07 03:33:11.892461'),
(4, 'SEM-CHK-0001', 'CHK-0004', 'Active', '2022-07-07 03:33:11.892727', '2022-07-07 03:33:11.892727'),
(5, 'SEM-CHK-0001', 'CHK-0005', 'Active', '2022-07-07 03:33:11.893048', '2022-07-07 03:33:11.893048'),
(6, 'SEM-CHK-0001', 'CHK-0006', 'Active', '2022-07-07 03:33:11.893304', '2022-07-07 03:33:11.893304'),
(7, 'SEM-CHK-0002', 'CHK-0001', 'Active', '2022-07-07 03:40:10.321497', '2022-07-07 03:40:10.321497'),
(8, 'SEM-CHK-0002', 'CHK-0002', 'Active', '2022-07-07 03:40:10.321783', '2022-07-07 03:40:10.321783'),
(9, 'SEM-CHK-0002', 'CHK-0003', 'Active', '2022-07-07 03:40:10.321977', '2022-07-07 03:40:10.321977'),
(10, 'SEM-CHK-0003', 'CHK-0001', 'Active', '2022-08-27 02:04:00.449016', '2022-08-27 02:04:00.449016'),
(11, 'SEM-CHK-0003', 'CHK-0002', 'Active', '2022-08-27 02:04:00.450730', '2022-08-27 02:04:00.450730'),
(12, 'SEM-CHK-0003', 'CHK-0003', 'Active', '2022-08-27 02:04:00.451448', '2022-08-27 02:04:00.451448'),
(13, 'SEM-CHK-0003', 'CHK-0004', 'Active', '2022-08-27 02:04:00.452093', '2022-08-27 02:04:00.452093'),
(14, 'SEM-CHK-0003', 'CHK-0005', 'Active', '2022-08-27 02:04:00.452706', '2022-08-27 02:04:00.452706'),
(15, 'SEM-CHK-0003', 'CHK-0006', 'Active', '2022-08-27 02:04:00.453365', '2022-08-27 02:04:00.453365');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` varchar(10) NOT NULL,
  `subject_abbr` varchar(45) DEFAULT NULL,
  `subject_description` varchar(45) DEFAULT NULL,
  `subject_status` varchar(45) DEFAULT NULL,
  `subject_code` varchar(45) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subject_abbr`, `subject_description`, `subject_status`, `subject_code`, `created_at`, `updated_at`) VALUES
('SUBJ-0001', 'CSC', 'Computer Programming', 'Active', '123', '2022-06-17 08:02:25.737763', '2022-06-17 08:02:46.269361');

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `id` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`id`, `description`) VALUES
(1, 'Prelim'),
(2, 'Midterm'),
(3, 'Finals');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(10) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `profile` longtext DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `person_id` varchar(10) NOT NULL,
  `user_type_id` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `status`, `password`, `profile`, `created_at`, `updated_at`, `person_id`, `user_type_id`) VALUES
('PROF-0001', 'professor1', 'Active', '$2y$10$p5CXqeV0h./GcYZCQVaENu9PKH.4DOc1ccJEDyAESbtBrIq9JMVum', NULL, '2022-10-18 13:20:10.360424', '2022-11-05 11:37:16.517353', 'PER-0002', '5'),
('PROF-0002', 'professor2', 'Active', '$2y$10$M4ZGankagTgilf2u.NAqJOjvPC5K6MSUQ3yqV3xogbKiwU2e1Q5va', NULL, '2022-10-18 13:21:26.494344', '2022-11-07 07:00:28.105030', 'PER-0003', '5'),
('PROF-0003', 'professor3', 'Active', '$2y$10$BPE0E0txw8MAujPncgx5d.0WtQaAcNrkEWvsdDuhP6XXr4.ekFc7G', NULL, '2022-11-01 12:01:09.648274', '2022-11-14 14:39:35.637146', 'PER-0006', '5'),
('PROF-0004', 'professor4', 'Active', '$2y$10$TBt5iOkwvF1tk6IJrbJRkuHKSC4INC7Fv/LUALbE9uVoKf0p4j1u2', NULL, '2022-11-01 12:09:22.220709', '2022-11-14 16:39:24.688622', 'PER-0007', '5'),
('PROF-0005', 'professor5', 'Active', '$2y$10$7V8fczQh7FBo2tDVe8paW.aV4osTznHIGIhRlGqyWTLg60zC5yUgy', NULL, '2022-11-01 12:18:31.994479', '2022-11-07 07:04:02.723063', 'PER-0008', '5'),
('PROF-0006', 'professor6', 'Active', '$2y$10$PLL5Z8J/tkk1rn0pq6/qWOVGT./I2uGyz0YVV795iG7Yd2OJr0ZjG', NULL, '2022-11-06 10:28:02.390470', '2022-11-14 16:39:16.930952', 'PER-0009', '5'),
('USER-0001', 'admin', 'Active', '$2y$10$CopDiO/MYc0kE4HxwAih5uP1n/swer9Vv/IAdeueBml4s.YiRZ/Wa', NULL, '2022-10-18 12:37:07.000000', '2022-11-10 01:00:14.831256', 'PER-0001', '1'),
('USER-0002', 'dean1', 'Active', '$2y$10$gMgwbIhHhSunQF.fBTJVE.bZqpwlAD09h6/lWzgUYwUrjNsqmr3ba', NULL, '2022-10-18 14:04:26.693447', '2022-10-18 14:04:26.693447', 'PER-0004', '2'),
('USER-0003', 'departmenthead1', 'Active', '$2y$10$6Mz5kQlyctabXoWVyu9AX.lI/18Y/aJyC5zztrOkuh1ddQ30Do.sC', NULL, '2022-10-18 14:06:39.884760', '2022-11-07 07:11:33.365389', 'PER-0005', '6');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `user_type_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `user_type_description`) VALUES
(1, 'Admin'),
(2, 'Dean'),
(3, 'Secretary'),
(4, 'Chair'),
(5, 'Professor'),
(6, 'Department Head');

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `id` varchar(255) NOT NULL,
  `year_abbr` text NOT NULL,
  `year_description` text NOT NULL,
  `year_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`id`, `year_abbr`, `year_description`, `year_status`, `created_at`, `updated_at`) VALUES
('YR-0001', '20-21', '2020-2021', 'Active', '2022-10-18 12:39:25', '2022-10-18 12:39:25'),
('YR-0002', '21-22', '2021-2022', 'Active', '2022-10-18 12:39:54', '2022-10-18 12:39:54'),
('YR-0003', '22-23', '2022-2023', 'Active', '2022-10-18 12:40:05', '2022-10-18 12:40:05'),
('YR-0004', '19-20', '2019-2020', 'Active', '2022-11-07 07:15:13', '2022-11-07 07:20:00'),
('YR-0005', '18-19', '2018-2019', 'Active', '2022-11-07 07:20:21', '2022-11-07 07:26:44');

-- --------------------------------------------------------

--
-- Table structure for table `year_level`
--

CREATE TABLE `year_level` (
  `id` varchar(255) NOT NULL,
  `year_level_abbr` text NOT NULL,
  `year_level_description` text NOT NULL,
  `year_level_status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checklist`
--
ALTER TABLE `checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `esignature`
--
ALTER TABLE `esignature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `esignature_has_user`
--
ALTER TABLE `esignature_has_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `esignature_logs`
--
ALTER TABLE `esignature_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semestral`
--
ALTER TABLE `semestral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semestral_checklist`
--
ALTER TABLE `semestral_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semestral_dean`
--
ALTER TABLE `semestral_dean`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semestral_has_dept_head`
--
ALTER TABLE `semestral_has_dept_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semestral_has_professor`
--
ALTER TABLE `semestral_has_professor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semestral_professor`
--
ALTER TABLE `semestral_professor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sem_has_checklist`
--
ALTER TABLE `sem_has_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year_level`
--
ALTER TABLE `year_level`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `esignature_has_user`
--
ALTER TABLE `esignature_has_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `esignature_logs`
--
ALTER TABLE `esignature_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `semestral_dean`
--
ALTER TABLE `semestral_dean`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `semestral_has_dept_head`
--
ALTER TABLE `semestral_has_dept_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `semestral_has_professor`
--
ALTER TABLE `semestral_has_professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semestral_professor`
--
ALTER TABLE `semestral_professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sem_has_checklist`
--
ALTER TABLE `sem_has_checklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
