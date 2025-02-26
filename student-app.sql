-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2025 at 10:44 AM
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
-- Database: `student-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `year_adsession_courses_id` bigint(20) UNSIGNED NOT NULL,
  `fathers_name` varchar(255) NOT NULL,
  `mothers_name` varchar(255) NOT NULL,
  `guardian_mobile` varchar(255) DEFAULT NULL,
  `course_fee` decimal(10,2) NOT NULL,
  `student_type` varchar(255) NOT NULL,
  `class_day` varchar(255) DEFAULT NULL,
  `class_time` varchar(255) DEFAULT NULL,
  `student_group` varchar(255) DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `student_nid` varchar(255) DEFAULT NULL,
  `student_dobreg` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `student_photo` varchar(255) DEFAULT NULL,
  `admission_status` enum('pending','confirmed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`id`, `user_id`, `year_adsession_courses_id`, `fathers_name`, `mothers_name`, `guardian_mobile`, `course_fee`, `student_type`, `class_day`, `class_time`, `student_group`, `batch_no`, `student_nid`, `student_dobreg`, `blood_group`, `student_photo`, `admission_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'John Doe Sr.', 'Jane Doe', '1234567890', 1500.00, 'Regular', 'Monday', '10:00 AM', 'Group A', 'B001', 'NID123456', '2005-01-01', 'A+', 'photo1.jpg', 'confirmed', '2025-02-26 05:08:06', '2025-02-26 05:08:06'),
