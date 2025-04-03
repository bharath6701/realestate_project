-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2025 at 06:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobhunt_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@realesatejobs.com', '$2y$10$LR/Lwk8g.jEPbwRYKDafcONReEl87Womp82NeEpBhYWt.JJ4MHuvW', 'admin.jpg', '9543CBD711AE442550A7946A54E1F268D30B05BB', '2025-03-28 04:44:59', '2022-02-19 10:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_listing_ad` varchar(255) NOT NULL,
  `job_listing_ad_url` varchar(255) DEFAULT NULL,
  `job_listing_ad_status` varchar(255) NOT NULL,
  `company_listing_ad` varchar(255) NOT NULL,
  `company_listing_ad_url` varchar(255) DEFAULT NULL,
  `company_listing_ad_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `job_listing_ad`, `job_listing_ad_url`, `job_listing_ad_status`, `company_listing_ad`, `company_listing_ad_url`, `company_listing_ad_status`, `created_at`, `updated_at`) VALUES
(1, 'job_listing_ad.jpg', 'https://www.google.com', 'Show', 'company_listing_ad.jpg', 'https://www.yahoo.com', 'Show', NULL, '2023-01-17 21:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_job_listing` text NOT NULL,
  `banner_job_detail` text NOT NULL,
  `banner_job_categories` text NOT NULL,
  `banner_company_listing` text NOT NULL,
  `banner_company_detail` text NOT NULL,
  `banner_pricing` text NOT NULL,
  `banner_blog` text NOT NULL,
  `banner_post` text NOT NULL,
  `banner_faq` text NOT NULL,
  `banner_contact` text NOT NULL,
  `banner_terms` text NOT NULL,
  `banner_privacy` text NOT NULL,
  `banner_signup` text NOT NULL,
  `banner_login` text NOT NULL,
  `banner_forget_password` text NOT NULL,
  `banner_company_panel` text NOT NULL,
  `banner_candidate_panel` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_job_listing`, `banner_job_detail`, `banner_job_categories`, `banner_company_listing`, `banner_company_detail`, `banner_pricing`, `banner_blog`, `banner_post`, `banner_faq`, `banner_contact`, `banner_terms`, `banner_privacy`, `banner_signup`, `banner_login`, `banner_forget_password`, `banner_company_panel`, `banner_candidate_panel`, `created_at`, `updated_at`) VALUES
(1, 'banner_job_listing.jpg', 'banner_job_detail.jpg', 'banner_job_categories.jpg', 'banner_company_listing.jpg', 'banner_company_detail.jpg', 'banner_pricing.jpg', 'banner_blog.jpg', 'banner_post.jpg', 'banner_faq.jpg', 'banner_contact.jpg', 'banner_terms.jpg', 'banner_privacy.jpg', 'banner_signup.jpg', 'banner_login.jpg', 'banner_forget_password.jpg', 'banner_company_panel.jpg', 'banner_candidate_panel.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `designation`, `username`, `email`, `password`, `token`, `photo`, `biography`, `phone`, `country`, `address`, `state`, `city`, `zip_code`, `gender`, `marital_status`, `date_of_birth`, `website`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Peter Smith', 'PHP Developer', 'peter', 'peter@gmail.com', '$2y$10$LpfVvaPXRjGTBKtdiZoCze82qWjU2RzAJnspOLbFVFNR2WurWuTrW', '', 'candidate_photo_1673696295.jpg', '<p>Ea has adhuc nusquam nominavi, homero possit platonem cu qui. Ancillae fabellas definiebas his ea. Tale dicta epicuri eam id, in volutpat urbanitas usu. Wisi facilisis eu vel, in nulla democritum nam, ad sed aliquip recteque adversarium. Usu et assum liber delicata.</p>\r\n<p>At vim hinc nonumy nostrud. Ex dolorem probatus qui. Erroribus democritum reprimique an ius. Facer volumus ei usu, congue utroque petentium ad mel, wisi quaerendum an sit. Per id postea aliquip, ut sea pertinax deseruisse. Euismod dolores accumsan ex vix, id nec libris complectitur, fabellas apeirian id est.</p>\r\n<p>Possim oporteat eos et, graeci lobortis ne ius, vis id appetere definitiones. Pro quando officiis te, equidem scribentur definitiones ei has. Natum novum ex nec, ut sed modo stet. Ex quo brute option constituam.</p>', '234-333-2222', 'USA', '87/4 Main Street', 'NYC', 'NY', '91282', 'Male', 'Unmarried', '2000-03-16', 'https://www.petersite.com', 1, '2023-01-08 05:22:32', '2023-01-14 07:14:00'),
(2, 'Richard Anderson', 'PHP Developer', 'richard', 'richard@gmail.com', '$2y$10$N0HtrzblaZ/CmUgAgrN96uwvFlX9pp1Zt5Z7cfKJquwYuIFlW7TWm', '', 'candidate_photo_1673860200.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '443-616-4741', 'USA', '1559 Hewes Avenue', 'MD', 'Baltimore', '21201', 'Male', 'Unmarried', '2001-12-26', 'https://www.richardanderson.com', 1, '2023-01-16 03:04:49', '2023-01-16 03:10:00'),
(3, 'Janice Wallace', 'Laravel Developer', 'janice', 'janice@gmail.com', '$2y$10$dPpTXWMupRAEY1ZISO6zyOMmkY.FecCxCfpBLjfwgDCt8TbhwjJsC', '', 'candidate_photo_1673860357.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '281-559-1295', 'USA', '1008 Bird Spring Lane,', 'TX', 'Bacliff', '77518', 'Male', 'Unmarried', '2001-12-26', 'https://www.JaniceWallace.com', 1, '2023-01-16 03:10:52', '2023-01-16 03:12:37'),
(4, 'Carlos Phoenix', 'Web Designer', 'carlos', 'carlos@gmail.com', '$2y$10$BgdGLc.aOZiPzBpXjiO27OiDGgzaqpt4u5jGtlup5rNJSoD7JLp2G', '', 'candidate_photo_1673861153.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '805-457-4657', 'USA', '4354 Diane Street,', 'CA', 'San Luis Obispo', '93401', 'Male', 'Married', '2001-12-26', 'https://www.CarlosPhoenix.com', 1, '2023-01-16 03:13:21', '2023-01-16 03:25:53'),
(5, 'David Slattery', 'Junior Law Consultant', 'david', 'david@gmail.com', '$2y$10$YBvzZqXEoY4n19BQkk/JXeH5386MNQpLAYNRHCykcqKS4si9sJ06q', '', 'candidate_photo_1673861326.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '415-327-8977', 'USA', '3505 Delaware Avenue', 'CA', 'Oakland', '94612', 'Male', 'Unmarried', '2001-12-26', 'https://www.DavidSlattery.com', 1, '2023-01-16 03:26:29', '2023-01-16 03:28:46'),
(6, 'Victor Krebs', 'Senior Law Consultant', 'victor', 'victor@gmail.com', '$2y$10$Pwz0F1xl6gkHWs33sANYC.l881id6uHVivyU1ZGI0NgxlvyPrzupy', '', 'candidate_photo_1673861471.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '(03) 9752 0812', 'Australia', '80 Rose Street,', 'VIC', 'THE PATCH', '3792', 'Male', 'Married', '2001-12-26', 'https://www.victorkrebs.com', 1, '2023-01-16 03:29:35', '2023-01-16 03:31:11'),
(7, 'Daniel John', 'Junior Real Estate Agent', 'daniel', 'daniel@gmail.com', '$2y$10$JVBFgpd2BHani6MpEfcD1.RhHwKFF.2WeFij8DSPK.sEz11cbIqAW', '', 'candidate_photo_1673861606.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '(08) 9020 4465', 'Australia', '59 Baker Street,', 'WA', 'BAYONET HEAD', '6330', 'Male', 'Married', '2001-12-26', 'https://www.danieljohn.com', 1, '2023-01-16 03:31:46', '2023-01-16 03:33:34'),
(8, 'Henri Patenaude', 'Real Estate Marketer', 'henri', 'henri@gmail.com', '$2y$10$xbIE9w/c57Dx.xLN3OYQ7O7a9CVTagFK6S7OAIWHWIEYjruDvRT5C', '', 'candidate_photo_1673861779.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '03.16.22.32.96', 'Franch', '60, Quai des Belges,', 'MAUBEUGE', 'MAUBEUGE', '59600', 'Male', 'Married', '2001-12-26', 'https://www.henri-patenaude.com', 1, '2023-01-16 03:34:25', '2023-01-16 03:36:19'),
(9, 'Elliot Hammond', 'IT Accountant', 'hammond', 'hammond@gmail.com', '$2y$10$efGDRhgzVB7U71TGVXmtw.JsGO0eXPwunusymd.A/8pcZRA5.RYwa', '', 'candidate_photo_1673861942.jpg', NULL, '079 5612 7905', 'UK', '61 East Street', 'KA27', 'MARGNAHEGLISH', '3YS', 'Male', 'Married', '2001-12-26', 'https://www.hammond123.com', 1, '2023-01-16 03:37:24', '2023-01-16 03:40:32'),
(10, 'Eduardo Dias', 'Accounting Assistant', 'dias', 'dias@gmail.com', '$2y$10$yplwsCBQjSBa2I/omwaq4.M4ubUOObqz4C2eaQisTWKBtrKbZUBI.', '', 'candidate_photo_1673862148.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '(21) 4984-5302', 'Brazil', 'Rua Ibicarai, 1393', 'RJ', 'Belford Roxo', '26113-710', 'Male', 'Married', '2001-12-26', 'https://www.eduardo-dias.com', 1, '2023-01-16 03:39:46', '2023-01-16 03:42:28'),
(11, 'Richard Yang', 'Network Operator', 'yang', 'yang@gmail.com', '$2y$10$7i5w9BxFL5/.0a9.MkHGsudr8VQwszLhdos.dQ1aoy4u8fjOeOHSu', '', 'candidate_photo_1673866452.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '407-453-6387', 'USA', '190 Ocala Street,', 'FL', 'Orlando', '32805', 'Male', 'Divorced', '2001-12-26', 'https://www.richard-yang.com', 1, '2023-01-16 04:52:29', '2023-01-16 04:54:26'),
(12, 'Antonio Moon', 'Server Administrator', 'moon', 'moon@gmail.com', '$2y$10$8LUMgL/ZlaISdolpy7eoS.vwVi9qxRxsMp26Xn/hBpas0pO9uQO82', '', 'candidate_photo_1673866576.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '303-605-8872', 'USA', '1656 Sampson Street,', 'CO', 'Denver', '80202', 'Male', 'Married', '2001-12-26', 'https://www.antonio-moon.com', 1, '2023-01-16 04:54:52', '2023-01-16 04:56:16'),
(13, 'Michael Taylor', 'Senior Office Assitant', 'taylor', 'taylor@gmail.com', '$2y$10$Yrw54B7wzw1psdBz261PuOeI0GH4PbTHnGEVo5ThtTw5..m.4JcKm', '7599806ede3d20f0ed5fc6332fe3a94f53aad5adc4f2e9f97ce65e24d6718f4d', 'candidate_photo_1673866686.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '814-796-2418', 'USA', '3236 Spadafore Drive,', 'PA', 'Waterford', '16441', 'Male', 'Married', '2001-12-26', 'https://www.michael-taylor.com', 0, '2023-01-16 04:56:46', '2023-01-16 04:58:06'),
(14, 'Cody Arendt', 'Senior Conference Manager', 'cody', 'cody@gmail.com', '$2y$10$AbyqG2RpD2sFVwlOg2fqwONacyHwF1Tdk9cFZ1ysPyq8iZWBvaORG', '', 'candidate_photo_1673866823.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '918-577-6924', 'USA', '1321 Camel Back Road,', 'OK', 'Tulsa', '74120', 'Male', 'Married', '2001-12-26', 'https://www.cody-arendt.com', 1, '2023-01-16 04:58:37', '2023-01-16 05:00:50'),
(15, 'Hugh Peters', 'Software Operator', 'hugh', 'hugh@gmail.com', '$2y$10$mncDOXJ3IBOzeoC7/.L5nue6fODyzPjZBtu5gVu7cGK.6jonaWSBm', '', 'candidate_photo_1673866970.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '804-212-9291', 'USA', '2602 Emily Drive,', 'VA', 'Richmond', '23219', 'Male', 'Married', '2001-12-26', 'https://www.hugh-peters.com', 1, '2023-01-16 05:01:27', '2023-01-16 05:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_applications`
--

CREATE TABLE `candidate_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `cover_letter` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_applications`
--

INSERT INTO `candidate_applications` (`id`, `candidate_id`, `job_id`, `cover_letter`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 16, 'Hi,\r\n\r\nPlease check my cover letter. I am applying to your job. \r\n\r\nThank you.', 'Applied', '2023-01-17 06:54:12', '2023-01-17 06:54:12'),
(2, 1, 11, 'Hi,\r\n\r\nI am a very expert PHP developer. I want a job to you like this. So, please give me a chance. \r\n\r\nThank you so much for your time and consideration. \r\n\r\n- Best Regards', 'Applied', '2023-01-17 06:55:34', '2023-01-17 13:56:55'),
(3, 2, 11, 'Hello,\r\n\r\nI am working as PHP developer for about 12+ years and I have experience to work with Laravel, Codeigniter etc. \r\n\r\nPlease check my detailed CV and work experience. \r\n\r\nThank you.', 'Applied', '2023-01-17 06:57:10', '2023-01-17 13:56:59'),
(4, 6, 16, 'Hi, \r\n\r\nI am very excited to apply here. Please check my CV and resume details to know about me. \r\n\r\nThank you.', 'Approved', '2023-01-18 20:36:32', '2023-01-18 21:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_awards`
--

CREATE TABLE `candidate_awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `date` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_awards`
--

INSERT INTO `candidate_awards` (`id`, `candidate_id`, `title`, `description`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 'Employee of the Year, AMB Software Solutions', 'Won the employee of the year award for accomplishing all the targets and goals.', 'Sep 2021', '2023-01-14 13:34:17', '2023-01-14 13:34:17'),
(2, 1, 'The Dean\'s Award, MJ University', 'Awarded for representing the univerity at muiltiple international business case competitions.', 'Feb 2022', '2023-01-14 13:34:50', '2023-01-14 13:34:50');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_bookmarks`
--

CREATE TABLE `candidate_bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_bookmarks`
--

INSERT INTO `candidate_bookmarks` (`id`, `candidate_id`, `job_id`, `created_at`, `updated_at`) VALUES
(1, 1, 21, '2023-01-17 02:13:55', '2023-01-17 02:13:55'),
(3, 1, 18, '2023-01-17 03:40:33', '2023-01-17 03:40:33'),
(4, 1, 20, '2023-01-17 03:45:04', '2023-01-17 03:45:04'),
(5, 2, 17, '2023-01-17 05:04:23', '2023-01-17 05:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_education`
--

CREATE TABLE `candidate_education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `level` text NOT NULL,
  `institute` text NOT NULL,
  `degree` text NOT NULL,
  `passing_year` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_education`
--

INSERT INTO `candidate_education` (`id`, `candidate_id`, `level`, `institute`, `degree`, `passing_year`, `created_at`, `updated_at`) VALUES
(1, 1, 'Secondary', 'MBN School', 'S.S.C.', '2016', '2023-01-14 11:03:39', '2023-01-14 11:03:39'),
(2, 1, 'Higher Secondary', 'FHJ College, NYC', 'H.S.C.', '2018', '2023-01-14 11:04:22', '2023-01-14 11:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_experiences`
--

CREATE TABLE `candidate_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `company` text NOT NULL,
  `designation` text NOT NULL,
  `start_date` text NOT NULL,
  `end_date` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_experiences`
--

INSERT INTO `candidate_experiences` (`id`, `candidate_id`, `company`, `designation`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pixel Media Ltd.', 'Web Developer', 'Apr 2015', 'Mar 2017', '2023-01-14 12:24:48', '2023-01-14 12:24:48'),
(2, 1, 'Facebook', 'Senior Web Developer', 'Aug 2017', 'Dec 2020', '2023-01-14 12:25:21', '2023-01-14 12:25:21'),
(3, 1, 'Google', 'System Analyst', 'Jan 2021', 'Present', '2023-01-14 12:25:46', '2023-01-14 12:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_resumes`
--

CREATE TABLE `candidate_resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `file` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_resumes`
--

INSERT INTO `candidate_resumes` (`id`, `candidate_id`, `name`, `file`, `created_at`, `updated_at`) VALUES
(1, 1, 'CV', 'resume_1673727626.pdf', '2023-01-14 14:20:26', '2023-01-14 14:20:26'),
(2, 1, 'Experience Certificate 1', 'resume_1673727729.pdf', '2023-01-14 14:22:09', '2023-01-14 14:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_skills`
--

CREATE TABLE `candidate_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `percentage` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_skills`
--

INSERT INTO `candidate_skills` (`id`, `candidate_id`, `name`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 1, 'Photoshop', '60', '2023-01-14 11:46:04', '2023-01-14 11:46:04'),
(2, 1, 'PHP', '88', '2023-01-14 11:46:13', '2023-01-14 11:46:13'),
(3, 1, 'Laravel', '92', '2023-01-14 11:46:31', '2023-01-14 11:46:31'),
(4, 1, 'Javascript', '75', '2023-01-14 11:46:44', '2023-01-14 11:46:44'),
(5, 1, 'Ajax', '82', '2023-01-14 11:46:53', '2023-01-14 11:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `company_location_id` int(11) DEFAULT NULL,
  `company_size_id` int(11) DEFAULT NULL,
  `founded_on` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `oh_mon` varchar(255) DEFAULT NULL,
  `oh_tue` varchar(255) DEFAULT NULL,
  `oh_wed` varchar(255) DEFAULT NULL,
  `oh_thu` varchar(255) DEFAULT NULL,
  `oh_fri` varchar(255) DEFAULT NULL,
  `oh_sat` varchar(255) DEFAULT NULL,
  `oh_sun` varchar(255) DEFAULT NULL,
  `map_code` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `linkedin` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `company_industry_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `person_name`, `username`, `email`, `password`, `token`, `logo`, `phone`, `address`, `company_location_id`, `company_size_id`, `founded_on`, `website`, `description`, `oh_mon`, `oh_tue`, `oh_wed`, `oh_thu`, `oh_fri`, `oh_sat`, `oh_sun`, `map_code`, `facebook`, `twitter`, `linkedin`, `instagram`, `status`, `company_industry_id`, `created_at`, `updated_at`) VALUES
(2, 'ABC Media Ltd.', 'James O\'neil', 'james', 'james@gmail.com', '$2y$10$W6r9G4oRjcQWDUvP8YQDlOtppVhAasm3hlgN5D4EGVWT1aOZ2tE/i', '', 'company_logo_1673536072.png', '193-223-3483', '67, AM Road, KK Street', 2, 2, '2010', 'https://www.abcmedialtd.com', '<p>Lorem ipsum dolor sit amet, te vis veri debet persius, populo platonem disputationi an mea. Eu pro mutat denique intellegam. Ne oporteat recteque scribentur mel, eam erant doctus gubergren ex. At per eros nonumes dissentiunt. Pro volumus dignissim efficiantur ad, te eos nostro veritus expetendis, eam summo legendos ad. At eum euripidis conclusionemque, ius cu assum lucilius, mei mazim theophrastus ea.</p>\r\n<p>Duis libris ponderum per in, esse nemore quo ad. Sit an dicat constituto, illum eleifend mei ex. In duo incorrupte scriptorem, essent ponderum has in, no indoctum cotidieque usu. Sed affert quodsi an. Quod vivendo dignissim te qui, mel alii diam populo at.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Offday', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2172.706509014502!2d-116.04833484480983!3d58.39963502045449!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4b0d03d337cc6ad9%3A0x9968b72aa2438fa5!2sCanada!5e0!3m2!1sen!2sbd!4v1673540786606!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'https://www.instagram.com', 1, 2, '2023-01-08 00:53:40', '2023-01-12 22:48:30'),
(4, 'Tax Associates', 'Michael Johnson', 'johnson', 'johnson@gmail.com', '$2y$10$oNr0lqiQa7nJMpMibqRodu7SUpOr5NJya/SqYwCTm9Kgpn6JyMfz.', '', 'company_logo_1673853989.png', '415-732-6182', '4890 Boring Lane San Francisco, CA 94108', 1, 2, '2000', 'https://www.jourrapide.com', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 5, '2023-01-16 01:11:40', '2023-01-16 01:26:50'),
(5, 'Deeptimay Associates', 'Jessica Smith', 'jessica', 'jessica@gmail.com', '$2y$10$rGA9g5hdUbxXINYbLrFbpegD0XN.zOb14kPMIK7wSu8GVEQ6rf/tm', '', 'company_logo_1673854119.png', '705-744-9588', '2275 Landon Street Mattawa, ON P0H 1V0', 2, 4, '2005', 'https://www.jourrapide.com', '<p>At eos mutat tritani indoctum. Ut est augue fuisset legendos, novum accusam ad has, ius habemus docendi cu. Ex falli iuvaret repudiandae vim, eos stet iriure eu. Ad molestie luptatum eloquentiam sea. Liber altera eos ea. Te impetus atomorum sententiae sea, ad pro quidam eirmod.</p>\r\n<p>Te ipsum quidam commune eos, per at quidam virtute. Ut vel tantas consetetur, ea habeo mundi vix, eum ne soluta verear deleniti. Quo no nemore adipisci. Case nonumes commune ne eum, tincidunt efficiendi an has, ut sed falli ponderum. Tation tacimates per in, vel alienum voluptatibus id.</p>\r\n<p>Ex nec aperiri aliquando, brute audiam delicata eum te. Vel purto malorum et. Vel omnes scribentur ei, in erant periculis eam, vim ex ceteros lobortis. Ei purto volumus sit, quo ut dolore facilisi. At ius iudico tollit iisque.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 5, '2023-01-16 01:12:41', '2023-01-16 01:28:39'),
(6, 'Strategy One', 'David Williams', 'william', 'william@gmail.com', '$2y$10$aYcE67fGXzchbCxreEMgKuTrXya7wuWvQMitxq8MPmwC3P1IGG8zS', '', 'company_logo_1673856074.png', '(03) 5304 1586', '22 Fitzroy Street, CANADIAN VIC, 3350', 3, 4, '2010', 'https://www.strategyone.com', '<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>\r\n<p>At eos mutat tritani indoctum. Ut est augue fuisset legendos, novum accusam ad has, ius habemus docendi cu. Ex falli iuvaret repudiandae vim, eos stet iriure eu. Ad molestie luptatum eloquentiam sea. Liber altera eos ea. Te impetus atomorum sententiae sea, ad pro quidam eirmod.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 3, '2023-01-16 01:13:54', '2023-01-16 02:01:14'),
(7, 'Nakzib & Associates', 'Jennifer Jones', 'jones', 'jones@gmail.com', '$2y$10$8x3Fxo8yR.em.gqjc3Mxiei14pIV2Oc/wAVwugqNGXP7QstRhblEK', '', 'company_logo_1673856202.png', '604-851-1905', '679 Essendene Avenue Abbotsford, BC V2S 2H7', 2, 4, '2002', 'https://www.nakzibassociates.com', '<p>At eos mutat tritani indoctum. Ut est augue fuisset legendos, novum accusam ad has, ius habemus docendi cu. Ex falli iuvaret repudiandae vim, eos stet iriure eu. Ad molestie luptatum eloquentiam sea. Liber altera eos ea. Te impetus atomorum sententiae sea, ad pro quidam eirmod.</p>\r\n<p>Te ipsum quidam commune eos, per at quidam virtute. Ut vel tantas consetetur, ea habeo mundi vix, eum ne soluta verear deleniti. Quo no nemore adipisci. Case nonumes commune ne eum, tincidunt efficiendi an has, ut sed falli ponderum. Tation tacimates per in, vel alienum voluptatibus id.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 1, '2023-01-16 01:15:35', '2023-01-16 02:03:22'),
(8, 'Skyline Corporate Law', 'Melissa Davis', 'melissa', 'melissa@gmail.com', '$2y$10$lFLknuxasy0e78YEs9Tj0ed/PH5XIPa4Z/SVKS7bELzwZxcbCslN.', '', 'company_logo_1673856347.png', '+39 0549 443356', '4 Correa Place JINGILI NT 0810', 6, 1, '1995', 'https://www.skylinelaw.com', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>\r\n<p>At eos mutat tritani indoctum. Ut est augue fuisset legendos, novum accusam ad has, ius habemus docendi cu. Ex falli iuvaret repudiandae vim, eos stet iriure eu. Ad molestie luptatum eloquentiam sea. Liber altera eos ea. Te impetus atomorum sententiae sea, ad pro quidam eirmod.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 1, '2023-01-16 01:16:32', '2023-01-16 02:05:47'),
(9, 'PS Corporation', 'Christopher Garcia', 'garcia', 'garcia@gmail.com', '$2y$10$eJPe699ePPEZ7gp2e6xgB.xvfFI.kTq0hRHi38y5f5VJ1DTwH51vi', '', 'company_logo_1673856503.png', '+86 16535533188', 'No 1 Jianguomenwai Avenue premises,', 4, 3, '2004', 'https://www.pscorp.com', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>\r\n<p>At eos mutat tritani indoctum. Ut est augue fuisset legendos, novum accusam ad has, ius habemus docendi cu. Ex falli iuvaret repudiandae vim, eos stet iriure eu. Ad molestie luptatum eloquentiam sea. Liber altera eos ea. Te impetus atomorum sententiae sea, ad pro quidam eirmod.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 5, '2023-01-16 01:18:07', '2023-01-16 02:08:23'),
(10, 'BTI Brokerage', 'Mary Rodriguez', 'mary', 'mary@gmail.com', '$2y$10$frn1Ace5hhuAjmpGjAu.OeR1I26IyO6r7NU05f4g5QD8fW6Q7f52a', '', 'company_logo_1673856654.png', '(03) 1255-4592', '34 Street, Hideaki, HAYASHI', 5, 3, '2007', 'https://www.btibrokerage.com', '<p>At eos mutat tritani indoctum. Ut est augue fuisset legendos, novum accusam ad has, ius habemus docendi cu. Ex falli iuvaret repudiandae vim, eos stet iriure eu. Ad molestie luptatum eloquentiam sea. Liber altera eos ea. Te impetus atomorum sententiae sea, ad pro quidam eirmod.</p>\r\n<p>Te ipsum quidam commune eos, per at quidam virtute. Ut vel tantas consetetur, ea habeo mundi vix, eum ne soluta verear deleniti. Quo no nemore adipisci. Case nonumes commune ne eum, tincidunt efficiendi an has, ut sed falli ponderum. Tation tacimates per in, vel alienum voluptatibus id.</p>\r\n<p>Ex nec aperiri aliquando, brute audiam delicata eum te. Vel purto malorum et. Vel omnes scribentur ei, in erant periculis eam, vim ex ceteros lobortis. Ei purto volumus sit, quo ut dolore facilisi. At ius iudico tollit iisque.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 5, '2023-01-16 01:18:59', '2023-01-16 02:10:54'),
(11, 'Glorious Estate Inc.', 'Nicholas Wilson', 'nicholas', 'nicholas@gmail.com', '$2y$10$5rsuzQrFzKFN66ImGeFiledmYiyWedaqRnB7PN7KCJNfvcasOJh5y', '', 'company_logo_1673856847.png', '509-788-9373', '4742 Sun Valley Road Prosser, WA 99350', 1, 5, '2001', 'https://www.glorious-inc.com', '<p>At eos mutat tritani indoctum. Ut est augue fuisset legendos, novum accusam ad has, ius habemus docendi cu. Ex falli iuvaret repudiandae vim, eos stet iriure eu. Ad molestie luptatum eloquentiam sea. Liber altera eos ea. Te impetus atomorum sententiae sea, ad pro quidam eirmod.</p>\r\n<p>Te ipsum quidam commune eos, per at quidam virtute. Ut vel tantas consetetur, ea habeo mundi vix, eum ne soluta verear deleniti. Quo no nemore adipisci. Case nonumes commune ne eum, tincidunt efficiendi an has, ut sed falli ponderum. Tation tacimates per in, vel alienum voluptatibus id.</p>\r\n<p>Ex nec aperiri aliquando, brute audiam delicata eum te. Vel purto malorum et. Vel omnes scribentur ei, in erant periculis eam, vim ex ceteros lobortis. Ei purto volumus sit, quo ut dolore facilisi. At ius iudico tollit iisque.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 4, '2023-01-16 01:21:25', '2023-01-16 02:14:07'),
(12, 'Cred Creatives', 'Sarah Thomas', 'sarah', 'sarah@gmail.com', '$2y$10$YCbJvWt8vtSbX7Op1v070Optn3/o65W0mLYCXUWCr4gBRQkWadYiu', '', 'company_logo_1673856945.png', '209-406-5185', '2143 Freedom Lane Stockton, CA 95202', 1, 1, '2018', 'https://www.cred-creatives.com', '<p>At eos mutat tritani indoctum. Ut est augue fuisset legendos, novum accusam ad has, ius habemus docendi cu. Ex falli iuvaret repudiandae vim, eos stet iriure eu. Ad molestie luptatum eloquentiam sea. Liber altera eos ea. Te impetus atomorum sententiae sea, ad pro quidam eirmod.</p>\r\n<p>Te ipsum quidam commune eos, per at quidam virtute. Ut vel tantas consetetur, ea habeo mundi vix, eum ne soluta verear deleniti. Quo no nemore adipisci. Case nonumes commune ne eum, tincidunt efficiendi an has, ut sed falli ponderum. Tation tacimates per in, vel alienum voluptatibus id.</p>\r\n<p>Ex nec aperiri aliquando, brute audiam delicata eum te. Vel purto malorum et. Vel omnes scribentur ei, in erant periculis eam, vim ex ceteros lobortis. Ei purto volumus sit, quo ut dolore facilisi. At ius iudico tollit iisque.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 4, '2023-01-16 01:22:09', '2023-01-16 02:16:24'),
(14, 'Elegant Group', 'Vikrant', 'elegantgroup', 'admin@elegantgroup.com', '$2y$10$xJxkMfo9/Sbu7WJUeAyTGunGIeX2P0X.DmhyZS40z7yOb1JcBFgYO', 'a68681c4e9092d16006e01468adf1546f2760248ba3e6938d1825cb06bc2ab3e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-03-29 05:11:48', '2025-03-29 05:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `company_industries`
--

CREATE TABLE `company_industries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_industries`
--

INSERT INTO `company_industries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Accounting Firm', '2023-01-12 03:32:15', '2023-01-12 03:32:15'),
(2, 'Software Company', '2023-01-12 03:32:27', '2023-01-12 03:32:27'),
(3, 'IT Company', '2023-01-12 03:32:34', '2023-01-12 03:32:34'),
(4, 'Real Estate Company', '2023-01-12 03:32:43', '2023-01-12 03:32:43'),
(5, 'Law Firm', '2023-01-12 03:32:53', '2023-01-12 03:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `company_locations`
--

CREATE TABLE `company_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_locations`
--

INSERT INTO `company_locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hyderabad', '2023-01-12 02:59:29', '2025-03-30 23:43:13'),
(2, 'Bengaluru', '2023-01-12 02:59:38', '2025-03-30 23:43:27'),
(3, 'Chennai', '2023-01-12 02:59:45', '2025-03-30 23:43:33'),
(4, 'Pune', '2023-01-12 02:59:51', '2025-03-30 23:43:39'),
(5, 'Noida', '2023-01-12 02:59:57', '2025-03-30 23:43:45'),
(6, 'Mumbai', '2023-01-12 03:00:11', '2025-03-30 23:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `company_photos`
--

CREATE TABLE `company_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_photos`
--

INSERT INTO `company_photos` (`id`, `company_id`, `photo`, `created_at`, `updated_at`) VALUES
(1, 2, 'company_photo_1673543078.jpg', '2023-01-12 11:04:38', '2023-01-12 11:04:38'),
(3, 2, 'company_photo_1673548094.jpg', '2023-01-12 12:28:14', '2023-01-12 12:28:14'),
(4, 12, 'company_photo_1674119922.jpg', '2023-01-19 03:18:42', '2023-01-19 03:18:42'),
(5, 12, 'company_photo_1674120083.jpg', '2023-01-19 03:21:23', '2023-01-19 03:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `company_sizes`
--

CREATE TABLE `company_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_sizes`
--

INSERT INTO `company_sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2-5 Persons', '2023-01-12 03:53:03', '2023-01-12 03:53:03'),
(2, '5-10 Persons', '2023-01-12 03:53:34', '2023-01-12 03:53:34'),
(3, '10-20 Persons', '2023-01-12 03:53:49', '2023-01-12 03:53:49'),
(4, '20-50 Persons', '2023-01-12 03:54:00', '2023-01-12 03:54:00'),
(5, '50-100 Persons', '2023-01-12 03:54:12', '2023-01-12 03:54:12'),
(6, '100+ Persons', '2023-01-12 03:54:21', '2023-01-12 03:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `company_videos`
--

CREATE TABLE `company_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `video_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_videos`
--

INSERT INTO `company_videos` (`id`, `company_id`, `video_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'j_Y2Gwaj7Gs', '2023-01-12 13:11:22', '2023-01-12 13:11:22'),
(3, 2, 'adyjQReasLk', '2023-01-12 13:40:10', '2023-01-12 13:40:10');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet qui gubergren?', '<p>Lorem ipsum dolor sit amet, qui gubergren assueverit definitiones ad. Cu solet delenit signiferumque est, nam impetus persequeris at. Quo te dignissim expetendis, mea tation soleat ea. Rebum oratio ius te, ut eum percipit delicatissimi.</p>', '2023-01-05 07:48:10', '2023-01-05 07:48:10'),
(2, 'Id quo habeo virtute evertitur pro dicta fabulas no?', '<p>Id quo habeo virtute evertitur, pro dicta fabulas no. Diceret alterum consectetuer eum an, ridens hendrerit ea vim, eam wisi viderer periculis eu. Est ad alii concludaturque, quas consetetur mel at. Dicunt evertitur omittantur no est. Cu mea suas bonorum imperdiet, sea graeci mediocritatem at.</p>', '2023-01-05 07:48:59', '2023-01-05 07:48:59'),
(3, 'Eum alii delectus adversarium ne id vim purto?', '<p>Eum alii delectus adversarium ne, id vim purto partiendo intellegat, mei illum doming cu. Ius at adhuc facilisis, quas ullum dissentiunt mel te. Id sanctus hendrerit gloriatur eum, sale malis assum ex pri, aliquid argumentum ut usu. Scripta appetere assentior ius id, ea suas purto eius eam. Vis platonem deseruisse persequeris ut, sit ne doctus accusam, mea ea nisl alienum. Pro nulla quando in, nam purto exerci ea.</p>\r\n<p>In vitae tollit iisque vel, odio laboramus neglegentur eum at. Eam eu simul quando definitionem. An vide adhuc sit, eu quo falli tritani. His viris aperiam ullamcorper ex, est adhuc ridens labores id. Ut vis saepe laudem eripuit, suscipit pericula percipitur eos ad. Unum epicurei ei nam.</p>', '2023-01-05 07:49:30', '2023-01-05 07:49:30'),
(4, 'Pri te errem recteque quo ne apeirian assueverit?', '<p>Pri te errem recteque. Quo ne apeirian assueverit philosophia, etiam debet ad duo. Nam an error paulo definitionem, an mandamus mediocrem mea, postea copiosae dissentiunt per at. Ut mea aliquando forensibus, modus nostrud torquatos ea ius.</p>', '2023-01-05 07:49:52', '2023-01-05 08:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `responsibility` text DEFAULT NULL,
  `skill` text DEFAULT NULL,
  `education` text DEFAULT NULL,
  `benefit` text DEFAULT NULL,
  `deadline` text NOT NULL,
  `vacancy` int(11) NOT NULL,
  `job_category_id` int(11) NOT NULL,
  `job_location_id` int(11) NOT NULL,
  `job_type_id` int(11) NOT NULL,
  `job_experience_id` int(11) NOT NULL,
  `job_gender_id` int(11) NOT NULL,
  `job_salary_range_id` int(11) NOT NULL,
  `map_code` text DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL,
  `is_urgent` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `company_id`, `title`, `description`, `responsibility`, `skill`, `education`, `benefit`, `deadline`, `vacancy`, `job_category_id`, `job_location_id`, `job_type_id`, `job_experience_id`, `job_gender_id`, `job_salary_range_id`, `map_code`, `is_featured`, `is_urgent`, `created_at`, `updated_at`) VALUES
(1, 2, 'Software Engineer', '<p>We are looking for a motivated PHP / Laravel developer to come join our agile team of professionals. If you are passionate about technology, constantly seeking to learn and improve your skillset, then you are the type of person we are looking for! We are offering superb career growth opportunities, great compensation, and benefits.</p>', '<p>- Develop, record and maintain cutting edge web-based PHP applications on portal plus premium service platforms</p>\r\n<p>- Build innovative, state-of-the-art applications and collaborate with the User Experience (UX) team</p>\r\n<p>- Ensure HTML, CSS, and shared JavaScript is valid and consistent across applications</p>\r\n<p>- Prepare and maintain all applications utilizing standard development tools</p>\r\n<p>- Utilize backend data services and contribute to increase existing data services API</p>\r\n<p>- Lead the entire web application development life cycle right from concept stage to delivery and post launch support</p>', '<p>- Previous working experience as a PHP / Laravel developer for 4 year(s)</p>\r\n<p>- BS/MS degree in Computer Science, Engineering, MIS or similar relevant field</p>\r\n<p>- In depth knowledge of object-oriented PHP and Laravel PHP Framework</p>\r\n<p>- Hands on experience with SQL schema design, SOLID principles, REST API design</p>\r\n<p>- Software testing (PHPUnit, PHPSpec, Behat)</p>\r\n<p>- MySQL profiling and query optimization</p>\r\n<p>- Creative and efficient problem solver</p>', '<p>- B.Sc. in CSE from any reputed University</p>\r\n<p>- CGPA minimum 3.50</p>', '<p>- Early finish on Fridays for our end of week catch up (4:30 finish, and drink of your choice from the bar)</p>\r\n<p>- 28 days holiday(including bank holidays) rising by 1 day per year PLUS an additional day off on your birthday</p>\r\n<p>- Generous annual bonus.</p>\r\n<p>- Healthcare package</p>\r\n<p>- Free Breakfast on Mondays and free snacks in the office</p>\r\n<p>- Cycle 2 Work Scheme</p>\r\n<p>- Brand new MacBook Pro</p>', '2023-01-14', 2, 1, 1, 1, 3, 3, 3, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10479.736858111415!2d-79.54941021538883!3d43.696075096261126!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89d4cb90d7c63ba5%3A0x323555502ab4c477!2sToronto%2C%20ON%2C%20Canada!5e0!3m2!1sen!2sbd!4v1673620210604!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2023-01-13 08:30:56', '2023-01-13 08:30:56'),
(2, 2, 'Web Designer', '<p>Lorem ipsum dolor sit amet, no tamquam gloriatur democritum mea, his suas everti ad. Odio nulla paulo vel ut, nam no primis accumsan, ad vis aliquam volumus delicatissimi. Tollit accumsan ei duo, his apeirian antiopam cu. At senserit laboramus gloriatur nam. Eu cetero similique nam. Eu dolorem nominavi nam.</p>\r\n<p>Te laudem labitur usu, iudico convenire abhorreant est cu. No discere philosophia necessitatibus vix, has te facete facilisi corrumpit, ne nec movet dolore. Usu modo dissentiunt ex, no iisque nonumes euripidis vel. Usu eius probatus consulatu ex. Suscipiantur intellegebat pri eu.</p>', '<p>- In iuvaret evertitur moderatius pri. Ei his quod labitur quaestio, veri homero ne ius.</p>\r\n<p>- Quod propriae delicatissimi at mel. Vis no dolor offendit torquatos.</p>\r\n<p>- Id dicit temporibus ullamcorper eos, mei an quas nonumy nusquam. In dictas reprehendunt vel, alterum mediocrem sadipscing ad vix.</p>\r\n<p>- Per hinc postulant ut, timeam impedit elaboraret no sit. Ne mel laudem scaevola, ut has esse facer omnes, cu sit eros decore democritum.</p>\r\n<p>- Sed et vide voluptatibus, cum graeco probatus incorrupte te.</p>', '<p>- Te sea erant numquam. Eu utamur explicari omittantur pri. Per odio omittantur cu, congue semper cu vis.</p>\r\n<p>- Sit in maiestatis theophrastus, causae blandit sit eu, dissentiet philosophia pro ex.</p>\r\n<p>- Est no sanctus debitis, id sale eleifend appellantur pri, ex elit liberavisse nam.</p>', '<p>- Et eos rebum graeci convenire, modus percipit vulputate an eam, eos soleat nostrud menandri ei.</p>\r\n<p>- Mutat ancillae vel id, qui id tota phaedrum senserit. Dico fabulas cu vis. Et reque dicta duo, eu ius aliquando liberavisse. Ad est possim quodsi.</p>', '<p>- In sea eirmod labores neglegentur, nam et latine maluisset sadipscing.</p>\r\n<p>- Nonumes neglegentur vim ad. Ne natum epicurei dissentias sed, mea elitr vivendo te.</p>\r\n<p>- Ei maiorum similique comprehensam sed. Suas mazim ludus eu ius, cum munere debitis interpretaris ut.</p>', '2023-01-28', 1, 1, 3, 2, 2, 1, 2, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4813.6601003929845!2d-76.08544139295589!3d43.002220188858225!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89d98b4f6e5bac81%3A0x7cba128675331aa0!2sRuston&#39;s%20Diner!5e0!3m2!1sen!2sbd!4v1673639605774!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-13 13:53:37', '2023-01-14 04:20:00'),
(4, 2, 'PHP Developer', '<p>Te laudem labitur usu, iudico convenire abhorreant est cu. No discere philosophia necessitatibus vix, has te facete facilisi corrumpit, ne nec movet dolore. Usu modo dissentiunt ex, no iisque nonumes euripidis vel. Usu eius probatus consulatu ex. Suscipiantur intellegebat pri eu.</p>\r\n<p>In iuvaret evertitur moderatius pri. Ei his quod labitur quaestio, veri homero ne ius. Quod propriae delicatissimi at mel. Vis no dolor offendit torquatos.</p>', '<p>- Id dicit temporibus ullamcorper eos, mei an quas nonumy nusquam.</p>\r\n<p>- In dictas reprehendunt vel, alterum mediocrem sadipscing ad vix. Per hinc postulant ut, timeam impedit elaboraret no sit.</p>\r\n<p>- Ne mel laudem scaevola, ut has esse facer omnes, cu sit eros decore democritum.</p>\r\n<p>- Sed et vide voluptatibus, cum graeco probatus incorrupte te.</p>', '<p>- Te sea erant numquam. Eu utamur explicari omittantur pri. Per odio omittantur cu, congue semper cu vis.</p>\r\n<p>- Sit in maiestatis theophrastus, causae blandit sit eu, dissentiet philosophia pro ex.</p>\r\n<p>- Est no sanctus debitis, id sale eleifend appellantur pri, ex elit liberavisse nam. Eam laoreet ponderum in, id vis audire aperiam.</p>\r\n<p>- Quod everti scripserit et nam, eam enim bonorum recteque eu.</p>', '<p>- Et eos rebum graeci convenire, modus percipit vulputate an eam, eos soleat nostrud menandri ei.</p>\r\n<p>- Mutat ancillae vel id, qui id tota phaedrum senserit.</p>\r\n<p>- Dico fabulas cu vis. Et reque dicta duo, eu ius aliquando liberavisse. Ad est possim quodsi.</p>', '<p>- In sea eirmod labores neglegentur, nam et latine maluisset sadipscing.</p>\r\n<p>- Nonumes neglegentur vim ad.</p>\r\n<p>- Ne natum epicurei dissentias sed, mea elitr vivendo te.</p>\r\n<p>- Ei maiorum similique comprehensam sed.</p>\r\n<p>- Suas mazim ludus eu ius, cum munere debitis interpretaris ut.</p>', '2023-02-09', 3, 8, 5, 1, 1, 1, 1, NULL, 1, 0, '2023-01-13 14:09:14', '2023-01-13 14:09:14'),
(6, 4, 'Experienced Legal Transcriptionist', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-08-14', 1, 3, 2, 1, 2, 1, 3, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2023-01-16 05:58:55', '2023-01-16 05:58:55'),
(7, 4, 'Law Clerk', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-08-14', 2, 3, 2, 1, 1, 3, 2, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-16 06:00:20', '2023-01-16 06:00:20'),
(8, 5, 'Legal Transcriber', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-08-14', 1, 3, 1, 2, 1, 1, 1, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-16 06:02:44', '2023-01-16 06:02:44'),
(9, 5, 'Computer Operator', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-01-16', 1, 4, 2, 1, 3, 3, 2, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-16 06:03:48', '2023-01-16 06:03:48'),
(10, 6, 'Python Developer', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-08-14', 2, 1, 3, 1, 2, 3, 4, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2023-01-16 06:07:05', '2023-01-16 06:07:05'),
(11, 6, 'Senior PHP Developer', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-08-14', 3, 1, 3, 1, 4, 1, 8, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-16 06:08:08', '2023-01-16 06:08:08'),
(12, 7, 'Senior Accounting Associate', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-08-16', 5, 3, 1, 1, 2, 1, 3, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2023-01-16 07:14:21', '2023-01-16 07:14:21'),
(13, 7, 'Administrative Bookkeeper', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-08-16', 1, 3, 1, 2, 3, 3, 5, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-16 07:15:28', '2023-01-16 07:15:28'),
(14, 8, 'Senior Budget Analyst', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-09-24', 2, 3, 4, 1, 1, 2, 6, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2023-01-16 07:17:39', '2023-01-16 07:17:39'),
(15, 8, 'Online Accounting Tutor', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-10-26', 1, 3, 5, 2, 1, 3, 3, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-16 07:18:44', '2023-01-16 07:18:44'),
(16, 9, 'Legal Transcription', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-11-13', 1, 3, 5, 1, 1, 1, 5, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2023-01-16 07:24:13', '2023-01-16 07:24:13'),
(17, 10, 'Legislative Assistant', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-06-29', 1, 13, 5, 2, 2, 2, 3, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-16 07:26:34', '2023-01-16 07:26:34'),
(18, 11, 'Commercial Real Estate Admin', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-09-16', 2, 6, 3, 1, 3, 3, 8, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2023-01-16 07:28:37', '2023-01-16 07:28:37'),
(19, 11, 'Realty Specialist', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-09-16', 2, 6, 1, 5, 2, 3, 6, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-16 07:29:38', '2023-01-16 07:29:38');
INSERT INTO `jobs` (`id`, `company_id`, `title`, `description`, `responsibility`, `skill`, `education`, `benefit`, `deadline`, `vacancy`, `job_category_id`, `job_location_id`, `job_type_id`, `job_experience_id`, `job_gender_id`, `job_salary_range_id`, `map_code`, `is_featured`, `is_urgent`, `created_at`, `updated_at`) VALUES
(20, 12, 'Global Real Estate Operation Analyst', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-09-16', 2, 5, 5, 1, 4, 3, 5, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-16 07:32:00', '2023-01-16 07:32:00'),
(21, 12, 'Real Estate Salesperson', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-05-16', 2, 5, 3, 1, 1, 1, 4, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-16 07:33:16', '2023-01-16 07:33:16'),
(22, 12, 'General Real Estate Appraiser', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-08-16', 5, 5, 3, 3, 1, 3, 6, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2023-01-16 07:34:21', '2023-01-16 07:34:21');

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `icon` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Engineering', 'fas fa-magic', '2023-01-02 04:16:29', '2023-01-02 04:16:29'),
(2, 'Medical', 'fas fa-stethoscope', '2023-01-02 04:17:07', '2023-01-02 04:17:07'),
(3, 'Accounting', 'fas fa-landmark', '2023-01-02 04:17:47', '2023-01-02 04:17:47'),
(4, 'Data Entry', 'fas fa-share-alt', '2023-01-02 04:18:11', '2023-01-02 04:55:52'),
(5, 'Marketing', 'fas fa-bullhorn', '2023-01-02 04:18:38', '2023-01-02 04:18:38'),
(6, 'Production', 'fas fa-sitemap', '2023-01-02 04:19:08', '2023-01-02 04:19:08'),
(7, 'Garments', 'fas fa-users', '2023-01-02 04:19:41', '2023-01-02 04:19:41'),
(8, 'Education', 'fas fa-user-graduate', '2023-01-02 04:20:22', '2023-01-02 04:20:22'),
(9, 'Technician', 'fas fa-street-view', '2023-01-02 04:20:41', '2023-01-02 04:20:41'),
(11, 'Security', 'fas fa-lock', '2023-01-02 21:25:02', '2023-01-02 21:25:02'),
(12, 'Telecommunication', 'fas fa-vector-square', '2023-01-02 21:25:26', '2023-01-02 21:25:26'),
(13, 'Commercial', 'fas fa-suitcase', '2023-01-02 21:25:54', '2023-01-02 21:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `job_experiences`
--

CREATE TABLE `job_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_experiences`
--

INSERT INTO `job_experiences` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Fresher', '2023-01-11 04:35:24', '2023-01-11 04:35:24'),
(2, '1 Year', '2023-01-11 04:35:32', '2023-01-11 04:35:32'),
(3, '2 Years', '2023-01-11 04:35:40', '2023-01-11 04:35:40'),
(4, '3 Years', '2023-01-11 04:35:47', '2023-01-11 04:35:47'),
(5, '4 Years', '2023-01-11 04:35:55', '2023-01-11 04:35:55'),
(6, '5 Years', '2023-01-11 04:36:02', '2023-01-11 04:36:02'),
(7, '5+ Years', '2023-01-11 04:36:12', '2023-01-11 04:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `job_genders`
--

CREATE TABLE `job_genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_genders`
--

INSERT INTO `job_genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Male', '2023-01-11 09:51:59', '2023-01-11 09:51:59'),
(2, 'Female', '2023-01-11 09:52:09', '2023-01-11 09:52:09'),
(3, 'Not Specified', '2023-01-11 09:52:23', '2023-01-11 09:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `job_locations`
--

CREATE TABLE `job_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_locations`
--

INSERT INTO `job_locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hyderabad', '2023-01-10 22:54:44', '2023-01-10 22:54:44'),
(2, 'Bengaluru', '2023-01-10 22:54:52', '2023-01-10 22:54:52'),
(3, 'Chennai', '2023-01-10 22:54:58', '2023-01-10 22:54:58'),
(4, 'Pune', '2023-01-10 22:55:07', '2023-01-10 22:55:07'),
(5, 'Mumbai', '2023-01-10 22:55:13', '2023-01-10 22:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `job_salary_ranges`
--

CREATE TABLE `job_salary_ranges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_salary_ranges`
--

INSERT INTO `job_salary_ranges` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '$100-$500', '2023-01-12 00:16:08', '2023-01-12 00:16:08'),
(2, '$500-$1000', '2023-01-12 00:16:34', '2023-01-12 00:16:34'),
(3, '$1000-$1500', '2023-01-12 00:16:46', '2023-01-12 00:16:46'),
(4, '$1500-$2000', '2023-01-12 00:17:04', '2023-01-12 00:17:04'),
(5, '$2000-$2500', '2023-01-12 00:17:22', '2023-01-12 00:17:22'),
(6, '$2500-$3000', '2023-01-12 00:17:44', '2023-01-12 00:17:44'),
(7, '$3000-$3500', '2023-01-12 00:17:56', '2023-01-12 00:17:56'),
(8, '$3500-$4000', '2023-01-12 00:18:19', '2023-01-12 00:18:19'),
(9, '$4000+', '2023-01-12 00:18:33', '2023-01-12 00:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Full Time', '2023-01-11 02:30:43', '2023-01-11 02:30:43'),
(2, 'Part Time', '2023-01-11 02:30:51', '2023-01-11 02:30:51'),
(3, 'Contractual', '2023-01-11 02:30:58', '2023-01-11 02:30:58'),
(4, 'Internship', '2023-01-11 02:31:11', '2023-01-11 02:31:11'),
(5, 'Freelance', '2023-01-11 02:31:21', '2023-01-11 02:31:21');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_18_035205_create_admins_table', 1),
(7, '2022_12_28_080549_create_page_home_items_table', 2),
(8, '2023_01_02_021122_create_job_categories_table', 3),
(9, '2023_01_03_084406_create_why_choose_items_table', 4),
(10, '2023_01_04_105324_create_testimonials_table', 5),
(11, '2023_01_05_065028_create_posts_table', 6),
(12, '2023_01_05_134141_create_faqs_table', 7),
(13, '2023_01_05_185142_create_page_faq_items_table', 8),
(14, '2023_01_06_035704_create_page_blog_items_table', 9),
(15, '2023_01_06_050415_create_page_term_items_table', 10),
(16, '2023_01_06_055951_create_page_privacy_items_table', 11),
(17, '2023_01_06_101905_create_page_contact_items_table', 12),
(18, '2023_01_07_025746_create_page_job_category_items_table', 13),
(19, '2023_01_07_064308_create_packages_table', 14),
(20, '2023_01_07_155714_create_page_pricing_items_table', 15),
(21, '2023_01_08_023955_create_page_other_items_table', 16),
(22, '2023_01_08_062413_create_companies_table', 17),
(23, '2023_01_08_104809_create_candidates_table', 18),
(24, '2023_01_10_055139_create_orders_table', 19),
(25, '2023_01_11_043448_create_job_locations_table', 20),
(26, '2023_01_11_081552_create_job_types_table', 21),
(27, '2023_01_11_102006_create_job_experiences_table', 22),
(28, '2023_01_11_104905_create_job_genders_table', 23),
(29, '2023_01_11_161512_create_job_salary_ranges_table', 24),
(30, '2023_01_12_082123_create_company_locations_table', 25),
(31, '2023_01_12_091915_create_company_industries_table', 26),
(32, '2023_01_12_094209_create_company_sizes_table', 27),
(33, '2023_01_12_165520_create_company_photos_table', 28),
(34, '2023_01_12_185742_create_company_videos_table', 29),
(35, '2023_01_13_051447_create_jobs_table', 30),
(36, '2023_01_14_132659_create_candidate_education_table', 31),
(37, '2023_01_14_173836_create_candidate_skills_table', 32),
(38, '2023_01_14_181556_create_candidate_experiences_table', 33),
(39, '2023_01_14_192647_create_candidate_awards_table', 34),
(40, '2023_01_14_201037_create_candidate_resumes_table', 35),
(41, '2023_01_17_080918_create_candidate_bookmarks_table', 36),
(42, '2023_01_17_123810_create_candidate_applications_table', 37),
(43, '2023_01_18_021823_create_advertisements_table', 38),
(44, '2023_01_18_040010_create_banners_table', 39),
(45, '2023_01_18_112645_create_subscribers_table', 40),
(46, '2023_01_19_053258_create_settings_table', 41);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `order_no` varchar(255) NOT NULL,
  `paid_amount` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `expire_date` varchar(255) NOT NULL,
  `currently_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `company_id`, `package_id`, `order_no`, `paid_amount`, `payment_method`, `start_date`, `expire_date`, `currently_active`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '1673344340', '19', 'PayPal', '2023-01-10', '2025-12-17', 1, '2023-01-10 03:52:20', '2023-01-12 12:23:54'),
(2, 2, 2, '1673344551', '29', 'PayPal', '2023-01-10', '2025-12-17', 1, '2023-01-10 03:55:51', '2023-01-12 12:23:54'),
(3, 2, 1, '1673344722', '19', 'PayPal', '2023-01-10', '2025-12-17', 1, '2023-01-10 03:58:42', '2023-01-12 12:23:54'),
(4, 2, 2, '1673348274', '29', 'Stripe', '2023-01-10', '2025-12-17', 1, '2023-01-10 04:57:54', '2023-01-12 12:23:54'),
(5, 2, 1, '1673348395', '19', 'Stripe', '2023-01-10', '2025-12-17', 1, '2023-01-10 04:59:55', '2023-01-12 12:23:54'),
(6, 2, 2, '1673547834', '29', 'Stripe', '2023-01-12', '2025-12-17', 1, '2023-01-12 12:23:54', '2023-01-12 12:23:54'),
(7, 4, 2, '1673870238', '29', 'PayPal', '2023-01-16', '2025-12-17', 1, '2023-01-16 05:57:18', '2023-01-16 05:57:18'),
(8, 5, 2, '1673870482', '29', 'Stripe', '2023-01-16', '2025-12-17', 1, '2023-01-16 06:01:22', '2023-01-16 06:01:22'),
(9, 6, 1, '1673870737', '19', 'PayPal', '2023-01-16', '2025-12-17', 1, '2023-01-16 06:05:37', '2023-01-16 06:05:37'),
(10, 7, 2, '1673874774', '29', 'Stripe', '2023-01-16', '2025-12-17', 1, '2023-01-16 07:12:54', '2023-01-16 07:12:54'),
(11, 8, 2, '1673874993', '29', 'PayPal', '2023-01-16', '2025-12-17', 1, '2023-01-16 07:16:33', '2023-01-16 07:16:33'),
(12, 9, 2, '1673875216', '29', 'PayPal', '2023-01-16', '2025-12-17', 1, '2023-01-16 07:20:16', '2023-01-16 07:20:16'),
(13, 10, 2, '1673875513', '29', 'PayPal', '2023-01-16', '2025-12-17', 1, '2023-01-16 07:25:13', '2023-01-16 07:25:13'),
(14, 11, 3, '1673875630', '49', 'PayPal', '2023-01-16', '2025-12-17', 1, '2023-01-16 07:27:10', '2023-01-16 07:27:10'),
(15, 12, 3, '1673875832', '49', 'Stripe', '2023-01-16', '2025-12-17', 1, '2023-01-16 07:30:32', '2023-01-19 03:21:02'),
(16, 12, 2, '1674120062', '29', 'Stripe', '2023-01-19', '2025-12-17', 1, '2023-01-19 03:21:02', '2023-01-19 03:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(200) NOT NULL,
  `package_price` smallint(6) NOT NULL,
  `package_days` smallint(6) NOT NULL,
  `package_display_time` varchar(100) NOT NULL,
  `total_allowed_jobs` tinyint(4) NOT NULL,
  `total_allowed_featured_jobs` tinyint(4) NOT NULL,
  `total_allowed_photos` tinyint(4) NOT NULL,
  `total_allowed_videos` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `package_price`, `package_days`, `package_display_time`, `total_allowed_jobs`, `total_allowed_featured_jobs`, `total_allowed_photos`, `total_allowed_videos`, `created_at`, `updated_at`) VALUES
(1, 'Basic', 19, 7, '1 Week', 2, 0, 0, 0, '2023-01-07 05:47:31', '2023-01-13 13:34:39'),
(2, 'Standard', 29, 30, '1 Month', 4, 2, 2, 2, '2023-01-07 05:48:43', '2023-01-13 13:34:50'),
(3, 'Gold', 49, 90, '3 Months', -1, 15, 10, 10, '2023-01-07 05:49:36', '2023-01-07 05:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `page_blog_items`
--

CREATE TABLE `page_blog_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_blog_items`
--

INSERT INTO `page_blog_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Blog', 'Blog', 'Blog', NULL, '2023-01-05 22:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `page_contact_items`
--

CREATE TABLE `page_contact_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `map_code` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_contact_items`
--

INSERT INTO `page_contact_items` (`id`, `heading`, `map_code`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Contact', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d21352.402716370183!2d-92.78038851217293!3d38.008773582048896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87c4de5cceb9b6bb%3A0x284be10f005781bd!2sCamdenton%2C%20MO%2065020%2C%20USA!5e0!3m2!1sen!2sbd!4v1673000849671!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Contact', 'Contact', NULL, '2023-01-06 19:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `page_faq_items`
--

CREATE TABLE `page_faq_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_faq_items`
--

INSERT INTO `page_faq_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Freequently Asked Questions (FAQ)', 'FAQ', 'FAQ', NULL, '2023-01-05 13:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `page_home_items`
--

CREATE TABLE `page_home_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `text` text DEFAULT NULL,
  `job_title` text NOT NULL,
  `job_category` text NOT NULL,
  `job_location` text NOT NULL,
  `search` text NOT NULL,
  `background` text NOT NULL,
  `job_category_heading` text NOT NULL,
  `job_category_subheading` text DEFAULT NULL,
  `job_category_status` text NOT NULL,
  `why_choose_heading` text NOT NULL,
  `why_choose_subheading` text DEFAULT NULL,
  `why_choose_background` text NOT NULL,
  `why_choose_status` text NOT NULL,
  `featured_jobs_heading` text NOT NULL,
  `featured_jobs_subheading` text DEFAULT NULL,
  `featured_jobs_status` text NOT NULL,
  `testimonial_heading` text NOT NULL,
  `testimonial_background` text NOT NULL,
  `testimonial_status` text NOT NULL,
  `blog_heading` text NOT NULL,
  `blog_subheading` text DEFAULT NULL,
  `blog_status` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_home_items`
--

INSERT INTO `page_home_items` (`id`, `heading`, `text`, `job_title`, `job_category`, `job_location`, `search`, `background`, `job_category_heading`, `job_category_subheading`, `job_category_status`, `why_choose_heading`, `why_choose_subheading`, `why_choose_background`, `why_choose_status`, `featured_jobs_heading`, `featured_jobs_subheading`, `featured_jobs_status`, `testimonial_heading`, `testimonial_background`, `testimonial_status`, `blog_heading`, `blog_subheading`, `blog_status`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Find Your Desired Job', 'Search the best, perfect and suitable jobs that matches your skills in your expertise area.', 'Job Title', 'Job Category', 'Job Location', 'Search', 'banner_home.jpg', 'Job Categories', 'Get the list of the job categories here', 'Show', 'Why Choose Us', 'Our Methods to help you build your career in future', 'why_choose_home_background.jpg', 'Show', 'Featured Jobs', 'Find the awesome jobs that matches your skill', 'Show', 'Our Happy Clients', 'testimonial_home_background.jpg', 'Show', 'Latest News', 'Check our latest news from the following section', 'Show', 'JobHunt - A Complete Job Directory Website', 'JobHunt - A Complete Job Directory Website', NULL, '2023-01-07 20:18:09');

-- --------------------------------------------------------

--
-- Table structure for table `page_job_category_items`
--

CREATE TABLE `page_job_category_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_job_category_items`
--

INSERT INTO `page_job_category_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Job Categories', 'Job Categories', 'Job Categories', NULL, '2023-01-06 21:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `page_other_items`
--

CREATE TABLE `page_other_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login_page_heading` text NOT NULL,
  `login_page_title` text DEFAULT NULL,
  `login_page_meta_description` text DEFAULT NULL,
  `signup_page_heading` text NOT NULL,
  `signup_page_title` text DEFAULT NULL,
  `signup_page_meta_description` text DEFAULT NULL,
  `forget_password_page_heading` text NOT NULL,
  `forget_password_page_title` text DEFAULT NULL,
  `forget_password_page_meta_description` text DEFAULT NULL,
  `job_listing_page_heading` text NOT NULL,
  `job_listing_page_title` text DEFAULT NULL,
  `job_listing_page_meta_description` text DEFAULT NULL,
  `company_listing_page_heading` text NOT NULL,
  `company_listing_page_title` text DEFAULT NULL,
  `company_listing_page_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_other_items`
--

INSERT INTO `page_other_items` (`id`, `login_page_heading`, `login_page_title`, `login_page_meta_description`, `signup_page_heading`, `signup_page_title`, `signup_page_meta_description`, `forget_password_page_heading`, `forget_password_page_title`, `forget_password_page_meta_description`, `job_listing_page_heading`, `job_listing_page_title`, `job_listing_page_meta_description`, `company_listing_page_heading`, `company_listing_page_title`, `company_listing_page_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Login', 'Login', 'Login', 'Create Account', 'Signup', 'Signup', 'Forget Password', 'Forget Password', 'Forget Password', 'Job Listing', 'Job Listing', 'Job Listing', 'Company Listing', 'Company Listing', 'Company Listing', NULL, '2023-01-18 21:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `page_pricing_items`
--

CREATE TABLE `page_pricing_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_pricing_items`
--

INSERT INTO `page_pricing_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Pricing', 'Pricing', 'Pricing', NULL, '2023-01-07 13:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `page_privacy_items`
--

CREATE TABLE `page_privacy_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `content` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_privacy_items`
--

INSERT INTO `page_privacy_items` (`id`, `heading`, `content`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', '<p>Ea pri harum eleifend, mel quodsi mentitum reformidans te. Tibique placerat luptatum eam ut, usu vocent prompta no. No agam verterem temporibus vis. Officiis scripserit sed no, eum ne quas accumsan efficiantur, in usu quas cetero sapientem. Ut appetere facilisi appellantur est, mei dolor corpora ne. Autem numquam atomorum ne mel.</p>\r\n<p>Altera noster appellantur nam cu, ponderum adversarium an eos. Alia ignota mediocrem nam et. Est quodsi inermis adversarium eu, sed atomorum mandamus intellegam id. Usu at insolens recteque.</p>\r\n<p>Nec prima laudem eu, in tale utroque incorrupte ius. Falli disputationi reprehendunt cum ea, te nec minim albucius neglegentur. Eos an ferri aperiam conceptam, ne qui legere cetero consequat. Quod adipiscing eos ad, ut quo quis principes torquatos. Laoreet sapientem cum ne. Pri simul impedit interesset ex.</p>\r\n<p>Mei eripuit interpretaris ut. Te quo numquam gloriatur, decore timeam per et. Ad sit amet hinc vulputate, ea habeo impedit torquatos pri, at semper facilis salutandi quo. Et brute recusabo adipiscing vim, eos viderer iudicabit no, ne mea fierent omnesque. In facete insolens expetenda quo, in labore impetus sea.</p>\r\n<p>Id sit aliquam praesent adolescens, cu eros mucius latine usu. Cu falli harum pertinacia his, vel placerat similique necessitatibus ea, labores graecis at mea. Te mel utamur impedit ponderum, pro ei tantas commune, accusam cotidieque ne mea. Aeterno graecis per ne, mei ut probatus patrioque. Mea suas nonumes no, dolorem invenire cu pri. Nam sumo democritum te, modo nostro iudicabit est in.</p>\r\n<p>Ea per quas electram similique, te posse sententiae pro. Eum no nostrud alterum epicuri, eum ea imperdiet posidonium inciderint. Eos albucius forensibus honestatis cu, volutpat hendrerit duo te, paulo everti nam ad. Ei eleifend percipitur disputationi cum, ea sint putent salutatus per, vix tibique maluisset argumentum an.</p>\r\n<p>Ex ius dicam alienum deterruisset. Ei sea sint ignota euripidis. Usu nonumes iracundia ne. Ad sint civibus per, eum iisque dissentias in, sea te rationibus elaboraret. Cibo luptatum no sed, recusabo maiestatis incorrupte te eam. Maluisset percipitur pro ex.</p>\r\n<p>Qui at definiebas eloquentiam adversarium, mel ferri inani laoreet ei. Ius ea habeo discere meliore. Soluta tempor efficiendi nec ei, sit ea electram signiferumque. Prompta insolens ad eum.</p>', 'Privacy Policy', 'Privacy Policy', NULL, '2023-01-06 03:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `page_term_items`
--

CREATE TABLE `page_term_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `content` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_term_items`
--

INSERT INTO `page_term_items` (`id`, `heading`, `content`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Terms of Use', '<p>Lorem ipsum dolor sit amet, vis ne aeterno regione, sea dicta vituperatoribus et. Ad offendit praesent nec. Ex tritani fuisset qui. Vero probo persecuti ex quo. Eum dico insolens ad, cu eam modo erant corrumpit, et vel quis probatus.</p>\r\n<p>Ei facilis menandri euripidis nam, eam eruditi repudiandae no. Has verterem scribentur ea, sea movet equidem cu. Sonet comprehensam mea te, in pri noluisse liberavisse, ius te placerat partiendo. Consequat forensibus usu at.</p>\r\n<p>Ei clita nemore has, facilisis vulputate usu eu. Facer everti ius id, mollis electram et per, his at error iusto. Eros consectetuer ut qui, ut eos nominavi scaevola honestatis. Ex quo porro indoctum volutpat, eos illum veritus ponderum ut. Viris indoctum tractatos at has.</p>\r\n<p>Sit vidisse fabulas neglegentur ad, sed te simul feugait luptatum. Et mei duis soleat, ne movet scaevola elaboraret qui. Saepe atomorum usu cu, tollit adipiscing has te. Vis ridens quodsi te, meis graecis ad eos, suas hinc nostro duo ut.</p>\r\n<p>Cibo alienum qui id. Tale partem appellantur te pri, ad animal neglegentur nam. Mundi alterum aliquando est no, ne mei saepe salutatus sadipscing. No mea utroque mandamus deseruisse, natum appareat pri ei. Cum an vocibus theophrastus, vis causae interesset an, in noster sapientem inciderint cum.</p>\r\n<p>Minim laudem nusquam in has, quo te veniam nominavi oporteat. Ius ut velit volutpat, eam scripta atomorum in. Eu labore nostro est. Sed ei odio convenire, oportere deseruisse eos ei.</p>\r\n<p>Ceteros suavitate scribentur no nam, ut feugiat assueverit est. Usu facete offendit gubergren ei. Pro impetus labitur veritus eu, ne ius omittam albucius. Eum an nullam regione facilis, ei impetus imperdiet instructior vim. Ad mei dicit nostrum recusabo. Purto dicat graeco eu vix.</p>\r\n<p>Nonumy veritus consetetur ei sit, possit gubergren ei per, affert salutandi et eos. Omnes animal facilis an cum, ex solum primis inciderint sea. Facilisi singulis definitionem ut nec. No mucius placerat evertitur est, per intellegat expetendis no. Ei ius rebum numquam, velit iuvaret repudiandae nec id. Ne everti impetus per.</p>', 'Terms of Use', 'Terms of Use', NULL, '2023-01-05 23:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `slug` text NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `total_view` text NOT NULL,
  `photo` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `heading`, `slug`, `short_description`, `description`, `total_view`, `photo`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet prima possit', 'lorem-ipsum-dolor-sit', 'Lorem ipsum dolor sit amet, prima possit deseruisse eu vix, vel te delectus principes persequeris, pro malorum utroque menandri te. Et cum etiam labore partiendo, an wisi ubique usu.', '<p>Lorem ipsum dolor sit amet, prima possit deseruisse eu vix, vel te delectus principes persequeris, pro malorum utroque menandri te. Et cum etiam labore partiendo, an wisi ubique usu. No impetus nonumes sed. Sale dolores et sed, eam ut delenit voluptatum omittantur, vis no paulo mnesarchum posidonium. In est alterum intellegam, nec an magna alienum intellegam.</p>\r\n<p>Possim percipit suavitate sed in. Usu cu rebum pericula, ut periculis vituperatoribus his. Ad per eleifend suavitate. At nec nullam vituperata, eos ridens civibus consequat ne. Eam ut congue tempor dissentiet, quas mollis per eu, vis nonumy possim ne.</p>\r\n<p>At expetenda repudiare has. Everti omnesque conceptam sea ex, ex qui eros legendos. Sed choro omnesque volutpat cu. Eu labore sententiae eam, at liber expetenda usu.</p>', '0', 'post_1672906250.jpg', 'Lorem ipsum dolor sit amet prima possit', 'Lorem ipsum dolor sit amet prima possit', '2023-01-05 02:10:50', '2023-01-05 22:27:22'),
(2, 'Possim percipit suavitate sed in usu cu', 'possim-percipit-suavitate', 'Possim percipit suavitate sed in. Usu cu rebum pericula, ut periculis vituperatoribus his. Ad per eleifend suavitate. At nec nullam vituperata, eos ridens civibus consequat ne.', '<p>Possim percipit suavitate sed in. Usu cu rebum pericula, ut periculis vituperatoribus his. Ad per eleifend suavitate. At nec nullam vituperata, eos ridens civibus consequat ne. Eam ut congue tempor dissentiet, quas mollis per eu, vis nonumy possim ne.</p>\r\n<p>At expetenda repudiare has. Everti omnesque conceptam sea ex, ex qui eros legendos. Sed choro omnesque volutpat cu. Eu labore sententiae eam, at liber expetenda usu.</p>\r\n<p>Melius minimum per te, dicant putent intellegam vel eu, cu pro copiosae forensibus dissentiet. Pro dicta habemus definiebas te. Te mea assueverit ullamcorper. Clita omittam disputando ut vim, porro conclusionemque has cu.</p>', '1', 'post_1672906331.jpg', 'Possim percipit suavitate sed in usu cu', 'Possim percipit suavitate sed in usu cu', '2023-01-05 02:12:11', '2023-01-05 22:53:44'),
(3, 'At nec sint wisi qui affert repudiare iracundia', 'at-nec-sint-wisi-qui', 'At nec sint wisi. Qui affert repudiare iracundia ad. His eu tollit altera, est eros falli vulputate eu, est ne quem prodesset maiestatis. Nonumes eloquentiam in vel id.', '<p>At nec sint wisi. Qui affert repudiare iracundia ad. His eu tollit altera, est eros falli vulputate eu, est ne quem prodesset maiestatis. Nonumes eloquentiam in vel, id audiam persecuti abhorreant eam.</p>\r\n<p>Eum no postea malorum. Nisl fierent in mel, an nominavi assentior his, in usu porro tincidunt mediocritatem. Vituperata disputando et has, at pro diceret lucilius evertitur. Eos at quot mucius accumsan, no oratio denique nostrum ius.</p>\r\n<p>Nisl tritani tincidunt eos id, veritus copiosae cu vix. Ne nam error argumentum definitiones, cu pro quodsi lucilius consetetur. Quot efficiantur ut qui, pri iudicabit moderatius in, usu ei mollis fabulas vituperata. Eos ridens reprehendunt in, et solet labore mei.</p>\r\n<p>Mei sonet ignota sensibus cu, ei sit consul volumus omittam. Nullam minimum ne his, ex has liber intellegam. Per eu quaeque ponderum, mel at periculis voluptaria, mei possit epicurei ea. An veniam iriure sanctus has, mel adolescens scribentur ne, enim salutandi ei his. Vim eu illum debet similique, munere indoctum sea an.</p>\r\n<p>&nbsp;</p>', '3', 'post_1672906404.jpg', 'At nec sint wisi qui affert repudiare iracundia', 'At nec sint wisi qui affert repudiare iracundia', '2023-01-05 02:13:24', '2023-01-05 22:27:53'),
(4, 'Eum no postea malorum nisl fierent', 'eum-no-postea', 'Eum no postea malorum. Nisl fierent in mel, an nominavi assentior his, in usu porro tincidunt mediocritatem. Vituperata disputando et has, at pro diceret lucilius evertitur.', '<p>Eum no postea malorum. Nisl fierent in mel, an nominavi assentior his, in usu porro tincidunt mediocritatem. Vituperata disputando et has, at pro diceret lucilius evertitur. Eos at quot mucius accumsan, no oratio denique nostrum ius.</p>\r\n<p>Nisl tritani tincidunt eos id, veritus copiosae cu vix. Ne nam error argumentum definitiones, cu pro quodsi lucilius consetetur. Quot efficiantur ut qui, pri iudicabit moderatius in, usu ei mollis fabulas vituperata. Eos ridens reprehendunt in, et solet labore mei.</p>\r\n<p>Mei sonet ignota sensibus cu, ei sit consul volumus omittam. Nullam minimum ne his, ex has liber intellegam. Per eu quaeque ponderum, mel at periculis voluptaria, mei possit epicurei ea. An veniam iriure sanctus has, mel adolescens scribentur ne, enim salutandi ei his. Vim eu illum debet similique, munere indoctum sea an.</p>', '0', 'post_1672906463.jpg', 'Eum no postea malorum nisl fierent', 'Eum no postea malorum nisl fierent', '2023-01-05 02:14:23', '2023-01-05 22:28:23'),
(5, 'Mei sonet ignota sensibus cu ei sit consul', 'mei-sonet-ignota', 'Mei sonet ignota sensibus cu, ei sit consul volumus omittam. Nullam minimum ne his, ex has liber intellegam. Per eu quaeque ponderum, mel at periculis voluptaria.', '<p>Mei sonet ignota sensibus cu, ei sit consul volumus omittam. Nullam minimum ne his, ex has liber intellegam. Per eu quaeque ponderum, mel at periculis voluptaria, mei possit epicurei ea. An veniam iriure sanctus has, mel adolescens scribentur ne, enim salutandi ei his. Vim eu illum debet similique, munere indoctum sea an.</p>\r\n<p>Ei sed harum fuisset tacimates, unum fuisset theophrastus nam ex, usu patrioque voluptaria no. At eam latine patrioque, impedit volutpat definitiones vis et. Mei at movet putant persius. Harum perfecto convenire et sed, vix in reque melius scriptorem, in nostrum similique per. Ut est exerci voluptatum. Salutandi persecuti ea quo, vide fabulas id qui.</p>', '1', 'post_1672906509.jpg', 'Mei sonet ignota sensibus cu ei sit consul', 'Mei sonet ignota sensibus cu ei sit consul', '2023-01-05 02:15:09', '2023-01-16 00:27:23'),
(6, 'Ei sed harum fuisset tacimates unum fuisset', 'ei-sed-harum-fuisset', 'Ei sed harum fuisset tacimates, unum fuisset theophrastus nam ex, usu patrioque voluptaria no. At eam latine patrioque, impedit volutpat definitiones vis et.', '<p>Ei sed harum fuisset tacimates, unum fuisset theophrastus nam ex, usu patrioque voluptaria no. At eam latine patrioque, impedit volutpat definitiones vis et. Mei at movet putant persius. Harum perfecto convenire et sed, vix in reque melius scriptorem, in nostrum similique per. Ut est exerci voluptatum. Salutandi persecuti ea quo, vide fabulas id qui.</p>\r\n<p>Ut sed singulis sapientem. Rebum ocurreret ne pro, ex cum dictas appareat efficiantur. Tractatos necessitatibus eu sed, ex pri appetere moderatius interpretaris. Eam id tantas detracto explicari, eam graece molestie cu. Mel cu pericula aliquando reprehendunt, putent lobortis consequuntur sea ex. Ei eam mucius tritani reformidans, ad his antiopam explicari assentior, in wisi iuvaret honestatis pri.</p>', '9', 'post_1672906552.jpg', 'Ei sed harum fuisset tacimates unum fuisset', 'Ei sed harum fuisset tacimates unum fuisset', '2023-01-05 02:15:52', '2023-01-18 00:12:58'),
(7, 'Mei singulis legendos in Iisque offendit jikum', 'mei-singulis-legendos', 'Mei singulis legendos in. Iisque offendit adipisci ius no, essent indoctum consequuntur et per, impetus alienum appetere vis cu. Alii principes scripserit pri at.', '<p>Mei singulis legendos in. Iisque offendit adipisci ius no, essent indoctum consequuntur et per, impetus alienum appetere vis cu. Alii principes scripserit pri at. Qui no tamquam dignissim, noster docendi id mei.</p>\r\n<p>Eos an latine albucius. Enim instructior ne vis, mel lorem alterum insolens eu. Probo principes cotidieque te has. Mei audire diceret mediocritatem in.</p>\r\n<p>At mediocritatem vituperatoribus est, an sale sensibus liberavisse eam. Cum ne consulatu percipitur, pro te ornatus antiopam. Vis id munere molestiae, doming fierent vis at. Per in dicant eripuit, omnis atqui soluta duo eu. Usu iudico nonumy scripserit te, eu nec velit libris eleifend, at nam illud saperet.</p>\r\n<p>&nbsp;</p>', '4', 'post_1672906696.jpg', 'Mei singulis legendos in Iisque offendit jikum', 'Mei singulis legendos in Iisque offendit jikum', '2023-01-05 02:18:16', '2023-01-16 00:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `top_bar_phone` text DEFAULT NULL,
  `top_bar_email` text DEFAULT NULL,
  `footer_phone` text DEFAULT NULL,
  `footer_email` text DEFAULT NULL,
  `footer_address` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `pinterest` text DEFAULT NULL,
  `linkedin` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `copyright_text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `top_bar_phone`, `top_bar_email`, `footer_phone`, `footer_email`, `footer_address`, `facebook`, `twitter`, `pinterest`, `linkedin`, `instagram`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, 'logo.png', 'favicon.png', '+91 9999999999', 'info@realestatejobs.com', '+91 9999999999', 'info@realestatejobs.com', '7th Floor, Block 2, My Home Hub, Madhapur, Patrika Nagar, HITEC City, Hyderabad', '#', '#', '#', '#', '#', 'Copyright 2025, Real Estate Jobs. All Rights Reserved.', NULL, '2025-03-30 23:37:19');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` text NOT NULL,
  `token` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'testing1@gmail.com', '', 1, '2023-01-18 05:41:36', '2023-01-18 05:43:31'),
(4, 'testing3@gmail.com', '', 1, '2023-01-18 09:39:32', '2023-01-18 09:39:51'),
(5, 'bharathreddy6701@gmail.com', 'db2f14e57cb443c836c0449400a130131fec65ccd7743d2cc1db5999fd6912d6', 0, '2025-03-29 05:04:26', '2025-03-29 05:04:26'),
(6, 'bharathreddy6701@gmail.com', '86e317d8b507d83eeeb7bbcea128056ddfb5e50680cfac0a1b26772e4246f9c8', 0, '2025-03-29 05:04:30', '2025-03-29 05:04:30'),
(7, 'bharathreddy6701@gmail.com', '2e7a75f46a697c2e8ded990e68a29ea6dc4db6169f94f47fb95c5884f0fd06fa', 0, '2025-03-29 05:04:34', '2025-03-29 05:04:34'),
(8, 'bharathreddy6701@gmail.com', 'c866c65297e644c6deaec625bcdf16c84362640ef7fa59dbe21506ab329738a4', 0, '2025-03-29 05:04:39', '2025-03-29 05:04:39'),
(9, 'bharathreddy6701@gmail.com', '56c23e69db2bd665637362ac996cc6d6d2b2c0f3714551588343ce3534e0804e', 0, '2025-03-29 05:05:06', '2025-03-29 05:05:06'),
(10, 'bharathreddy6701@gmail.com', '947ea520f499c5a7860c19fa2f70a9fa7e120890caca71a244ced149cd623cec', 0, '2025-03-29 06:02:12', '2025-03-29 06:02:12'),
(11, 'bharathreddy6701@gmail.com', '851df650fbeecdaecd09c24abe8c690d433972022992c8577690a3066d36e9f9', 0, '2025-03-29 06:02:17', '2025-03-29 06:02:17'),
(12, 'bharathreddy6701@gmail.com', '1d8e057d00e4d5ffda92561d600b0761d07fd709055b2fbcca44ea49486b3b33', 0, '2025-03-29 06:04:41', '2025-03-29 06:04:41'),
(13, 'bharathreddy6701@gmail.com', '2751f1d3692cfe91df700120345e55e434ecaebccd8ed32b54325ab6d279ea17', 0, '2025-03-30 23:48:42', '2025-03-30 23:48:42'),
(14, 'bharathreddy6701@gmail.com', 'f2c509a839f6b1f47e492ad58564271d494cfc599e4ed2494f0ee6e66b70ec72', 0, '2025-03-30 23:48:48', '2025-03-30 23:48:48'),
(15, 'bharathreddy6701@gmail.com', '21d822306a6e497b2dcf6c8778e1d6dab3db697541759be010636d21e0c62e18', 0, '2025-03-30 23:50:44', '2025-03-30 23:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `comment` text NOT NULL,
  `photo` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `comment`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Robert Krol', 'CEO, AA Company', 'Lorem ipsum dolor sit amet, quas dolore mel cu. Ut eos nihil minimum explicari, sed dicat graeci deserunt ei, dictas denique consectetuer ius ex. Iusto explicari delicatissimi eu cum, suas aliquid euripidis an eum, nam id paulo temporibus definitionem.', 'testimonial_1672831682.jpg', '2023-01-04 05:28:02', '2023-01-04 05:28:02'),
(2, 'Sal Harvey', 'Director, BB Company', 'Vidit sonet te vix, legere aliquip sed et, vix dico graeci placerat no. Ferri docendi appareat qui te, aperiam delenit mediocrem vel in, tantas aliquando intellegam his an. Interesset temporibus eos id, ut saepe petentium vim.', 'testimonial_1672831749.jpg', '2023-01-04 05:29:09', '2023-01-04 05:29:09');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lucy Grant', 'raphaelle79@example.net', '2025-03-29 05:33:09', '$2y$10$OHY6osyf2z1d30Hp6SxfeOt9hIphBW2TtVitSz9S6adC9w9NeV0di', 'Qd4uPLuEhw', '2025-03-29 05:33:09', '2025-03-29 05:33:09'),
(2, 'Prof. Lilliana Kling', 'zrunolfsdottir@example.net', '2025-03-29 05:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6AlVPrVLM1', '2025-03-29 05:33:09', '2025-03-29 05:33:09'),
(3, 'Chris Effertz', 'norma.lubowitz@example.com', '2025-03-29 05:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5ID1iroqMP', '2025-03-29 05:33:09', '2025-03-29 05:33:09'),
(4, 'Kenna Orn III', 'nicolette81@example.com', '2025-03-29 05:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XbWOUUEQNN', '2025-03-29 05:33:09', '2025-03-29 05:33:09'),
(5, 'Alvah Muller', 'qgoyette@example.org', '2025-03-29 05:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2RpGVcVvE4', '2025-03-29 05:33:09', '2025-03-29 05:33:09'),
(6, 'Ricardo Dickinson', 'grady.emery@example.net', '2025-03-29 05:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'igNb0Jqj6D', '2025-03-29 05:33:09', '2025-03-29 05:33:09'),
(7, 'Tobin Price', 'smith.pearlie@example.com', '2025-03-29 05:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5RUnsH3Oqo', '2025-03-29 05:33:09', '2025-03-29 05:33:09'),
(8, 'Dr. Iliana Gorczany', 'fahey.brian@example.net', '2025-03-29 05:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C01T4SHexe', '2025-03-29 05:33:09', '2025-03-29 05:33:09'),
(9, 'Earlene Wilkinson', 'stefan.feeney@example.net', '2025-03-29 05:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WSci5G4346', '2025-03-29 05:33:09', '2025-03-29 05:33:09'),
(10, 'Rubye Robel', 'moen.orland@example.org', '2025-03-29 05:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iLJ1V13RQz', '2025-03-29 05:33:09', '2025-03-29 05:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_items`
--

CREATE TABLE `why_choose_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text NOT NULL,
  `heading` text NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_choose_items`
--

INSERT INTO `why_choose_items` (`id`, `icon`, `heading`, `text`, `created_at`, `updated_at`) VALUES
(1, 'fas fa-briefcase', 'Quick Apply', 'You can just create your account in our website and apply for desired job very quickly.', '2023-01-03 03:48:54', '2023-01-03 09:21:55'),
(2, 'fas fa-search', 'Search Tool', 'We provide a perfect and advanced search tool for job seekers, employers or companies.', '2023-01-03 03:50:11', '2023-01-03 03:50:11'),
(3, 'fas fa-share-alt', 'Best Companies', 'The best and reputed worldwide companies registered here and so you will get the quality jobs.', '2023-01-03 03:50:35', '2023-01-03 03:50:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_applications`
--
ALTER TABLE `candidate_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_awards`
--
ALTER TABLE `candidate_awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_bookmarks`
--
ALTER TABLE `candidate_bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_education`
--
ALTER TABLE `candidate_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_experiences`
--
ALTER TABLE `candidate_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_skills`
--
ALTER TABLE `candidate_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_industries`
--
ALTER TABLE `company_industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_locations`
--
ALTER TABLE `company_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_photos`
--
ALTER TABLE `company_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_sizes`
--
ALTER TABLE `company_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_videos`
--
ALTER TABLE `company_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_experiences`
--
ALTER TABLE `job_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_genders`
--
ALTER TABLE `job_genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_locations`
--
ALTER TABLE `job_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_salary_ranges`
--
ALTER TABLE `job_salary_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_home_items`
--
ALTER TABLE `page_home_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_job_category_items`
--
ALTER TABLE `page_job_category_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_other_items`
--
ALTER TABLE `page_other_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_pricing_items`
--
ALTER TABLE `page_pricing_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_term_items`
--
ALTER TABLE `page_term_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `why_choose_items`
--
ALTER TABLE `why_choose_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `candidate_applications`
--
ALTER TABLE `candidate_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `candidate_awards`
--
ALTER TABLE `candidate_awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `candidate_bookmarks`
--
ALTER TABLE `candidate_bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `candidate_education`
--
ALTER TABLE `candidate_education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `candidate_experiences`
--
ALTER TABLE `candidate_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `candidate_skills`
--
ALTER TABLE `candidate_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `company_industries`
--
ALTER TABLE `company_industries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company_locations`
--
ALTER TABLE `company_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `company_photos`
--
ALTER TABLE `company_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company_sizes`
--
ALTER TABLE `company_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `company_videos`
--
ALTER TABLE `company_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `job_experiences`
--
ALTER TABLE `job_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `job_genders`
--
ALTER TABLE `job_genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_locations`
--
ALTER TABLE `job_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_salary_ranges`
--
ALTER TABLE `job_salary_ranges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_home_items`
--
ALTER TABLE `page_home_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_job_category_items`
--
ALTER TABLE `page_job_category_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_other_items`
--
ALTER TABLE `page_other_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_pricing_items`
--
ALTER TABLE `page_pricing_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_term_items`
--
ALTER TABLE `page_term_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `why_choose_items`
--
ALTER TABLE `why_choose_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
