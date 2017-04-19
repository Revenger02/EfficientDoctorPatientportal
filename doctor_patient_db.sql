-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2017 at 03:50 PM
-- Server version: 5.7.17-0ubuntu0.16.10.1
-- PHP Version: 7.1.2-4+deb.sury.org~yakkety+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor_patient_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_informations`
--

CREATE TABLE `admin_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_informations`
--

INSERT INTO `admin_informations` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'admin', 'abhishek');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_informations`
--

CREATE TABLE `appointment_informations` (
  `appointment_id` int(10) UNSIGNED NOT NULL,
  `start_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medical_history` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointment_informations`
--

INSERT INTO `appointment_informations` (`appointment_id`, `start_time`, `end_time`, `patient_name`, `doctor_id`, `medical_history`) VALUES
(1, '01 August 2017 - 09:30 am', '01 August 2017 - 10:00 am', 'sukalpmittal', 'Aman_Rehman', 'He needs operation before this year'),
(2, '01 September 2017 - 09:00 am', '01 September 2017 - 10:00 am', 'sukalpmittal', 'Pratim_Chopra', 'Some sort of improvement in the health but need more improvement\r\nSuggestion:Morning Walk'),
(4, '15 September 2017 - 11:00 am', '15 September 2017 - 11:30 am', 'sukalpmittal', 'Pratim_Chopra', 'Muttal All is Well'),
(7, '18 September 2017 - 12:00 pm', '18 September 2017 - 12:30 pm', 'abhishekkumar', 'Aman_Rehman', NULL),
(8, '12 September 2017 - 01:30 pm', '12 September 2017 - 02:00 pm', 'sukalpmittal', 'Pratim_Chopra', NULL),
(9, '28 September 2017 - 03:00 pm', '28 September 2017 - 03:30 pm', 'sukalpmittal', 'Pratim_Chopra', NULL),
(10, '29 September 2017 - 03:25 pm', '29 September 2017 - 04:00 pm', 'sukalpmittal', 'Pratim_Chopra', NULL),
(11, '06 September 2017 - 02:00 pm', '06 September 2017 - 02:30 pm', 'sukalpmittal', 'Pratim_Chopra', 'qojfojvcxklvnlsncmopmp mpm\r\ncls'),
(12, '06 September 2017 - 01:05 am', '17 September 2017 - 11:30 am', 'sukalpmittal', 'Aman_Rehman', NULL),
(14, '06 September 2017 - 02:00 am', '06 September 2017 - 02:25 pm', 'sukalpmittal', 'Pratim_Chopra', 'idgcxif');

-- --------------------------------------------------------

--
-- Table structure for table `article_informations`
--

CREATE TABLE `article_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `department` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_informations`
--

INSERT INTO `article_informations` (`id`, `department`, `topic`, `content`, `time`) VALUES
(1, 'Dentistry', 'Teeth\'s Disease', 'Use of colgate has proved an important improvement in teeth disease from 20 years has been proved\r\nby IIIT Engineers', '2017-04-10 02:23:49'),
(2, 'Cardiology', 'India\'s Population', 'Population controlling effect has to be made by each one', '2017-04-12 03:31:15'),
(3, 'Bone', 'Eating Calcium', 'Calcium makes your bones healthy', '2017-04-12 05:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_informations`
--

CREATE TABLE `doctor_informations` (
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_informations`
--

INSERT INTO `doctor_informations` (`doctor_id`, `username`, `password`, `email`, `contact_number`, `address`, `qualification`, `speciality`, `Fees`) VALUES
(2, 'Aman_Rehman', 'abc', 'rehman2345@gmail.com', '9876789876', 'Ashutosh_Nagar,Krishna_Nagar,Lucknow.', 'M.B.B.S,M.D,A.A.I.I.S', 'bone', 100),
(3, 'Pratim_Chopra', 'abc', 'chopra_rocks@gmail.com', '9876543213', 'Shine_Heaven,Amabri,Guwahati.', 'P.H.D_in_Medical_Science', 'bone', 200),
(5, 'Abhishek_Kumar', 'abhishek', 'kimar_always_rocks@yahoo.com', '9090908765', 'SHINE_HEAVEN', 'M.B.B.S', 'Cardiology', 300),
(6, 'Sachin_Tendulkar', 'abc', 'sachin@gmail.com', '7664021532', 'Mumbai_Indians_P', 'High_School.', 'Cardiology', 200);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_informations`
--

CREATE TABLE `feedback_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `doctorName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback_informations`
--

INSERT INTO `feedback_informations` (`id`, `doctorName`, `content`, `time`) VALUES
(1, 'Cardiology', 'He is very polite and humble and very good looking and I am feeling\r\nto proud to be his patient.', '2017-04-10 01:26:08'),
(2, 'Abhishek', 'Abhishek kumar is a very badass doctor ,he don\'t know  how to treat Patient .\r\nHe have to learn.It\'s proved learning can\'t define a person\'s behaviour.', '2017-04-10 01:29:13'),
(3, 'Abhishek_Kumar', 'ajbdjabidnowndolwmns', '2017-04-12 11:17:39'),
(4, 'Sachin_Tendulkar', 'sgjebdckbrf', '2017-04-19 08:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2017_03_17_163848_create_practice_table', 1),
(3, '2017_03_29_090452_create_patient_information_table', 1),
(4, '2017_03_29_091513_create_doctor_information_table', 2),
(5, '2017_03_29_091814_create_appointment_information_table', 3),
(6, '2017_03_29_094243_create_admin_information_table', 4),
(7, '2017_04_10_011548_create_feedback_table', 5),
(8, '2017_04_10_021157_create_article_table', 6),
(9, '2017_04_11_181500_create_organ_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `organ_informations`
--

CREATE TABLE `organ_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bloodGroup` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organ_informations`
--

INSERT INTO `organ_informations` (`id`, `username`, `bloodGroup`, `organ`, `receiver`) VALUES
(1, 'sukalpmittal', 'Blood', 'Organ', NULL),
(2, 'sukalpmittal', 'A-', 'Body', 'sukalpmittal'),
(3, 'sukalpmittal', 'B-', 'Kidney', 'abhishekkumar'),
(4, 'sukalpmittal', 'B+', 'Body', NULL),
(5, 'abhishekkumar', 'B+', 'Blood', 'abhishekkumar'),
(6, 'sukalpmittal', 'B+', 'Kidney', 'sukalpmittal'),
(7, 'sukalpmittal', 'B+', 'Kidney', NULL),
(8, 'sukalpmittal', 'A-', 'Eye', 'sukalpmittal'),
(9, 'sukalpmittal', 'A+', 'Kidney', NULL),
(10, 'sukalpmittal', 'B+', 'Blood', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_informations`
--

CREATE TABLE `patient_informations` (
  `patient_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_informations`
--

INSERT INTO `patient_informations` (`patient_id`, `username`, `password`, `email`, `contact_number`, `address`) VALUES
(1, 'abhishekkumar', 'Abhishek123', 'candyman.abhi1996@gmail.com', '7664021532', 'H.no527,Ashutosh Nagar ,Krishna Nagar,Lucknow'),
(2, 'Vikeshkumar', '12345678', 'vikesk.abhi1996@gmail.com', '7664021532', 'H.no527,Shine Nagar ,Manas Nagar,Guwahati.'),
(3, 'kumarGaurav', 'itsmyfrnd', 'omprakash789@gmail.com', '8011077189', 'nagarpalika faizabad,Lucknow.'),
(4, 'rohitsharma', '12345678', 'rosha@gmail.com', '8011077189', 'Gwalior,Madhya Pradesh.'),
(6, 'sukalpmittal', 'sukal', 'sukalpkutta@gmail.com', '9876544322', 'Delhi purani bahut purani ,j,Kishan  gang,Bihar'),
(7, '12', 'fhdjkhflei', 'awdwqr', 'erete', '56868');

-- --------------------------------------------------------

--
-- Table structure for table `practices`
--

CREATE TABLE `practices` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lastname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_informations`
--
ALTER TABLE `admin_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment_informations`
--
ALTER TABLE `appointment_informations`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `article_informations`
--
ALTER TABLE `article_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_informations`
--
ALTER TABLE `doctor_informations`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `feedback_informations`
--
ALTER TABLE `feedback_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organ_informations`
--
ALTER TABLE `organ_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `patient_informations`
--
ALTER TABLE `patient_informations`
  ADD PRIMARY KEY (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_informations`
--
ALTER TABLE `admin_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `appointment_informations`
--
ALTER TABLE `appointment_informations`
  MODIFY `appointment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `article_informations`
--
ALTER TABLE `article_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `doctor_informations`
--
ALTER TABLE `doctor_informations`
  MODIFY `doctor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `feedback_informations`
--
ALTER TABLE `feedback_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `organ_informations`
--
ALTER TABLE `organ_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `patient_informations`
--
ALTER TABLE `patient_informations`
  MODIFY `patient_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