(2, 2, 1, 'Mike Smith', 'Anna Smith', '0987654321', 2000.00, 'Regular', 'Tuesday', '11:00 AM', 'Group B', 'B002', 'NID654321', '2006-02-02', 'B+', 'photo2.jpg', 'pending', '2025-02-26 05:08:06', '2025-02-26 05:08:06'),
(3, 3, 2, 'Robert Johnson', 'Emily Johnson', '1122334455', 1800.00, 'Only Registation', 'Wednesday', '12:00 PM', 'Group C', 'B003', 'NID987654', '2004-03-03', 'O+', 'photo3.jpg', 'confirmed', '2025-02-26 05:08:06', '2025-02-26 05:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `adsessions`
--

CREATE TABLE `adsessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_name` varchar(255) NOT NULL,
  `session_status` enum('pending','confirmed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adsessions`
--

INSERT INTO `adsessions` (`id`, `session_name`, `session_status`, `created_at`, `updated_at`) VALUES
(1, 'January-June', 'pending', '2025-02-26 05:03:53', '2025-02-26 05:03:53'),
(2, 'July-December', 'confirmed', '2025-02-26 05:03:53', '2025-02-26 05:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `admission_id` bigint(20) UNSIGNED NOT NULL,
  `registration_id` bigint(20) UNSIGNED NOT NULL,
  `received_date` date NOT NULL,
  `certificate_status` enum('Pending','Completed') NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `user_id`, `admission_id`, `registration_id`, `received_date`, `certificate_status`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 1, '2025-02-26', 'Pending', '2025-02-26 05:37:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_status` enum('pending','confirmed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_status`, `created_at`, `updated_at`) VALUES
(1, 'Certificate in Office Application-076', 'confirmed', '2025-02-26 05:06:02', '2025-02-26 05:06:02'),
(2, 'Certificate in Database Programming-079', 'pending', '2025-02-26 05:06:02', '2025-02-26 05:06:02'),
(3, 'Grafices Design', 'pending', '2025-02-26 05:06:02', '2025-02-26 05:06:02'),
(4, 'Web Design & Development', 'confirmed', '2025-02-26 05:06:02', '2025-02-26 05:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `education_type` varchar(255) NOT NULL,
  `roll` varchar(255) NOT NULL,
  `passing_year` year(4) NOT NULL,
  `gpa` decimal(3,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `user_id`, `education_type`, `roll`, `passing_year`, `gpa`, `created_at`, `updated_at`) VALUES
(1, 1, 'JSC', '12345', '2021', 3.50, '2025-02-26 05:11:17', '2025-02-26 05:11:17'),
(2, 2, 'SSC School', '67890', '2023', 3.75, '2025-02-26 05:11:17', '2025-02-26 05:11:17'),
(3, 1, 'HSC High School', '54321', '2025', 3.80, '2025-02-26 05:11:17', '2025-02-26 05:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_25_053423_create_years_table', 1),
(5, '2025_02_25_073417_create_adsessions_table', 1),
(6, '2025_02_25_073645_create_courses_table', 1),
(7, '2025_02_25_074017_create_year_session_courses_table', 1),
(8, '2025_02_25_074921_create_admissions_table', 1),
(9, '2025_02_25_085442_create_payments_table', 1),
(10, '2025_02_25_090747_create_education_table', 1),
(11, '2025_02_25_091334_create_registations_table', 1),
(12, '2025_02_25_091841_create_results_table', 1),
(13, '2025_02_25_092106_create_certificates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `admission_id` bigint(20) UNSIGNED NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `payment_amount` decimal(10,2) NOT NULL,
  `payment_memo` varchar(255) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_status` enum('Pending','Completed') NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `admission_id`, `payment_type`, `payment_amount`, `payment_memo`, `payment_date`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Credit Card', 1500.00, 'Admission Fee', '2023-09-01', 'Completed', '2025-02-26 05:09:36', '2025-02-26 05:09:36'),
(2, 2, 2, 'Bank Transfer', 2000.00, 'Montyly Fee', '2023-09-15', 'Pending', '2025-02-26 05:09:36', '2025-02-26 05:09:36'),
(3, 1, 3, 'Cash', 1800.00, 'Registation Fee', '2023-09-20', 'Completed', '2025-02-26 05:09:36', '2025-02-26 05:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `registation_type` varchar(255) DEFAULT NULL,
  `registation_no` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `user_id`, `payment_id`, `registation_type`, `registation_no`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Yes', '304050', NULL, NULL),
(2, 2, 1, 'No', '304051', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `registration_id` bigint(20) UNSIGNED NOT NULL,
  `attend_exam` varchar(255) NOT NULL,
  `result_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `user_id`, `registration_id`, `attend_exam`, `result_type`, `created_at`, `updated_at`) VALUES
(7, 1, 1, 'Yes', 'A+', '2025-02-26 05:31:52', NULL),
(8, 2, 2, 'Yes', 'F', '2025-02-26 05:31:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('q2WAQHlGahtHdytKweqRJ4r07amh0OCt7maGquvT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXJqcGJFekJrTkhUa01TUzdsVG5rZno2NU4zckZvNzJnQ3pIQlBuZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740562831);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `otp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john.doe@example.com', NULL, '$2y$10$e0MYZ1xU3ZpQZQ0H8hS4BeG4F1cI1Zy6Zq0d6W4h6t0H9e1l9I8eK', '1234567890', '123456', NULL, '2025-02-26 05:00:34', '2025-02-26 05:00:34'),
(2, 'Jane Smith', 'jane.smith@example.com', NULL, '$2y$10$e0MYZ1xU3ZpQZQ0H8hS4BeG4F1cI1Zy6Zq0d6W4h6t0H9e1l9I8eK', '0987654321', '654321', NULL, '2025-02-26 05:00:34', '2025-02-26 05:00:34'),
(3, 'Alice Johnson', 'alice.johnson@example.com', NULL, '$2y$10$e0MYZ1xU3ZpQZQ0H8hS4BeG4F1cI1Zy6Zq0d6W4h6t0H9e1l9I8eK', '1122334455', '789012', NULL, '2025-02-26 05:00:34', '2025-02-26 05:00:34'),
(4, 'Bob Brown', 'bob.brown@example.com', NULL, '$2y$10$e0MYZ1xU3ZpQZQ0H8hS4BeG4F1cI1Zy6Zq0d6W4h6t0H9e1l9I8eK', '2233445566', '345678', NULL, '2025-02-26 05:00:34', '2025-02-26 05:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year_name` varchar(255) NOT NULL,
  `year_status` enum('pending','confirmed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `year_name`, `year_status`, `created_at`, `updated_at`) VALUES
(1, '2022', 'confirmed', '2025-02-26 05:02:36', '2025-02-26 05:02:36'),
(2, '2023', 'pending', '2025-02-26 05:02:36', '2025-02-26 05:02:36'),
(3, '2024', 'pending', '2025-02-26 05:02:36', '2025-02-26 05:02:36'),
(4, '2025', 'pending', '2025-02-26 05:02:36', '2025-02-26 05:02:36'),
(5, '2026', 'confirmed', '2025-02-26 05:02:36', '2025-02-26 05:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `year_adsession_courses`
--

CREATE TABLE `year_adsession_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year_id` bigint(20) UNSIGNED NOT NULL,
  `adsession_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `ysc_status` enum('pending','confirmed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `year_adsession_courses`
--

INSERT INTO `year_adsession_courses` (`id`, `year_id`, `adsession_id`, `course_id`, `ysc_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'confirmed', '2025-02-26 05:06:51', '2025-02-26 05:06:51'),
(2, 1, 1, 2, 'pending', '2025-02-26 05:06:51', '2025-02-26 05:06:51'),
(3, 2, 2, 1, 'pending', '2025-02-26 05:06:51', '2025-02-26 05:06:51'),
(4, 2, 2, 3, 'confirmed', '2025-02-26 05:06:51', '2025-02-26 05:06:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admissions_user_id_foreign` (`user_id`),
  ADD KEY `admissions_year_adsession_courses_id_foreign` (`year_adsession_courses_id`);

--
-- Indexes for table `adsessions`
--
ALTER TABLE `adsessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificates_user_id_foreign` (`user_id`),
  ADD KEY `certificates_admission_id_foreign` (`admission_id`),
  ADD KEY `certificates_registration_id_foreign` (`registration_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `education_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_admission_id_foreign` (`admission_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registrations_user_id_foreign` (`user_id`),
  ADD KEY `registrations_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_user_id_foreign` (`user_id`),
  ADD KEY `results_registration_id_foreign` (`registration_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year_adsession_courses`
--
ALTER TABLE `year_adsession_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `year_adsession_courses_year_id_foreign` (`year_id`),
  ADD KEY `year_adsession_courses_adsession_id_foreign` (`adsession_id`),
  ADD KEY `year_adsession_courses_course_id_foreign` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adsessions`
--
ALTER TABLE `adsessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `year_adsession_courses`
--
ALTER TABLE `year_adsession_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admissions`
--
ALTER TABLE `admissions`
  ADD CONSTRAINT `admissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admissions_year_adsession_courses_id_foreign` FOREIGN KEY (`year_adsession_courses_id`) REFERENCES `year_adsession_courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_admission_id_foreign` FOREIGN KEY (`admission_id`) REFERENCES `admissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_admission_id_foreign` FOREIGN KEY (`admission_id`) REFERENCES `admissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `registrations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `year_adsession_courses`
--
ALTER TABLE `year_adsession_courses`
  ADD CONSTRAINT `year_adsession_courses_adsession_id_foreign` FOREIGN KEY (`adsession_id`) REFERENCES `adsessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `year_adsession_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `year_adsession_courses_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
