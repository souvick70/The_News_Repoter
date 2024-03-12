-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2024 at 02:41 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_us` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_category_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_details_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `home_one`, `home_two`, `home_three`, `home_four`, `news_category_one`, `news_details_one`, `created_at`, `updated_at`) VALUES
(1, 'upload/banner/1791810106443883.gif', 'upload/banner/1791810400089152.png', 'upload/banner/1791811122934665.png', 'upload/banner/1791811135188834.png', 'upload/banner/1791811177291377.jpg', 'upload/banner/1791811442883230.png', '2024-02-24 19:08:59', '2024-02-24 14:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_applies`
--

CREATE TABLE `candidate_applies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `candidate_address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `candidate_address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `candidate_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `candidate_qualification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `candidate_no_of_vacancy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_role_designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `candidate_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `candidate_exprience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_id` int(11) NOT NULL,
  `job_posted_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_applies`
--

INSERT INTO `candidate_applies` (`id`, `candidate_name`, `candidate_address1`, `candidate_address2`, `candidate_email`, `candidate_qualification`, `candidate_no_of_vacancy`, `gender`, `job_role_designation`, `candidate_phone`, `candidate_exprience`, `job_id`, `job_posted_by`, `image`, `resume`, `message`, `created_at`, `updated_at`) VALUES
(2, 'Mita PAUL', 'SHIMULIAPARA, CHANDPARA BAZAR, NORTH 24 PGS', 'NEAR SHIVMANDIR', 'mitapaul89@gmail.com', 'B.Tech', '10', 'Female', '2', '97352 11482', '01 Years', 2, 'Shayam Das', '202403051312img019.jpg', '1709644345_RentNoDueCertificate (1).pdf', 'I am ready to join ASAP', '2024-03-05 07:42:25', '2024-03-05 07:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `carrers`
--

CREATE TABLE `carrers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_vacancy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exprience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carrers`
--

INSERT INTO `carrers` (`id`, `c_name`, `job_role`, `job_details`, `no_vacancy`, `role`, `exprience`, `status`, `created_at`, `updated_at`) VALUES
(1, 'The News Repoter', '4', '<p><a href=\"https://www.linkedin.com/company/american-express/\">American Express</a>&nbsp;is hiring for a Fresher Entry Level Data Analyst!..<br />\r\n<br />\r\nMin Experience: 0 years..<br />\r\nPreferred Experience: 1-2 years..<br />\r\n<br />\r\nCheck here -&nbsp;<a href=\"https://lnkd.in/gQFyrWgU\" target=\"_self\">https://lnkd.in/gQFyrWgU</a>..<br />\r\n<br />\r\nSQL quick interview prep in 90 min -&nbsp;<a href=\"https://lnkd.in/gh74Eytz\" target=\"_self\">https://lnkd.in/gh74Eytz</a>..<br />\r\n<br />\r\n<a href=\"https://www.linkedin.com/feed/hashtag/?keywords=freshersjob&amp;highlightedUpdateUrns=urn%3Ali%3Aactivity%3A7169995805913731072\">#freshersjob</a>&nbsp;<a href=\"https://www.linkedin.com/feed/hashtag/?keywords=hiring&amp;highlightedUpdateUrns=urn%3Ali%3Aactivity%3A7169995805913731072\">#hiring</a>&nbsp;<a href=\"https://www.linkedin.com/feed/hashtag/?keywords=openings&amp;highlightedUpdateUrns=urn%3Ali%3Aactivity%3A7169995805913731072\">#openings</a>&nbsp;<a href=\"https://www.linkedin.com/feed/hashtag/?keywords=opentohire&amp;highlightedUpdateUrns=urn%3Ali%3Aactivity%3A7169995805913731072\">#opentohire</a>..</p>', '25', 'Admin', 'Fresher(0-1) Years.', 1, '2024-03-03 16:44:07', '2024-03-03 23:40:39'),
(2, 'The News Repoter', '6', '<p><strong>Objectives of this role</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Collaborate with product design and engineering teams to develop an understanding of needs</p>\r\n	</li>\r\n	<li>\r\n	<p>Research and devise innovative statistical models for data analysis</p>\r\n	</li>\r\n	<li>\r\n	<p>Communicate findings to all stakeholders</p>\r\n	</li>\r\n	<li>\r\n	<p>Enable smarter business processes by using analytics for meaningful insights</p>\r\n	</li>\r\n	<li>\r\n	<p>Keep current with technical and industry developments</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Responsibilities</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Serve as lead data strategist to identify and integrate new datasets that can be leveraged through our product capabilities, and work closely with the engineering team in the development of data products</p>\r\n	</li>\r\n	<li>\r\n	<p>Execute analytical experiments to help solve problems across various domains and industries</p>\r\n	</li>\r\n	<li>\r\n	<p>Identify relevant data sources and sets to mine for client business needs, and collect large structured and unstructured datasets and variables</p>\r\n	</li>\r\n	<li>\r\n	<p>Devise and utilize algorithms and models to mine big-data stores; perform data and error analysis to improve models; clean and validate data for uniformity and accuracy</p>\r\n	</li>\r\n	<li>\r\n	<p>Analyze data for trends and patterns, and interpret data with clear objectives in mind</p>\r\n	</li>\r\n	<li>\r\n	<p>Implement analytical models in production by collaborating with software developers and machine-learning engineers</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Required skills and qualifications</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Seven or more years of experience in data science</p>\r\n	</li>\r\n	<li>\r\n	<p>Proficiency with data mining, mathematics, and statistical analysis</p>\r\n	</li>\r\n	<li>\r\n	<p>Advanced experience in pattern recognition and predictive modeling</p>\r\n	</li>\r\n	<li>\r\n	<p>Experience with Excel, PowerPoint, Tableau, SQL, and programming languages (ex: Java/Python, SAS)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ability to work effectively in a dynamic, research-oriented group that has several concurrent projects</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Preferred skills and qualifications</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Bachelor&rsquo;s degree (or equivalent) in statistics, applied mathematics, or related discipline</p>\r\n	</li>\r\n	<li>\r\n	<p>Two or more years of project management experience</p>\r\n	</li>\r\n	<li>\r\n	<p>Professional certification</p>\r\n	</li>\r\n</ul>', '10', 'Shayam Das', 'Fresher', 1, '2024-03-04 11:35:39', '2024-03-04 11:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(8, 'BUSINESS', 'business', '2024-02-23 06:27:22', '2024-02-23 06:27:25'),
(9, 'INTERNATIONAL', 'international', '2024-02-23 06:27:28', '2024-02-23 06:27:30'),
(11, 'ENVIORNMENT', 'enviornment', '2024-02-23 06:27:37', '2024-02-23 06:27:40'),
(12, 'YOUTH', 'youth', '2024-02-23 06:27:43', '2024-02-23 06:27:47'),
(13, 'LIFESTYLE', 'lifestyle', '2024-02-23 06:27:49', '2024-02-23 06:27:51'),
(14, 'EDUCATION', 'education', '2024-02-23 06:27:54', '2024-02-23 06:27:56'),
(15, 'SCI-TECH1', 'sci-tech1', '2024-02-23 06:28:00', '2024-02-23 05:09:46'),
(19, 'POLITICS', 'politics', '2024-02-23 06:28:06', '2024-02-23 06:28:08'),
(20, 'SPORTS', 'sports', '2024-03-01 13:14:57', '2024-03-01 09:29:31'),
(22, 'ENTERTAINMENT', 'entertainment', '2024-02-29 19:36:10', '2024-02-29 19:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `create_job_designations`
--

CREATE TABLE `create_job_designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `create_job_designations`
--

INSERT INTO `create_job_designations` (`id`, `job_designation`, `created_at`, `updated_at`) VALUES
(1, 'Software Quality Analyst', '2024-03-03 14:52:34', '2024-03-03 14:52:34'),
(2, 'Software Developer', '2024-03-03 14:52:43', '2024-03-03 14:52:43'),
(3, 'Dev-Ops', '2024-03-03 14:52:58', '2024-03-03 14:52:58'),
(4, 'Data Analyst', '2024-03-03 14:53:15', '2024-03-03 14:53:15'),
(5, 'Data Researcher', '2024-03-03 14:53:32', '2024-03-03 14:53:32'),
(6, 'Data Sceince', '2024-03-04 11:34:03', '2024-03-04 11:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_tvs`
--

CREATE TABLE `live_tvs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `live_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_tvs`
--

INSERT INTO `live_tvs` (`id`, `live_image`, `live_url`, `post_date`, `created_at`, `updated_at`) VALUES
(1, 'upload/live/1791964939873023.jpg', 'https://www.youtube.com/embed/iyOq8DhaMYw?si=sI_bvn4P1x8g5Zu9', '26 February 2024', NULL, '2024-02-26 11:51:00');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_20_163829_create_categories_table', 2),
(9, '2024_02_21_052033_create_subcategories_table', 3),
(10, '2024_02_22_092835_create_news_posts_table', 4),
(11, '2024_02_24_175739_create_banners_table', 5),
(12, '2024_02_25_162424_create_photo_galleries_table', 6),
(13, '2024_02_26_051325_create_video_galleries_table', 7),
(14, '2024_02_26_121211_create_live_tvs_table', 8),
(15, '2024_02_26_185358_create_reviews_table', 9),
(16, '2024_02_27_052835_create_seo_settings_table', 10),
(17, '2024_02_27_140943_create_permission_tables', 11),
(18, '2024_02_28_173705_create_notifications_table', 12),
(19, '2024_02_29_204947_create_abouts_table', 13),
(20, '2024_02_29_215536_create_privacy_policies_table', 14),
(21, '2024_02_29_220545_create_carrers_table', 15),
(22, '2024_03_01_070921_create_abouts_table', 16),
(23, '2024_03_03_193455_create_create_job_designations_table', 17),
(24, '2024_03_04_074000_create_candidate_applies_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 13),
(6, 'App\\Models\\User', 15),
(6, 'App\\Models\\User', 16),
(8, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `news_posts`
--

CREATE TABLE `news_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `news_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_title_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `breaking_news` int(11) DEFAULT NULL,
  `top_slider` int(11) DEFAULT NULL,
  `first_section_three` int(11) DEFAULT NULL,
  `first_section_nine` int(11) DEFAULT NULL,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `view_count` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_posts`
--

INSERT INTO `news_posts` (`id`, `category_id`, `subcategory_id`, `user_id`, `news_title`, `news_title_slug`, `image`, `news_details`, `tags`, `breaking_news`, `top_slider`, `first_section_three`, `first_section_nine`, `post_date`, `post_month`, `status`, `view_count`, `created_at`, `updated_at`) VALUES
(3, 19, 2, 1, 'HUGE 🚨 Karnataka BJP says \"Rahul Gandhi\'s slur against Aishwarya Rai is an insult to Kannadiga pride\".', 'huge-🚨-karnataka-bjp-says-\"rahul-gandhi\'s-slur-against-aishwarya-rai-is-an-insult-to-kannadiga-pride\".', 'upload/news/1791672567524237.jpeg', '<p>Karnataka BJP comes out in support of Aishwarya Rai after Rahul Gandhi&rsquo;s &lsquo;Dancing Aishwarya Rai&rsquo; remark. It states &quot;Aishwarya Rai, a Kannadiga, is a self made &amp; successful woman.&quot; &quot;Frustrated by constant rejections by Indians, A fourth-generation dynast, with zero achievements, has sunk to a new low of demeaning India&#39;s Pride Aishwarya Rai.&quot; - K&#39;taka BJP releases statement .<img alt=\"\" src=\"C:\\Users\\PC\\OneDrive\\Desktop\\pic\" /><img alt=\"⚡\" src=\"https://abs-0.twimg.com/emoji/v2/svg/26a1.svg\" style=\"border-style:solid; border-width:1px; height:10px; width:10px\" /></p>', 'General Secretary,Congress', 1, NULL, 1, NULL, '2024-02-23', 'February', 1, 3, '2024-02-29 07:14:12', '2024-02-29 01:44:12'),
(4, 19, 4, 5, 'Lok Sabha Election: INDIA bloc seat-sharing deal done in UP — Akhilesh Yadav\'s SP to contest 63 seats, Congress 17', 'lok-sabha-election:-india-bloc-seat-sharing-deal-done-in-up-—-akhilesh-yadav\'s-sp-to-contest-63-seats,-congress-17', 'upload/news/1791673327042965.jpeg', '<p>Congress Uttar Pradesh in-charge Avinash Pande announced on Wednesday that the party will contest on 17 of the 80 Lok Sabha seats in Uttar Pradesh. He&nbsp;<a href=\"https://twitter.com/PTI_News/status/1760278754079686905\" target=\"_blank\">said&nbsp;</a>the remaining 63 seats will have candidates of INDIA bloc &mdash; from Samajwadi Party (SP) and other parties.</p>\r\n\r\n<p>Meanwhile, Uttar Pradesh Congress president Ajay Rai said the Samajwadi Party will contest elections on 63 seats while the Congress will contest on 17 seats in Uttar Pradesh. &ldquo;The INDIA bloc will register victory in the upcoming Lok Sabha elections and will defeat NDA. Our (<a href=\"https://www.livemint.com/politics/news/if-congress-behaves-like-this-akhilesh-yadav-continues-to-spar-with-india-ally-over-mp-seat-sharing-11697799999344.html\" target=\"_blank\">Congress-Samajwadi Party</a>) strategy is to stand firmly with each other,&quot; he&nbsp;<a href=\"https://twitter.com/PTI_News/status/1760282443507204462\" target=\"_blank\">added</a>.</p>', 'India,Loksabha,Election', 1, 1, NULL, 1, '2024-02-23', 'February', 1, 2, '2024-02-25 14:17:09', '2024-02-25 14:17:09'),
(5, 19, 4, 1, 'Lok Sabha Election 2024 Date Likely To Be Announced After March 9: Reports', 'lok-sabha-election-2024-date-likely-to-be-announced-after-march-9:-reports', 'upload/news/1791673728791660.jpg', '<p>With curiousity increasing over the dates for the&nbsp;<a href=\"https://www.outlookindia.com/national/the-growing-list-of-political-leaders-who-ditched-india-bloc-for-nda-bjp-as-lok-sabha-polls-near\">Lok Sabha elections</a>&nbsp;due this year, sources indicate that the Election Commission of India&rsquo;s (ECI) top brass is heading to states for final checks and is likely to announce the poll schedule after March 9.</p>\r\n\r\n<p>The Lok Sabha or general elections to elect the members of the 18th Lok Sabha in India are expected to take place in April and May.</p>\r\n\r\n<p>As part of preparations for Lok Sabha elections 2024 and simultaneous assembly polls in a, a team of officials from ECI is undertaking back-to-back visits to states, a&nbsp;<em>news18.com</em>&nbsp;report mentioned.</p>\r\n\r\n<p>As per sources cited in the report, ECI representatives will be meeting government officials between March 8-9 to ask about the Jammu and Kashmir security situation and the availability of forces.</p>\r\n\r\n<p>The EC team will also be visiting Jammu and Kashmir on March 12-13 to assess the ground situation to see if Assembly polls in the UT can be conducted with Lok Sabha polls. &ldquo;The all will depend on the availability of forces,&rdquo; the report quoted sources as saying.</p>\r\n\r\n<p>In 2019, the Lok Sabha election schedule was announced on March 10. Polling was done in seven phases between April 11 and May 19 while the counting of votes took place on May 23.</p>', 'ECI,India,Nation', 1, 1, 1, 1, '2024-02-23', 'February', 1, 5, '2024-03-02 13:37:12', '2024-03-02 08:07:12'),
(6, 19, 4, 5, 'Lok Sabha Polls On April 16? Delhi Election Officer Clarifies After Internal Note Sparks Buzz', 'lok-sabha-polls-on-april-16?-delhi-election-officer-clarifies-after-internal-note-sparks-buzz', 'upload/news/1791674558656462.png', '<p>An internal note circulated by the office of Delhi&#39;s Chief Electoral Officer mentioning April 16 as the tentative &quot;poll date&quot; for Lok Sabha elections sparked massive speculation, prompting the officer to later issue a clarification over the same.</p>\r\n\r\n<p>In a letter on January 19, assistant chief electoral officer T Misao asked asked district officials to stick to the schedule, pointing that the Election Commission (EC) of India&rsquo;s Planner had listed April 16 as the poll date to calculate the timelines for various tasks.</p>\r\n\r\n<p>The circular created a flutter about the possible schedule of the upcoming polls.</p>\r\n\r\n<p>This led to Chief Electoral Officer&#39;s office issuing a clarification that the date was mentioned only for &quot;reference&quot; for officials to plan activities in accordance with the Election Planner issued by the poll panel.</p>\r\n\r\n<p>&quot;Some media queries are coming referring to a circular by @CeodelhiOffice to clarify whether April 16 is tentative poll day for Lok Sabha elections. It is clarified that this date was mentioned only for &#39;reference&#39; for officials to plan activities as per Election Planner of ECI,&quot; the CEO office posted on X.</p>\r\n\r\n<p>In a statement issued on Tuesday, the office of the Delhi CEO clarified that in the run-up to the 2024 Lok Sabha polls, &quot;it is required to plan and complete a large number of activities pertaining to election&quot;. &quot;ECI Planner enlists all such important activities and provides Start date and End date with reference to an imaginary poll date as reference point to initiate and complete those activities,&quot; it said.</p>\r\n\r\n<p>Therefore, the date mentioned as tentative poll date in the letter was &quot;only for reference purpose&quot; for the election officials and &quot;has no bearing on the actual schedule of election&quot; which shall be announced by ECI at an appropriate time, the statement said.</p>\r\n\r\n<p>One of the activities started by the EC recently is awareness campaign about electronic voting machines.</p>\r\n\r\n<p>According to EC&#39;s standing instructions, state Chief Electoral Officers need to start a focussed awareness campaign approximately three months prior to the announcement of election -- for this purpose the date of announcement of the last election may be considered.</p>\r\n\r\n<p>In 2019, Lok Sabha polls were announced on March 10 and were held in seven phases from April 11 to May 19. Votes were counted on May 23.</p>', '#India,#ECI,#NATION', 1, 1, 1, 1, '2024-02-23', 'February', 1, 2, '2024-02-25 14:17:20', '2024-02-25 14:17:20'),
(7, 19, 1, 1, 'Russia ‘uses up much of its ₹ balance in Indian banks’.', 'russia-‘uses-up-much-of-its-₹-balance-in-indian-banks’.', 'upload/news/1791675013910490.jpg', '<p>Russia has managed to use up most of its rupee balance, estimated by the industry at over $8 billion that had piled up in special vostro accounts of Indian banks on account of payments made largely for Russian defence purchases, and the matter is not a major concern now, officials have said.</p>\r\n\r\n<p>The rupee balance has been used up by Russia through multiple avenues that include payments for Indian imports, which increased about 39 per cent to $4.05 billion in 2023, investments in infrastructure projects, investments in the equity market and purchase of government securities, the official added.</p>\r\n\r\n<p>&ldquo;Till a few months ago, the Russians were worried about the piling up of rupee payments in their vostro accounts in India as they received payments for their defence sales, and some other items, in Indian currency due to the West&rsquo;s economic sanctions. The Indian government and the RBI then worked with Moscow to create suitable avenues for investment and also increase Indian exports to Russia.</p>', '#International,#Russia,#India', 1, NULL, 1, NULL, '2024-02-23', 'February', 1, 0, '2024-02-25 14:17:23', '2024-02-25 14:17:23'),
(8, 19, 1, 5, 'India and US key stakeholders in Indo-Pacific region: Defence Secretary.', 'india-and-us-key-stakeholders-in-indo-pacific-region:-defence-secretary.', 'upload/news/1791675425372818.png', '<h2>Initiatives on Critical and Emerging Technologies is pivotal of burgeoning relationship, Defence Secretary Giridhar Aramane says at INDUS-X Summit..</h2>\r\n\r\n<p>At a time when maritime domain is witnessing increasing contest from China and proxy war waged through pirates, Defence Secretary Giridhar Aramane on Wednesday said India and the US are key stakeholders in the Indo-Pacific region, bound by shared values and common interests.</p>\r\n\r\n<p>&ldquo;Today, we are witnessing a pivotal moment in the history of the Indo-Pacific region. The Indo-Pacific, with its vast expanse of oceans and strategic waterways, stands as the crossroad of global commerce, geopolitics and security. In navigating the complex dynamics of this region, India and the US find themselves as key stakeholders, bound by shared values and common interests,&rdquo; the Ministry of Defence quoted Defence Secretary Aramane as having said at the two-day INDUS-X Summit that ended on Wednesday.</p>\r\n\r\n<p>Participating in the Capstone session of the INDUS-X Summit, the Defence Secretary highlighted robust defence partnership between the two countries, which he stated was rooted in mutual respect and strategic convergence, the MoD said in a statement. Aramane mentioned that Initiatives on Critical and Emerging Technologies (iCET), launched jointly by Prime Minister Modi and President Joe Biden in 2022, was key to the burgeoning relationship. &ldquo;A pivotal aspect of our burgeoning relationship is the iCET that aims to establish &lsquo;Innovation Bridges&rsquo; across key sectors, including defence, through expos, hackathons, and pitching sessions,&rdquo; he stated.</p>\r\n\r\n<p>Others who attended the Capstone session of the INDUS-X Summit were INDOPACOM Commander Admiral John C Aquilino, US Ambassador Atul Keshap, President of USIBC and the session was moderated by Rexon Ryu, President of The Asia Group.Aramane talked about the Defence Innovation Bridge, a significant outcome of iCET serving as a catalyst for collaboration between US and Indian startups in the defence sector. In that regard, the Defence Secretary pointed out that the introduction of Joint IMPACT Challenges was a distinctive initiative aimed at collaboratively advancing defence and aerospace co-development and co-production initiatives.</p>', '#Defence,#Foreign Relations,#India  #Usa', 1, 1, NULL, 1, '2024-02-23', 'February', 1, 1, '2024-02-25 14:17:26', '2024-02-25 14:17:26'),
(9, 19, 3, 1, 'Russia was ridiculed at the start of the war. Two years on, it has reasons to be confident', 'russia-was-ridiculed-at-the-start-of-the-war.-two-years-on,-it-has-reasons-to-be-confident', 'upload/news/1791675890884920.png', '<p><strong>W</strong>hen Russia invaded Ukraine two years ago, the stout resistance mounted by the country&rsquo;s armed forces and overwhelming Western support for Kyiv &mdash; along with some obvious military overreach by Moscow &mdash; raised hopes that Ukraine&rsquo;s outnumbered and outgunned army could beat back the invading forces.</p>\r\n\r\n<p>Fast forward two years and hopes of a Ukrainian victory look diminished and increasingly hollow, as do Western pledges to support Ukraine &ldquo;for as long as it takes.&rdquo;</p>\r\n\r\n<p>As it stands, billions of dollars worth of American military aid remains unapproved with further struggles likely ahead, as war and funding fatigue grow in the run up to the U.S. presidential election &mdash; a vote that could see an administration installed that&rsquo;s less sympathetic to Ukraine&rsquo;s war needs.</p>\r\n\r\n<p>On the battlefield in Ukraine, meanwhile, the front lines have been broadly static for months,&nbsp;<a href=\"https://www.cnbc.com/2024/02/18/russia-takes-avdiivka-from-ukraine-biggest-gain-in-9-months.html\">save for recent gains that have been made</a>&nbsp;by Russian forces in the east of the country.</p>\r\n\r\n<p>Kyiv continues to insist it is not being given the proper tools to fight Russia as effectively as it could do, and there have been reports of morale ebbing among front line forces who are facing ammunition and personnel shortages. Internal political frictions and the replacement of popular military chief General Valerii Zaluzhnyi&nbsp;has also fueled concerns over military strategy going forward.</p>\r\n\r\n<p>&ldquo;This year is the most difficult year for Ukraine that there&rsquo;s been so far in this war, in part because of the disconcertion over Zaluzhnyi being replaced and the retreat from Avdiivka, but mostly, because of the massive uncertainty over the level of Western assistance and aid,&rdquo; James Nixey, the head of the Russia and Eurasia program at think tank Chatham House, said Monday.</p>\r\n\r\n<p>&ldquo;I think for Ukraine, there&rsquo;s really quite minimal difference between a president who can&rsquo;t deliver lethal aid and a president who won&rsquo;t deliver lethal aid. And for Ukrainians that&rsquo;s effectively one and the same thing, and it&rsquo;s an existential question. So Putin is not really betting everything he can on [Republican presidential hopeful Donald] Trump because he believes he can win whatever the outcome of the U.S. election in November,&rdquo; Nixey said.</p>\r\n\r\n<p>&ldquo;In other words, Putin senses weakness, as he so often has done in the past, and he is absolutely right. Whether his confidence is justified remains to be seen, but he at least more or less knows what he has at his disposal this summer, or this time next year or even beyond, and Ukraine simply can&rsquo;t say the same thing.&rdquo;</p>', '#War,#Russia', 1, 1, NULL, 1, '2024-02-23', 'February', 1, 0, '2024-02-25 14:17:29', '2024-02-25 14:17:29'),
(10, 19, 3, 5, 'Africa’s largest economy is battling a currency crisis and soaring inflation.', 'africa’s-largest-economy-is-battling-a-currency-crisis-and-soaring-inflation.', 'upload/news/1791676156375065.jpg', '<p>With annual inflation nearing 30% and a currency in freefall, Nigeria is facing one of its worst economic crises in years, provoking nationwide outrage and protests.</p>\r\n\r\n<p>The Nigerian naira hit a new all-time low against the U.S. dollar on both the official and parallel foreign exchange markets on Monday, sliding to almost 1,600 against the greenback on the official market from around 900 at the start of the year.</p>\r\n\r\n<p>President Bola Tinubu announced Tuesday that the federal government plans to raise at least $10 billion to boost foreign exchange liquidity and stabilize the naira, according to multiple local media reports.</p>\r\n\r\n<p>The currency is down around 70% since&nbsp;<a href=\"https://www.cnbc.com/2023/06/01/nigerias-new-president-vows-to-deliver-economic-reboot-as-he-inherits-a-broken-country.html\">May 2023 when Tinubu took office</a>, inheriting a struggling economy and promising a raft of reforms aimed at steadying the ship.</p>\r\n\r\n<p>In a bid to fix the beleaguered economy and attract international investment, Tinubu unified Nigeria&rsquo;s multiple exchange rates and&nbsp;<a href=\"https://apnews.com/article/nigeria-foreign-exchange-rate-naira-2d0d62bc89358b957edd602f506b7650\" target=\"_blank\">enabled market forces to set the exchange rate</a>, sending the currency plunging. In January, the market regulator&nbsp;<a href=\"https://www.reuters.com/world/africa/nigerias-latest-devaluation-may-be-turning-point-currency-reform-drive-2024-02-05/\" target=\"_blank\">also changed how it calculates the currency&rsquo;s closing rate</a>, resulting in another de facto devaluation.</p>\r\n\r\n<p>Years of foreign exchange controls have also generated enormous pent-up demand for U.S. dollars at a time when overseas investment and crude oil exports have declined.</p>', '#MARKETS,#Africa,#Infilation', 1, 1, NULL, 1, '2024-02-24', 'February', 1, 1, '2024-02-25 14:17:34', '2024-02-25 14:17:34'),
(11, 15, 7, 1, 'New AI tool can help find alien life in the solar system.', 'new-ai-tool-can-help-find-alien-life-in-the-solar-system.', 'upload/news/1791676650085754.jpg', '<p>Artificial intelligence (<a href=\"https://www.britannica.com/technology/artificial-intelligence/Reasoning\" target=\"_blank\">AI</a>) is fast becoming an integral part of our modern society. The number of things it can be used for seems almost endless. Astronomers are&nbsp;<a href=\"https://earthsky.org/space/artifical-intelligence-ai-is-helping-astronomers-make-new-discoveries/\" target=\"_blank\">already using it</a>&nbsp;to study galaxies, stars and planets. And one of the potential uses could help us solve the biggest question of all &hellip;&nbsp;<em>are we alone?</em>&nbsp;A new&nbsp;<a href=\"https://mitsloan.mit.edu/ideas-made-to-matter/machine-learning-explained\" target=\"_blank\">machine learning</a>&nbsp;technique offers that possibility: testing for current or past life in our solar system with 90% accuracy. Researchers at Carnegie Science developed the new AI-based technique and&nbsp;<a href=\"https://carnegiescience.edu/help-ai-we-may-soon-know-if-life-existed-mars\" target=\"_blank\">announced</a>&nbsp;it on September 25, 2023. They called it the&nbsp;<em>holy grail of astrobiology</em>.</p>\r\n\r\n<p>The researchers, led by&nbsp;<a href=\"https://hazen.carnegiescience.edu/\" target=\"_blank\">Robert Hazen</a>&nbsp;at Carnegie,&nbsp;<a href=\"https://www.pnas.org/doi/10.1073/pnas.2307149120\" target=\"_blank\">published</a>&nbsp;their&nbsp;<a href=\"https://www.pnas.org/author-center/editorial-and-journal-policies#peer-review-process\" target=\"_blank\">peer-reviewed</a>&nbsp;findings in&nbsp;<em>Proceedings of the National Academy of Sciences</em>&nbsp;on September 25, 2024.</p>', '#AI,#ML #Astronomers,#NASA,#Awasome', 1, 1, 1, 1, '2024-02-24', 'February', 1, 4, '2024-02-26 20:28:55', '2024-02-26 14:58:55'),
(12, 15, 5, 1, 'Can India’s State universities be hubs of skill-based science education?', 'can-india’s-state-universities-be-hubs-of-skill-based-science-education?', 'upload/news/1791678745825120.jpeg', '<p>By the third anniversary of the&nbsp;<a href=\"https://www.thehindu.com/news/national/kerala/experts-voice-opposition-to-new-education-policy/article66607851.ece\" target=\"_self\">National Education Policy 2020</a>, experts and policymakers have lauded its efforts to foster skill-based education and practical learning. With the potential to transform the education landscape, skill development is particularly relevant to higher science education in the country.</p>\r\n\r\n<p>In India, students choosing to study science at higher levels complete their Higher Secondary School Certificate (or equivalent) examinations in select science subjects, after which they are eligible for medicine, engineering, and bachelors of science (BSc) courses. While some institutes offer specialised degrees in medicine and engineering, a large segment of science education in India includes BSc-level and subsequent courses.</p>', '#Education,#Si-tech,#Technology', 1, 1, 1, 1, '2024-02-23', 'February', 1, 0, '2024-02-25 14:17:44', '2024-02-25 14:17:44'),
(13, 15, 5, 5, 'UN demands more global spending on education and science.', 'un-demands-more-global-spending-on-education-and-science.', 'upload/news/1791679237720487.png', '<p>The secretary general of the United Nations has called for a significant increase in education spending and investment so that targets in the UN&rsquo;s Sustainable Development Goal (SDG) for the sector are met.<br />\r\n<br />\r\nAt present, said UN Secretary General Ant&oacute;nio Guterres, in comments for the&nbsp;<a href=\"https://hlpf.un.org/2023\" target=\"_new\">UN&rsquo;s High-Level Political Forum on Sustainable Development (HLPF)</a>&nbsp;this month (July 10-19), progress towards SDG 4 to &ldquo;Ensure inclusive and equitable quality education and promote lifelong learning opportunities for all&rdquo; is weak.<br />\r\n<br />\r\n&ldquo;Recent analysis shows that almost US$100 billion per year is needed to allow countries to meet their national benchmarks for achieving Goal 4,&rdquo; said Guterres.<br />\r\n<br />\r\nHe said to deliver on Goal 4, &ldquo;education systems must be reimagined, and education financing must become a priority national investment&rdquo;.<br />\r\n<br />\r\nOne benefit of such investment would be that the other 16 SDGs, for which progress is also lacking, might be boosted through better universal education. Indeed, a&nbsp;<a href=\"https://hlpf.un.org/sites/default/files/2023-05/BN%20HLPF%202023%20STI_0.pdf\" target=\"_new\">background note from the UN secretariat</a>&nbsp;for the forum argued that science could be a saviour in achieving the SDGs, helping reverse a negative trend.<br />\r\n<br />\r\n<strong>Weak progress on half the SDGs</strong><br />\r\n<br />\r\nThe note said: &ldquo;At the halfway point of the 2030 Agenda for Sustainable Development, we are not on track to achieve the SDGs. Only 12% of the SDG targets are currently on track; progress on 50% is weak and insufficient; the world has stalled or gone in reverse on more than 30% of the SDGs.&rdquo;<br />\r\n<br />\r\nHowever, it added: &ldquo;Science, technology, and innovation (STI) can play a critical role in disrupting business-as-usual practices to help the world change course and get on track to achieve these goals.&rdquo;<br />\r\n<br />\r\nThe report recalled how &ldquo;rapid scientific research and global collaboration&rdquo; developed vaccines combating the COVID-19 pandemic, with technologies, such as mobile applications, helping ease the disease&rsquo;s economic fallout.<br />\r\n<br />\r\n&ldquo;Climate resilient technologies such as climate-smart agriculture, renewable energy technologies, and satellite technology for monitoring weather events can help address climate and environmental crises.<br />\r\n<br />\r\n&ldquo;Similar technological developments can improve efficiency and sustainability to reduce resource scarcity, which is an underlying cause of both human conflict and the rising cost of living,&rdquo; it stated.<br />\r\n<br />\r\n<strong>STI funding needs to be aligned</strong><br />\r\n<br />\r\nOverall, science, technology, and innovation could &quot;contribute immensely to advancing sustainability&rdquo;, but to achieve this, may require better alignment of scientific funding and priorities with sustainability priorities and the UN SDG 2030 agenda, argued the report.<br />\r\n<br />\r\nAlso speaking on Monday, Lachezera Stoeva, president of the UN Economic and Social Council (ECOSOC), highlighted the importance of innovation, technology, and high-impact partnerships between governments, civil society, private sector and academia in driving &ldquo;meaningful change&rdquo;.<br />\r\n<br />\r\nShe said: &ldquo;We are halfway to 2030 and yet nowhere near to achieving the SDGs,&rdquo; she said. &ldquo;The bad news is we&rsquo;ve lost seven years. The good news is, we still have seven years and victory is within our reach.&rdquo;<br />\r\n<br />\r\nAll these discussions in New York have been preparing the ground for a major&nbsp;<a href=\"https://www.un.org/en/conferences/SDGSummit2023\" target=\"_new\">SDG Summit</a>&nbsp;scheduled for September 18-19 (2023), again in New York.<br />\r\n<br />\r\nMarking the halfway point between the launch of the SDG process and its 2030 implementation deadline, this summit will deliver &quot;high-level political guidance on transformative and accelerated actions...&rdquo;, said a UN note.<br />\r\n<br />\r\n<strong>Gender challenge in green tech sectors</strong><br />\r\n<br />\r\nA synthesis of submissions by functional commissions of the Economic and Social Council and other intergovernmental bodies and forums to this week&rsquo;s preparatory forum added that one focus of future efforts might be to overcome gender imbalances in green technology sectors.<br />\r\n<br />\r\nThis is needed through better access to technical vocational education and training for women, including those capacity-building initiatives for training women who are already professionals in green industries, said&nbsp;<a href=\"https://hlpf.un.org/sites/default/files/2023-05/HLPF%202023%20Synthesis%20Report_0.pdf\" target=\"_new\">the synthesis of submissions report</a>.<br />\r\n<br />\r\nLooking at regional issues, a report for the forum by the Africa Regional Forum on Sustainable Development&nbsp;<a href=\"https://hlpf.un.org/sites/default/files/2023-06/E%20HLPF%202023%203%20Add%201.pdf\" target=\"_new\">argued</a>&nbsp;that the UN Economic Commission for Africa (ECA) should &ldquo;accelerate the evolution of an African-driven science and technology education in universities that includes indigenous knowledge and innovative approaches&rdquo;.<br />\r\n<br />\r\nIt also urged African UN member states to promote open science, such as free academic publishing, following UNESCO recommendations, &ldquo;as an essential framework for transformative international scientific cooperation&rdquo;.<br />\r\n<br />\r\nGuterres said, there had been some progress on education, despite his concerns about SDG 4 &ndash; at the sub-tertiary level, between 2015 and 2021, school completion rate increased from 85% to 87% for primary; 74% to 77% lower secondary level; 53% cent to 58% upper secondary level. Should SDG 4 be better achieved &ldquo;to better prepare learners of all ages for the future&rdquo; &ndash; it will further support acceleration of all SDG goals, said the secretary general.<br />\r\n<br />\r\nAur&eacute;lien Decamps, managing director and co-founder of Sulitest, a key partner of the UN Higher Education Sustainability Initiative (HESI), and a sustainability progress assessor, told&nbsp;<em>University World News</em>&nbsp;that he accepted more work is needed on sustainability, including in higher education.<br />\r\n<br />\r\n<strong>Green employability skills needed</strong><br />\r\n<br />\r\n&ldquo;There is room for specific tasks working on employability and green jobs, working on sustainability and knowledge and...best practices...to transform the curriculum and equip students with relevant skills and knowledge for sustainability.&rdquo;<br />\r\n<br />\r\nSpeaking to&nbsp;<em>University World News</em>&nbsp;in New York as the SDG forum sessions were under way, he said the liaison work of HESI is important, because it can &ldquo;connect different stakeholders who are not used to collaborating&rdquo;, helping to launch and advance new projects.<br />\r\n<br />\r\n&ldquo;It&rsquo;s an unusual initiative. This is a platform where you have 10 UN agencies working together with academic networks, higher education institutions and student organisations.&rdquo;<br />\r\n<br />\r\nIt is being effective in bridging these government institutions with HE, he said.<br />\r\n<br />\r\n<strong>HESI pushing for change in HE</strong><br />\r\n<br />\r\nThe involvement of students in HESI can be particularly important in pushing change in higher education, which can be conservative, he said.<br />\r\n<br />\r\n&ldquo;I have been in academia myself. I was teaching in a business school, and I could see sometimes ideas that we were pushing for a long time, and then suddenly students ask for it, and suddenly it&#39;s more audible and the school will change faster.&rdquo;<br />\r\n<br />\r\nDecamps added: &ldquo;Sustainability has become a trendy topic. It is everywhere now. There is some greenwashing but at least we&#39;re talking about sustainability, so it&rsquo;s important to connect all those initiatives that are popping up on the student side; on the university side; on the UN and the [governmental] institution side, so that the SDGs are providing us with a coherent road map.&rdquo;<br />\r\n<br />\r\nThe key is moving sustainability into the arena of decision-makers, especially in higher education: &ldquo;We&rsquo;re going to be a bit more professional about this issue.&rdquo;<br />\r\n<br />\r\nHe said that although measuring and assessing sustainability progress &ldquo;might not be the sexiest part of the agenda...it&#39;s a crucial piece&rdquo;.<br />\r\n<br />\r\nSulitest&rsquo;s work as a data provider for accreditation bodies and initiatives aids managers delivering quality assurance and performance in education. &ldquo;If we don&#39;t change the dashboard and the indicators that are assessing performance, we will still teach business as usual and leadership as usual. It&rsquo;s time to advance on that.&rdquo;</p>', 'awesome,#Education,#UN', 1, 1, NULL, 1, '2024-02-25', 'February', 1, 0, '2024-02-25 14:17:51', '2024-02-25 14:17:51'),
(14, 15, 6, 1, 'Sony launches INZONE TWS gaming earbuds', 'sony-launches-inzone-tws-gaming-earbuds', 'upload/news/1791688832608671.png', '<p>Sony on Thursday announced the launch of INZONE Buds, the company&rsquo;s latest truly-wireless gaming earbuds. The buds were designed in collaboration with esports team Fnatic, professional London-based esports organisation that competes in many games like Apex Legends, Counter-Strike 2, Dota 2, FC Online, Heroes of the Storm, League of Legends, Rainbow Six Siege, and Valorant.</p>\r\n\r\n<p>The INZONE Buds come with active noise cancellation and personalised spatial sound. The company promises up to 12 hours of continuous usage. It is powered by a low-consumption L1 processor aimed at providing extended gaming sessions without interruption. It also comes with a quick charging feature, which can provide up to an hour of playtime with just a 5-minute charge.</p>\r\n\r\n<p>The new&nbsp;<a href=\"https://indianexpress.com/about/sony/\">Sony</a>&nbsp;earbuds are also designed to make sure that it has minimal ear contact. Minimising ear contact allows users, in this case, gamers, to game for long and extended sessions without any discomfort.</p>\r\n\r\n<p>The device supports a 2.4 GHz wireless connection though a USB type-C dongle, which will have a lower latency than the Bluetooth LE Audio that it supports using the LC3 codec. Sony claims that it offers latency of under 30ms. Interestingly, more conventional Bluetooth codecs, like SBC, AAC, aptX and LDAC, are not supported. Sony says this emphasises the device&rsquo;s focus on gaming.</p>\r\n\r\n<p>Just like seemingly almost every other device launching nowadays, the INZONE buds also use AI. The Sony earbuds use an AI-assisted microphone designed to offer clearer audio communication while gaming.</p>', 'awesome,#earbuds,#Sony,#Technology,#Gadgets', 1, NULL, NULL, 1, '2024-02-26', 'February', 1, 0, '2024-02-26 20:47:56', '2024-02-26 15:17:56'),
(15, 15, 6, 5, '‘The world’s most valuable chipmaker’: How Nvidia saw a 250% surge in revenues amid AI stock rally.', '‘the-world’s-most-valuable-chipmaker’:-how-nvidia-saw-a-250%-surge-in-revenues-amid-ai-stock-rally.', 'upload/news/1791689147291606.png', '<p>Shares of Nvidia Corporation, the undisputed king of advanced chips that are driving artificial intelligence (AI) applications, surged the most in about nine months after the American chipmaker<a href=\"https://indianexpress.com/article/business/world-market/nvidia-2-trillion-dollar-valuation-stock-market-9176389/\"><strong>&nbsp;delivered yet another bumper earnings forecast.</strong></a></p>\r\n\r\n<p>Nasdaq-listed Nvidia&rsquo;s stock surge added fresh momentum to what is being described as a &lsquo;FOMO&rsquo; AI stock rally, which has already propelled the Santa Clara-based chipmaker to the title of the world&rsquo;s most valuable chipmaker, eclipsing storied competitors such as&nbsp;<a href=\"https://indianexpress.com/about/intel/\">Intel</a>&nbsp;and AMD.</p>\r\n\r\n<p>Nvidia&rsquo;s revenues during the fourth quarter of 2023 topped $22 billion, an over 250% surge compared to the previous year, higher than analysts&rsquo; consensus forecast of around $20 billion. Its gross margins &ndash; a key profitability metric &ndash; surged to well over 700% during the quarter.</p>\r\n\r\n<p>&ldquo;Accelerated computing and generative AI have hit the tipping point,&rdquo; Chief Executive Officer Jensen Huang said in the statement. &ldquo;Demand is surging worldwide across companies, industries and nations.&rdquo;</p>\r\n\r\n<p>According to&nbsp;<em>Bloomberg</em>&nbsp;data, Nvidia&rsquo;s market capitalization has now increased by more than $600 billion this year &mdash; bringing its valuation to nearly $1.90 trillion. Before the results announcement, analysts at Goldman Sachs had pegged Nvidia as &ldquo;the most important stock on planet Earth&rdquo;, a reflection of the fact the chipmaker currently controls over 80% of the AI chip market and is likely to remain in a dominant position well into the future.</p>', '#NVIDIA,#TECHNOLOGY,#AI,awesome', 1, 1, NULL, 1, '2024-02-24', 'February', 1, 0, '2024-02-25 14:17:59', '2024-02-25 14:17:59'),
(16, 14, 9, 1, '05 Strategies For A Successful Career As A Freelancer In 2024.', '05-strategies-for-a-successful-career-as-a-freelancer-in-2024.', 'upload/news/1791689720252365.png', '<p>A career as a freelancer is an exhilarating journey&mdash;one that is certainly filled with ups and downs, but nonetheless holds hope with the potential of improved working and pay conditions, and a better lifestyle, compared to working in the regular corporate sense.</p>\r\n\r\n<p>But since it&#39;s not a traditional form of employment, you can&#39;t expect to get it right from the start, without some adequate preparation. Freelancing requires you to follow a set of principles to be successful and have a sustainable career. Let&#39;s take a look at some of them below:</p>\r\n\r\n<pre>\r\n1. Identify Your Niche</pre>\r\n\r\n<p>Define what makes you unique. There are million other freelancers offering the same product or service as you, working within the same industry. So what makes your brand stand out above the rest? Why should people choose to work with you and not another specialist? What are your areas of expertise, and what specialized skills or experience do you have?</p>\r\n\r\n<p>You also need to ask yourself, Who would be able to benefit the most from my service? This is an extremely important question, because without understanding the answer, you will likely have an inadequate supply of clients, and hardly elicit any interest, which will work to the detriment of your freelancing career.</p>\r\n\r\n<pre>\r\n2. Define Clear Goals</pre>\r\n\r\n<p>Just like with a regular job, you need to establish a framework of goals for yourself as a freelancer. In fact, it&#39;s even more essential to set goals as a freelancer than in a 9-5 job, because within an employer structure you have people holding you accountable, but as a freelancer you&#39;re likely working on your own.</p>\r\n\r\n<p>Establishing goals gives you motivation, and provides something to work towards. You can set long-term and short-term goals for a variety of objectives, such as financial goals, website traffic and SEO visibility goals, or social media post engagement and client conversion.Try to avoid setting vanity goals&mdash;that is, goals that are there to make you look good but have no tangible value, such as follower count on social media or viral content views. This is because, on their own, these are distracting and don&#39;t do much for you if they don&#39;t translate into more clients or increased professional contacts to use in the future.</p>\r\n\r\n<pre>\r\n3. Create A Strong Portfolio</pre>\r\n\r\n<p>The next step is to create a solid portfolio of your work. People won&#39;t trust working with you unless they see your services in action, and this is especially true for online-based work. What reason do they have to believe that you are genuine and not a scam?</p>\r\n\r\n<p>This is why one of the most important activities you can do as a freelancer is to develop an initial set of products or services to display, and gain testimonials from clients who have worked with you for free, so that you have proof of the authenticity and impact of your services.</p>\r\n\r\n<pre>\r\n4. Build Your Personal Brand</pre>\r\n\r\n<p>Personal branding plays a critical role in attracting clients to you and your services, and ensuring your brand as a freelancer is memorable and easily identifiable. Craft a cohesive brand that encapsulates your values, flair, and personality, and is in line with your industry and sector as well. Never underestimate the value of branding elements like a logo, personal website, a compelling LinkedIn profile, or your online engagement and presence.</p>\r\n\r\n<pre>\r\n5. Master Your Time</pre>\r\n\r\n<p>As a freelancer you will often be short on time, because you&#39;ll be working on your own. Unlike a regular job, you will need to prepare for the harsh reality of doing the jobs of a marketing team, financial team, business development team, and the actual service/products delivery&mdash;all at the same time.</p>\r\n\r\n<p>Of course, as you expand and develop you can reinvest money from your business to outsource some of these functions to virtual assistants, AI tools, or agencies such as marketing agencies.</p>\r\n\r\n<p>&nbsp;</p>', 'awesome,#carrrer,#Freelencer', 1, NULL, NULL, 1, '2024-02-23', 'February', 1, 0, '2024-02-25 14:18:03', '2024-02-25 14:18:03'),
(17, 14, 9, 5, 'Religious tourism to create up to 2 lakh job opportunities in 4-5 years in India, says NLB Services.', 'religious-tourism-to-create-up-to-2-lakh-job-opportunities-in-4-5-years-in-india,-says-nlb-services.', 'upload/news/1791690184860778.png', '<p>Mumbai, Religious tourism is expected to create up to 2 lakh job opportunities in the next 4-5 years, global technology and digital talent solutions provider NLB Services CEO Sachin Alug said. Religious tourism has been gaining momentum in India and is expected to grow annually at over 16 per cent between 2023 and 2030, Alug said.<br />\r\n<br />\r\nAccording to him, the segment accounts for 60 per cent of domestic tourism.&quot;In the next 4-5 years, religious tourism is anticipated to create up to two lakh job opportunities. With a projected revenue of USD 60 billion by 2028, religious tourism will open employment avenues for both temporary and permanent workers,&quot; Alug told PTI.According to industry reports, the number of overnight journeys for pilgrimages went up post-Covid and there was a 14 per cent rise in donations in 2021-2022, he said.<br />\r\n<br />\r\nThe recent inauguration of Ram Mandir in Ayodhya could further boost religious tourism, he said.<br />\r\n<br />\r\n&quot;The inauguration of Ram Mandir alone is expected to add nearly 25,000 jobs across multiple roles, such as chef, front desk manager, housekeepin&nbsp;..<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'Religious Tourism,Job Opportunities,#India,Carrer', 1, 1, NULL, 1, '2024-02-23', 'February', 1, 0, '2024-02-25 14:18:08', '2024-02-25 14:18:08'),
(18, 13, 11, 1, 'Milan Fashion Week: Fendi offers chic utilitarian clothes', 'milan-fashion-week:-fendi-offers-chic-utilitarian-clothes', 'upload/news/1791691004984588.png', '<h3><strong>Designer </strong>Kim Jones&#39; collection married 1980s British subculture with Roman style, epitomized by Silvia Venturini Fendi.</h3>\r\n\r\n<p>An anti-fur protester crashed the Fendi runway show Wednesday during the first day of Milan Fashion Week of mostly womenswear previews for Fall-Winter 2024-25.</p>\r\n\r\n<p>The PETA activist jumped into the models&rsquo; finale holding up a sign that read &ldquo;Animals are not clothing,&rdquo; before being whisked away by security. The animal rights group is pressuring Fendi to join other global fashion brands that have agreed to use synthetic alternatives to real fur.</p>\r\n\r\n<p>Fendi was born nearly a century ago as a fur and leather shop in Rome, and fur remains a core part of the brand&rsquo;s DNA, even if featured a bit less on their runway shows in recent years.</p>', 'awesome,#Looks Beautiful,#Fashion,#Lyfestyle', NULL, 1, NULL, 1, '2024-02-23', 'February', 1, 0, '2024-02-25 14:18:11', '2024-02-25 14:18:11'),
(19, 13, 11, 1, 'Mrunal Thakur turns heads in glamorous black embroidered blazer set worth ₹88k, redefines ethnic fashion trends..', 'mrunal-thakur-turns-heads-in-glamorous-black-embroidered-blazer-set-worth-₹88k,-redefines-ethnic-fashion-trends..', 'upload/news/1791691217288527.png', '<p>Mrunal Thakur is here to give you some stylish ethnic fashion inspiration as the diva stuns in an all black coordinated ensemble. The gorgeous actress is a total stunner who never fails to hit style targets like a pro. Whether it&#39;s a sartorial saree or a chic pantsuit, Mrunal can pull off any look to perfection. The stylish diva is quite active on social media and her glam Insta-diaries are nothing short of a treasure trove of style inspiration. Especially when it comes to ethnic fashion, Mrunal loves to get decked out in fancy sharara sets or exquisite anakalis. Her latest look, a three-piece black attire exuding glamour, is no exception and is sure to inspire your wardrobe.(Instagram/@mrunalthakur)On Thursday, Mrunal gave her fans a sweet surprise as the actress took to Instagram and uploaded a series of glam pictures accompanied by the caption &quot;May your delulu become trululu&quot;. In the post, the actress can be seen looking all radiant in a black palazzo set and striking sassy poses.(Instagram/@mrunalthakur).</p>\r\n\r\n<p>Mrunal&#39;s outfit comes in an alluring shade of black and features a luxurious georgette fabric and crop top embellished with intricate sequin embroidery. She teamed it with a matching half-sleeved blazer with satin lining and a button-fastening bodice. With black flared palazzo pants, she rocked the outfit.(Instagram/@mrunalthakur).</p>\r\n\r\n<p>If you loved Mrunal&#39;s outfit and are wondering how much it costs then don&#39;t worry we have got your back. Her stunning attire is from the shelves of clothing brand Mishru and incorporating it in your wardrobe will cost you a whooping&nbsp;₹88k.(Instagram/@mrunalthakur).</p>', 'awesome,#Looks Good,#Lifestyle,#Fashion', 1, 1, NULL, 1, '2024-02-23', 'February', 1, 0, '2024-02-25 14:18:14', '2024-02-25 14:18:14'),
(20, 13, 11, 5, 'Shanaya Kapoor\'s sizzling look in mirror work-adorned exquisite lehenga leaves fans swooning. Check out her glam pics.', 'shanaya-kapoor\'s-sizzling-look-in-mirror-work-adorned-exquisite-lehenga-leaves-fans-swooning.-check-out-her-glam-pics.', 'upload/news/1791691395341023.png', '<p>Shanaya Kapoor, a vision of elegance, took the ramp by storm, leaving hearts racing with her dazzling look in breathtaking lehenga embellished with mirror work.Shanaya Kapoor, who is all set to make her big Bollywood debut, recently graced the ramp in a stunning lehenga ensemble. The Gen Z actress is a total fashionista who always manages to hit the style mark like a pro. Whether it&#39;s a casual mini dress or a chic pantsuit, the stylish diva can pull off any look to perfection. Shanaya is quite active on social media and her glam Insta-diaries filled with fashion-forward looks are a treasure trove of style inspiration for all her followers. Her latest look is no exception as she turned heads in an exquisite mirror-worked embellished lehenga ensemble. Scroll down to take notes.(Instagram/@shanayakapoor02).On Thursday, Shanaya gave her fans a sweet surprise as the actress took to Instagram and uploaded a series of stunning pictures accompanied by the caption &quot;just have some fun&quot;. In the post, the actress is seen looking like an ethereal princess in a lehenga and striking a few sultry poses for the camera.(Instagram/@shanayakapoor02).Her exquisite lehenga attire features a plunging neckline bralette with intricate mirror work detailing all over. Paired with a matching off-white skirt, it features a chic mirror-work corset pattern at the waist and a striking design all over the skirt adding to the glamour factor.(Instagram/@shanayakapoor02).Assisted by celebrity fashion stylist Mohit Rai, Shanaya kept her accessories to a minimum to let her outfit shine and just styled her look with a pair of silver high heels. With showcasing the perfect blend of elegance and style, her outfit is a true showstopper.(Instagram/@shanayakapoor02).</p>', 'awesome,#Looks nice,#Fashion,#Lifestyle', 1, 1, NULL, 1, '2024-02-23', 'February', 1, 0, '2024-02-25 14:18:18', '2024-02-25 14:18:18'),
(21, 13, 11, 5, 'Zendaya and Jennifer Lopez to host 2024 Met Gala celebrating \'Sleeping Beauty: reawakening fashion\'.', 'zendaya-and-jennifer-lopez-to-host-2024-met-gala-celebrating-\'sleeping-beauty:-reawakening-fashion\'.', 'upload/news/1791691755022065.jpeg', '<p>The exhibition will showcase 250 historically significant pieces, known as &#39;sleeping beauties&#39;, from iconic designers such as Elsa Schiaparelli, Christian Dior, Yves Saint Laurent, and Hubert de Givenchy.Andrew Bolton, the Wendy Yu Curator in Charge of The Costume Institute, emphasized the emotional connection between fashion and the body, highlighting the sensory experience of appreciating fashion. The exhibition&#39;s theme mirrors the themes of &#39;The Garden of Time&#39;, exploring the evolution of human history and the cycle of creation and destruction.The Met Gala, often referred to as the &#39;Oscars of fashion&#39;, is a charity event held annually at the Metropolitan Museum of Art in New York City. Celebrities and fashion icons dress according to the set theme, showcasing bespoke creations from renowned fashion designers.Previous themes have ranged from &#39;punk&#39; to &#39;heavenly bodies&#39;, with guests paying homage to designers like Alexander McQueen and Rei Kawakubo. The gala raises funds for the Costume Institute through the sale of tickets, which are highly sought after and can cost up to $35,000 each.This year&#39;s co-chairs, Zendaya and Jennifer Lopez, along with Chris Hemsworth and Bad Bunny, will lead the evening&#39;s festivities. The theme of &#39;Sleeping Beauty: Reawakening Fashion&#39; is expected to inspire guests to incorporate floral motifs and explore the theme&#39;s sense of transience and renewal.</p>', 'awesome,#Looking Nice,#Fashion,#LifeSyle', 1, 1, NULL, 1, '2024-02-25', 'February', 1, 1, '2024-02-27 06:04:13', '2024-02-27 00:34:13');
INSERT INTO `news_posts` (`id`, `category_id`, `subcategory_id`, `user_id`, `news_title`, `news_title_slug`, `image`, `news_details`, `tags`, `breaking_news`, `top_slider`, `first_section_three`, `first_section_nine`, `post_date`, `post_month`, `status`, `view_count`, `created_at`, `updated_at`) VALUES
(22, 13, 12, 1, 'Intruder Breaks Into Spanish Winery, Leaks Premium Red Wine Worth 2.5 Million Euros.', 'intruder-breaks-into-spanish-winery,-leaks-premium-red-wine-worth-2.5-million-euros.', 'upload/news/1791692221306059.jpg', '<p>An intruder broke into the renowned &#39;Cepa 21 winery&#39; in Spain at around 3:30 am on February 18, 2024, and emptied nearly 60,000 litres of premium&nbsp;<a href=\"https://food.ndtv.com/food-drinks/why-does-red-wine-cause-headaches-tips-for-enjoying-wine-without-fear-4621125\">red wine</a>, the winery said on Tuesday, according to an AFP report. The&nbsp;<a href=\"https://food.ndtv.com/health/can-wine-be-healthy-6-amazing-health-benefits-you-may-not-know-3791689\">wine</a>&nbsp;poured away and wasted on the floor was worth some 2.5 million euros ($2.7 million or&nbsp;₹&nbsp;2.2 crores). The winery said that the amount of high-end wine lost could have filled 80,000 bottles. The winery is located in the Ribera del Duero region of Central Spain.</p>\r\n\r\n<p>In the black-and-white security camera footage released by the winery, a person in a hoodie can be seen running from one large vat to another and turning on the taps. As the person does it, a big spout of wine pours out onto the floor. The person emptied three huge tanks of the&nbsp;<a href=\"https://food.ndtv.com/food-drinks/top-5-most-expensive-spirits-in-the-world-4-is-mind-blowing-4218209\">premium</a>&nbsp;wine.No items were stolen during the break-in. The head of the establishment, Jose Moro, told Spanish public television TVE it was clear the intruder&#39;s sole purpose was to damage the business, AFP reported. &quot;It&#39;s a case of doing harm for the sake of doing harm, by someone who can&#39;t be very balanced, hasn&#39;t got much common sense, and is acting out of hatred,&quot; he told the station.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Intruder Breaks Into Spanish Winery, Leaks Premium Red Wine Worth 2.5 Million Euros\" src=\"https://c.ndtvimg.com/2023-11/3f6raj7o_red-wine_625x300_30_November_23.jpg?im=FeatureCrop,algorithm=dnn,width=1200,height=738\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>An intruder broke into the renowned &#39;Cepa 21 winery&#39; in Spain at around 3:30 am on February 18, 2024, and emptied nearly 60,000 litres of premium&nbsp;<a href=\"https://food.ndtv.com/food-drinks/why-does-red-wine-cause-headaches-tips-for-enjoying-wine-without-fear-4621125\">red wine</a>, the winery said on Tuesday, according to an AFP report. The&nbsp;<a href=\"https://food.ndtv.com/health/can-wine-be-healthy-6-amazing-health-benefits-you-may-not-know-3791689\">wine</a>&nbsp;poured away and wasted on the floor was worth some 2.5 million euros ($2.7 million or&nbsp;₹&nbsp;2.2 crores). The winery said that the amount of high-end wine lost could have filled 80,000 bottles. The winery is located in the Ribera del Duero region of Central Spain.</p>\r\n\r\n<p>In the black-and-white security camera footage released by the winery, a person in a hoodie can be seen running from one large vat to another and turning on the taps. As the person does it, a big spout of wine pours out onto the floor. The person emptied three huge tanks of the&nbsp;<a href=\"https://food.ndtv.com/food-drinks/top-5-most-expensive-spirits-in-the-world-4-is-mind-blowing-4218209\">premium</a>&nbsp;wine.</p>\r\n\r\n<p><strong>Also Read:&nbsp;</strong><a href=\"https://food.ndtv.com/news/wait-what-this-portuguese-town-was-flooded-with-red-wine-heres-why-4383150\">Portuguese Town&#39;s Streets Turn Red With Wine After Distillery Accident, X Reacts</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>No items were stolen during the break-in. The head of the establishment, Jose Moro, told Spanish public television TVE it was clear the intruder&#39;s sole purpose was to damage the business, AFP reported. &quot;It&#39;s a case of doing harm for the sake of doing harm, by someone who can&#39;t be very balanced, hasn&#39;t got much common sense, and is acting out of hatred,&quot; he told the station.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'awesome,#Food,# premium wine', 1, 1, 1, NULL, '2024-02-22', 'February', 1, 0, '2024-02-25 14:18:29', '2024-02-25 14:18:29'),
(23, 13, 12, 5, 'Quick and Easy Restaurant-Style Chicken Tikka Masala Recipe.', 'quick-and-easy-restaurant-style-chicken-tikka-masala-recipe.', 'upload/news/1791692965930869.png', '<h3><strong>C</strong>hicken tikka masala is all about succulent grilled chicken in a creamy, spicy tomato sauce. You can easily make this ever-popular Indian dish at home with restaurant quality.</h3>\r\n\r\n<h3><strong>How To Make Chicken Tikka Masala?</strong></h3>\r\n\r\n<h3>Prepare The Chicken Tikka</h3>\r\n\r\n<p>To make four servings, cut two boneless chicken breasts or three boneless chicken thighs into 1-inch pieces and place them in a mixing bowl. Add 1 teaspoon of salt and three tablespoons of lemon juice to the chicken pieces. Use a fork to prick the poultry and rub the seasonings. Leave it to marinate for at least 20 minutes.</p>\r\n\r\n<p>Then add to the chicken one tablespoon of minced ginger, one tablespoon of garlic pulp, one teaspoon of ground cumin, one teaspoon of paprika powder, &frac12; -1 teaspoon of cayenne pepper, ⅓ cup of heavy cream, and &frac12; teaspoon of garam masala. Stir well until all chicken pieces are covered with the spices mixture. Cover the bowl and refrigerate for 6 hours or longer.</p>\r\n\r\n<p>When it&rsquo;s time to cook the chicken, preheat the grill. Put the meat on the skewers, brush with oil, and arrange the skewers on a shallow baking tray. Place the tray approximately 5 inches from the grill heat and cook for about 6 minutes on each side until the chicken is thoroughly cooked and lightly charred.</p>\r\n\r\n<p>You can also grill this tikka in an oven, air fryer, or instant pot.&nbsp;</p>\r\n\r\n<h3>Make Masala Sauce</h3>\r\n\r\n<p>Heat 4 tablespoons of cooking oil on a lidded large pan at medium-high heat. Once the oil is hot, put slices of 1 brown onion, and fry until golden brown. Add one tablespoon of grated ginger and two tablespoons of garlic pulp. Stir and fry for about a minute until they release aroma.&nbsp;</p>\r\n\r\n<p>Add one tablespoon of coriander powder, &frac12; teaspoon of ground turmeric, &frac34; teaspoon of cayenne pepper, and two teaspoons of paprika powder.&nbsp;</p>\r\n\r\n<p>Stir fry for about 15 seconds before adding one tablespoon of plain yogurt. Stir fry again until the liquid is absorbed. Repeat this process three times by adding one tablespoon of yogurt at a time.&nbsp;</p>\r\n\r\n<p>Chop two medium tomatoes and put them into the spices mixture. Cook for 3-4 minutes until the tomatoes turn soft and pulpy. Try mashing them with the back of a wooden spoon.</p>\r\n\r\n<p>Then add 1 ⅓ cup of chicken stock and &frac14; teaspoon of salt to the mixture. Continue cooking at low heat and simmer for 15 minutes until the sauce is thick. Stir in &frac14; teaspoon of<a href=\"https://soyummyrecipes.com/garam-masala/\" target=\"_blank\">&nbsp;garam masala</a>&nbsp;and check the flavors. Add more salt if needed.</p>\r\n\r\n<h3>Combine The Two</h3>\r\n\r\n<p>When chicken tikkas are cooked, reheat the sauce, stir in the chicken, and let it simmer for a minute or two. Serve immediately, and garnish with chopped cilantro/ coriander leaves at serving.</p>', 'awesome,#Food,#Testy,#Meat', 1, 1, NULL, 1, '2024-02-21', 'February', 1, 2, '2024-02-25 14:18:33', '2024-02-25 14:18:33'),
(24, 13, 10, 1, 'People Who Eat Healthy, Plant-Based Diet Less Likely To Suffer From Dangerous Sleep Apnea.', 'people-who-eat-healthy,-plant-based-diet-less-likely-to-suffer-from-dangerous-sleep-apnea.', 'upload/news/1791693457264164.jpeg', '<p>People who eat a healthy, plant-based diet that is high in vegetables, fruit, whole grains and nuts are less likely to suffer with obstructive sleep apnoea ( according to a study published in ERJ Open Research . However, people eatin People with OSA often snore loudly, their breathing starts and stops during the night. and thev mav wake uD several times. Not onlv does this cause tiredness.</p>\r\n\r\n<p>The new study is one of the first large-scale analyses to investigate the correlation between plant-based diets and OSA risk. Researchers say its findings suggest that eating a healthy, plant-based diet may help prevent or treat OSA.</p>\r\n\r\n<p>The research was led by Dr Yohannes Melaku from Flinders University in Adelaide, Australia. He said: &quot;Risk factors for obstructive sleep apnoea may stem from genetics or behaviour, including diet. Previous research has primarily focused on the impact of calorie restriction, specific dietary elements and weight loss. There&#39;s a gap in our knowledge of how overall dietary patterns affect OSA risk. With this study, we wanted to address that gap and explore the association between different types of plant-based diets and the risk of OSA.&quot;</p>\r\n\r\n<p>The research included data on 14,210 people who were taking part in the US National Health and Nutrition Examination Survey.</p>\r\n\r\n<p>Participants were asked to explain everything they had eaten over the last 24 hours. Researchers categorised this information according to whether people were eating a healthy plant-based diet (including whole grains, fruits, vegetables, nuts, legumes, tea and coffee) or a diet high in animal foods (including animal fat, dairy, eggs, fish or seafood and meat). They also looked at whether people were eating an unhealthy, plant-based diet (including refined grains, potatoes, sugar-sweetened drinks, sweets, desserts and salty foods).</p>\r\n\r\n<p>Participants also answered a questionnaire designed to gauge whether they are likely to be suffering from OSA.</p>\r\n\r\n<p>People with diets highest in plant-based food were 19% less likely to be suffering with OSA, compared with those eating diets lowest in plant-based food. Those eating a largely vegetarian diet were also at a lower risk. However, people eating a diet high in unhealthy plant-based foods were at a 22% higher risk, compared to those eating low amounts of these foods.</p>\r\n\r\n<p>The researchers also found differences in the risks for women and men,</p>\r\n\r\n<p>Dr Melaku said: &quot;These results highlight the importance of the quality of our diet in managing the risk of OSA.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;This research doesn&#39;t tell us why diet is important, but it could be that a healthy plant-based diet reduces inflammation and obesity. These are key factors in OSA risk. Diets rich in anti-inflammatory components and antioxidants, and low in harmful dietary elements, can influence fat mass, inflammation, and even muscle tone, all of which are relevant to OSA risk.&#39;<img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAMCAgMCAgMDAwMEAwMEBQgFBQQEBQoHBwYIDAoMDAsKCwsNDhIQDQ4RDgsLEBYQERMUFRUVDA8XGBYUGBIUFRT/2wBDAQMEBAUEBQkFBQkUDQsNFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBT/wAARCAAQAAoDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD5n+LHwn/ax+CvxG8V/FDW18T297ol6bu68XWt2XtpFaYKjod3zwkuo8vBCqcMoAIH63fCf9pm98afCzwb4h1HwpqB1DVtGs7+4NnE3k+ZLAjv5ecnbljjk8YrC/aU03X/ANp/TtS+DHhfTNQ0zw5d3EUXijxpeQGG2toIpUke2sw4BuZnKBSyjy0G7LFvlH0T4c8P6f4S8PaXoek2y2elaZaxWVpbp92KGNAiIPYKoH4UAf/Z\" style=\"height:5px; width:3px\" /></p>\r\n\r\n<p>The researchers now plan to investigate the links between eating ultra-processed food and OSA risk in the same group of people. They also intend to study the interaction between diet and OSA risk over the longer term.</p>\r\n\r\n<p>Professor Sophia Schiza is Head of the European Respiratory Society&#39;s assembly on sleep disordered breathing, based at the University of Crete, Greece, and was not involved in the research. She said: &quot;Obstructive sleep apnoea is a frequently occurring condition, and a significant number of individuals remain unaware of their own diagnosis despite the associated risks. There are treatments available for OSA, and patients can also take certain steps to improve their condition. This involves refraining from smoking, maintaining a healthy weight, and staying physically active.</p>\r\n\r\n<p>&quot;The findings of this study propose that modifying our diet might be beneficial in managing or avoiding OSA. Being aware that incorporating a wide variety of vegetables, fruits, and whole grains into our diet while minimizing the consumption of unhealthy foods and sugary drinks can greatly improve our overall health. We need to make it as easy as possible for everyone to adopt a healthy diet. &quot;</p>\r\n\r\n<p>Reference:</p>\r\n\r\n<p>Yohannes Adama Melaku, Lijun Zhao, Robert Adams, Danny J. Eckert, Plantbased and vegetarian diets are associated with reduced obstructive sleep apnoea risk, ERJ open Research 2024; DOI: 10.1183/23120541.00739-2023.</p>', 'awesome,#Behealthy,#Health,#Lifestyle', 1, 1, 1, 1, '2024-02-20', 'February', 1, 0, '2024-02-25 14:18:40', '2024-02-25 14:18:40'),
(25, 13, 10, 5, 'The world’s fastest growing economy has the world’s most toxic air.', 'the-world’s-fastest-growing-economy-has-the-world’s-most-toxic-air.', 'upload/news/1791693783564396.jpg', '<p>Asia&rsquo;s largest economy, China, has long had a reputation for smoggy skies. But these days, neighbouring India is fighting the far bigger battle with pollution: The South Asian country is home to the world&rsquo;s 10 most polluted cities.</p>\r\n\r\n<p>Outside India&rsquo;s capital, New Delhi, Kusum Tomar knows the personal and economic price of breathing some of the world&rsquo;s most toxic air. At 29, she learned that pollution was the likely driver of the cancer growing inside in her lungs. She had never touched a cigarette. Her husband Vivek sold land to pay for her treatment. They borrowed money from family. Their savings slowly disappeared.</p>\r\n\r\n<p>&ldquo;The government is thinking about the economic growth of the country, but people are dying of diseases or suffering from diseases,&quot; Tomar said. &ldquo;How can you grow economically when, within your country, your citizens are facing economic problems because of the air pollution?&quot;</p>\r\n\r\n<p>India has long struggled to pull together the type of coordinated national approach that&rsquo;s helped China reduce pollution. Prime Minister Narendra Modi&rsquo;s government is now pushing new initiatives it says are starting to curtail hazardous air. But any gains would have to be enough to override other facets of India&rsquo;s rampant growth, from the dust left by thousands of new construction sites to exhaust from millions of new cars.</p>\r\n\r\n<p>In the coming weeks, the Modi government&rsquo;s policies on pollution will be put to the test as winter descends on the dusty plains of north India. Crops are burned during this season and millions of fireworks go off during the Diwali festival, usually pushing air pollution to hazardous levels.</p>\r\n\r\n<p>If strict policies to battle smog were successfully implemented, India&rsquo;s citizens and government would be much richer. By the World Bank&rsquo;s calculations, health-care fees and productivity losses from pollution cost India as much as 8.5% of GDP. At its current size of $2.6 trillion that works out to about $221 billion every year.</p>\r\n\r\n<p>While India is currently the world&rsquo;s fastest growing major economy, China&rsquo;s $12.2 trillion economy is five times larger. The South Asian country is still trying desperately to promote basic manufacturing, which could cause pollution to worsen, said Raghbendra Jha, an Australian National University economics professor.</p>\r\n\r\n<p>&ldquo;It&rsquo;s too simplistic to assume a smooth transition&quot; to clean economic growth in India, he said.</p>\r\n\r\n<p>When Arvind Kumar of New Delhi&rsquo;s Sir Ganga Ram Hospital started as a chest surgeon in 1988, 90% of his lung cancer patients were middle-aged male smokers. Now, he says, 60% of his cases are non-smokers, while half are women. Tiny airborne particles have been linked to ailments from asthma to heart disease and lung cancer, contributing to the deaths of more than 1.1 million Indians in 2015, according to the non-profit Health Effects Institute.</p>\r\n\r\n<p>Meanwhile, after two decades of expansion that reshaped the global economy, China is orchestrating a shift to less-polluting services and consumption. So while its cities still see smoggy days, they&rsquo;ve also seen improvements.</p>\r\n\r\n<p>The number of &ldquo;very unhealthy&quot; days or worse&mdash;when levels of dangerous particles called PM2.5 crossed 200&mdash;rose to 84 in New Delhi in 2017 from 66 in 2015, according to analysis of air quality data from AirVisual, which tracks air quality. In Beijing they dropped to 20 days from around 43 over the same period.</p>\r\n\r\n<p>&ldquo;The major challenge is that people are not consistently demanding improvements in air pollution, as happened in China,&quot; Michael Greenstone, director of the Energy Policy Institute at the University of Chicago, said via email. &ldquo;This is because the extent to which air pollution is causing people in India to lead shorter and sicker lives is not yet fully recognized.&quot;</p>\r\n\r\n<p>India&rsquo;s government has said some international studies linking air pollution to mortality &ldquo;may not be realistic&quot; and that the &ldquo;number of deaths due to air pollution needs to be further investigated and supported by indigenous studies.&quot;</p>\r\n\r\n<p>The country&rsquo;s environment ministry says it&rsquo;s also making headway in reducing bad air, citing its own calculations for this September when it says levels of PM2.5 came down in Delhi. The ministry has introduced an early warning system to help it take pre-emptive action before pollution spikes and it&rsquo;s planned other measures like deploying more road sweeping machines.</p>\r\n\r\n<p>The government acknowledges that more needs to be done, said Harsh Vardhan, the federal minister responsible for the environment and climate change. &ldquo;We are not claiming that everything is fine now, we can relax now. We&rsquo;re not relaxing even for a moment.&quot;</p>\r\n\r\n<p>Modi&rsquo;s government has also promoted solar power, improved emission standards and handed out millions of cooking gas canisters to reduce kitchen fires inside homes. Officials have also tried to ban farmers from burning crops. But environmentalists are still waiting for more concrete targets from a national clean air plan that has yet to be officially launched.</p>\r\n\r\n<p>&ldquo;Any plan at this stage requires reduction targets,&quot; said Anumita Roychowdhury, who&rsquo;s advocated on air pollution for more than 20 years at New Delhi&rsquo;s Centre for Science and Environment. &ldquo;And there has to be a clear compliance strategy.&quot;</p>\r\n\r\n<p>There&rsquo;s an additional challenge. In India&rsquo;s chaotic democracy, where poverty and unemployment are often seen as bigger concerns, different branches of government run by competing political parties sometimes have little incentive to collaborate on pollution.</p>\r\n\r\n<p>Raghav Chadha, a spokesperson for the Aam Aadmi Party that runs the Delhi government, complains his party has limited powers on pollution, and can only take small steps like temporarily banning construction. &ldquo;What is required is coordination between various states governments under the leadership of the central government,&quot; he said, adding his party has &ldquo;serious differences&quot; with Modi&rsquo;s administration.</p>\r\n\r\n<p>China, by contrast, had Premier Li Keqiang declare a national war on pollution. The central government also told local officials they wouldn&rsquo;t get promoted without meeting air quality targets, and the country has sought to move away from polluting industries. Government policies forced millions of homes and businesses to switch from coal to cleaner-burning natural gas.</p>\r\n\r\n<p>Concentrations of PM2.5 plunged 33% in Beijing, Tianjin and 26 surrounding cities in last year&rsquo;s fourth quarter from the previous year.</p>\r\n\r\n<p>&ldquo;Beijing has the capacity to act speedily and decisively, and certainly more efficiently than democracies like the US and India,&quot; says Daniel Gardner, a history professor at Smith College who has written a book on pollution in China.</p>\r\n\r\n<p>China continues to battle a cancer epidemic, and its efforts on pollution have had their own problems. In some cases, China simply closed down polluting industries in key cities and shifted them to western regions, said Kristin Aunan, a senior researcher at the Center for International Climate Research. Still, China later followed up with an updated plan that extended pollution targets to other cities.</p>\r\n\r\n<p>In India, businesses are already feeling the effects. Billionaire entrepreneur Vijay Shekhar Sharma, who founded the digital payments firm Paytm, worries about losing talent.</p>\r\n\r\n<p>Former banker Krishna Hegde relocated from Singapore to Bengaluru to develop new products for Paytm, but said he quit mainly because he couldn&rsquo;t take trips to the firm&rsquo;s headquarters near Delhi. &ldquo;By the end of the first day my energy levels would be coming down, and by the end of the second day I&rsquo;d have a proper headache,&quot; Hegde said.</p>\r\n\r\n<p>Sharma has teamed up with a venture capitalist to invest in local and global startups that could help reduce smog. Other companies are attempting similar projects. Tractor manufacturer Sonalika Group donated machinery designed to encourage farmers in Haryana to stop burning old crop.</p>', '#Be safty,#Healthy,#Lifestyle', 1, 1, NULL, 1, '2024-02-23', 'February', 1, 0, '2024-02-25 14:18:44', '2024-02-25 14:18:44'),
(26, 13, 13, 1, 'Elevating Boho vibes in home decor: Accessories to enhance Bohemian atmosphere in your interior space.', 'elevating-boho-vibes-in-home-decor:-accessories-to-enhance-bohemian-atmosphere-in-your-interior-space.', 'upload/news/1791693983592577.png', '<p>Transforming an&nbsp;<a href=\"https://www.hindustantimes.com/topic/interior-design\" target=\"_blank\">interior</a>&nbsp;space to Bohemian vibe is easily achievable with simple yet effective changes in&nbsp;<a href=\"https://www.hindustantimes.com/topic/accessory\" target=\"_blank\">accessories</a>. One can focus on incorporating accessories that embody the essence of relaxed sophistication and natural beauty by selecting textiles and fabrics with captivating patterns and soft pastel hues reminiscent of sun-kissed coastal shades.</p>\r\n\r\n<p>In an interview with HT Lifestyle, Arun Garg, Founder of Maishaa, shared, &ldquo;Fabrics like organic cotton and jute, not only add texture but also promote sustainability while balancing the boho vibe at best. Introducing plush pillows in cool tones like sea foam greens, sky blues and sunset pinks evokes the tranquility of coastal living. The pillows enhance comfort and infuse the space with a sense of carefree relaxation.&rdquo;</p>\r\n\r\n<p>Hindustan Times - your fastest source for breaking news!&nbsp;<a href=\"https://www.hindustantimes.com/india-news\" onclick=\"ga(\'send\', \'event\', \'Cricket Page\',\'Article detail text mid\',\'/lifestyle/art-culture/elevating-boho-vibes-in-home-decor-accessories-to-enhance-bohemian-atmosphere-in-your-interior-space-101707971274650.html\');\">Read now.</a></p>\r\n\r\n<p>He added, &ldquo;Moreover, considering adding natural elements such as woven baskets, rattan furniture, or driftwood accents further enhances the bohemian atmosphere. These organic touches complement the soft textures and serene colors of the space, creating a harmonious and inviting environment. Lastly, incorporating greenery and botanical accents to bring a touch of nature indoors, enhances the overall sense of tranquility and connection to the outdoors. By carefully curating these accessories, you can create a space that exudes bohemian charm and timeless elegance.&rdquo;</p>\r\n\r\n<p>Dhara Shroff and Reema Shah, Promoters and Heads of Creative at Opulin, suggested, &ldquo;Elevate your home with vibrant vases from Utopia and Utility, boasting intricate designs and bold hues that exude personality and charm. Explore an exclusive range of home decor products featuring captivating patterns and playful motifs that embody the essence of boho chic. Whether you&#39;re drawn to statement vases or quirky accents, infuse your space with bohemian flair. Embrace your adventurous spirit and unleash your creativity as you mix and match textures, patterns and colours to create a unique sanctuary that reflects your individual style. Transform your home into a haven of boho vibes with curated accessories and embark on a journey of self-expression and discovery.&rdquo;</p>', 'awesome,#Boho,#Home Decor,#Trends,#Designer', 1, 1, NULL, 1, '2024-02-23', 'February', 1, 0, '2024-02-25 14:18:47', '2024-02-25 14:18:47'),
(27, 13, 13, 5, 'Halloween 2024: 3 spooky home décor ideas you must bookmark.', 'halloween-2024:-3-spooky-home-décor-ideas-you-must-bookmark.', 'upload/news/1791694546021685.jpg', '<h3><strong>W</strong>ith Halloween right around the corner, you must elevate the spooky spirit with festive home decor. Here are 3 ideas for you to make your home right out of a Pinterest board.</h3>\r\n\r\n<p>With Halloween 2024 just around the corner, most people will be rushing to embrace the spooky season. A crucial aspect of the spooky, fall season is preparing your home for the festive occasion. Halloween is celebrated with enthusiasm worldwide, is a time for dressing up in eerie costumes, indulging in spooky activities, and welcoming loved ones into your abode.<br />\r\n<br />\r\nSteeped in tradition and legend, Halloween is believed to be the time when the spirits of the departed return to their homes an&nbsp;..</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Hanging Bats: To create an eerie ambiance, cut out bat silhouettes from black chart paper and hang them strategically on a white wall. Placing them near the main entrance is a surefire way to let your guests know they&#39;re in for a spooky experience.</li>\r\n	<li>Spooky Wreath: Craft a creepy wreath by bundling together round-shaped branches, painting them black, and hanging them on your door and walls. This simple addition instantly adds a spooky touch to your home.</li>\r\n	<li>Hanging Hallowe&nbsp;..</li>\r\n</ol>', 'awesome,#Halloween decoration,#Eerie Costumes,#Spooky  #Ambiance Haunted Retreat,#Home decor', 1, 1, NULL, 1, '2024-02-25', 'February', 1, 0, '2024-02-25 14:18:51', '2024-02-25 14:18:51'),
(28, 13, 14, 1, 'How to build a secure foundation for lasting relationships?', 'how-to-build-a-secure-foundation-for-lasting-relationships?', 'upload/news/1791695685723417.jpg', '<p>In a world where relationships can be as complex as they are rewarding, establishing a secure foundation is paramount. Whether you&rsquo;re starting a new relationship or looking to strengthen an existing one, certain principles remain universal. Recently, Sadaf Siddiqi, a psychotherapist, shared valuable insights on Instagram, explaining the top 5 ways to create a&nbsp;<a href=\"https://indianexpress.com/article/lifestyle/feelings/relationship-cold-plunges-healthy-happy-couples-strong-bonds-effective-communication-tips-9052348/\"><strong>secure relationship.</strong></a></p>\r\n\r\n<p>&ldquo;If you&rsquo;re struggling in a romantic relationship, reflect on where you and your partner are in these areas,&rdquo; she wrote in the caption.</p>\r\n\r\n<h2>1. Holding yourself and your partner accountable</h2>\r\n\r\n<p>According to Siddiqi, accountability is key. Apologising for mistakes and making an effort to be reliable and consistent are ways to hold oneself accountable. On the other hand, holding your partner accountable involves not ignoring&nbsp;<a href=\"https://indianexpress.com/article/lifestyle/feelings/warning-signs-relationship-breakdown-red-flags-9062121/\"><strong>red flags</strong></a>&nbsp;and being direct when their words and actions don&rsquo;t align.</p>\r\n\r\n<h2>2. Managing conflict instead of avoiding it</h2>\r\n\r\n<p>Avoiding conflict can manifest as &ldquo;giving the silent treatment, not expressing your needs or &lsquo;walking on eggshells&rsquo; (being careful to not offend or upset someone),&rdquo; warns Siddiqi. To manage conflicts effectively, she suggests setting boundaries, listening to understand, and separating the person from the problem.</p>\r\n\r\n<h2>3. Getting comfortable being alone or close</h2>\r\n\r\n<p>Siddiqi emphasises that healthy independence in a relationship stems from developing a strong sense of identity outside of the partnership. Finding fulfillment not only from relationship goals but also personal goals is essential for a well-rounded connection.</p>\r\n\r\n<p><a href=\"https://indianexpress.com/subscribe/offer-77891/?utm_source=IEsite&amp;utm_medium=Banner&amp;utm_campaign=UPSC\"><img alt=\"Festive offer\" src=\"https://images.indianexpress.com/2024/01/UPSC_Creative.jpg\" /></a></p>\r\n\r\n<h2>4. Respecting your needs as much as your partner&rsquo;s</h2>\r\n\r\n<p>In secure relationships, Siddiqi advises setting and honouring<a href=\"https://indianexpress.com/article/lifestyle/feelings/what-are-the-5-boundaries-for-healthy-relationships-8990044/\"><strong>&nbsp;boundaries</strong></a>&nbsp;between both partners. &ldquo;This can look like expressing what is not okay with you and also accepting when your partner says &lsquo;no&rsquo; to you.&rdquo;</p>\r\n\r\n<p>ALSO READ&nbsp;|&nbsp;<a href=\"https://indianexpress.com/article/lifestyle/feelings/maintaining-strong-relationship-therapist-tips-9108816/\">A therapist&rsquo;s guide to building a strong relationship</a></p>\r\n\r\n<h2>5. Actively regulating your emotions daily</h2>\r\n\r\n<p>Siddiqi urges that in secure relationships, each person is responsible for their own reactions. This involves asking for space when triggered, learning how to self-soothe, and being vulnerable.</p>', 'awesome,#Healthy Relationship,#Dating Tips', 1, 1, NULL, 1, '2024-02-23', 'February', 1, 0, '2024-02-25 14:20:05', '2024-02-25 14:20:05'),
(29, 13, 14, 5, 'Tom Cruise Dating Russian Socialite Elsina Khayrova Who is 25 Years Younger Than Him: Report.', 'tom-cruise-dating-russian-socialite-elsina-khayrova-who-is-25-years-younger-than-him:-report.', 'upload/news/1791696257831185.jpg', '<p>Actor Tom Cruise has recently confirmed his relationship with Russian socialite Elsina Khayrova. Cruise, 61, and Khayrova, 36, have become an official couple, according to sources cited by the Daily Mail. Maintaining a low profile, the pair have been discreet about their relationship for a long time, preferring to keep it out of the public eye. Despite their efforts to avoid paparazzi, insiders reveal that Cruise has been spending a lot of time with Khayrova, engaging in typical couple activities despite their affluent status. Both Cruise and Khayrova were reportedly seen together at a charity dinner supporting London&rsquo;s Air Ambulance Charity, with Prince William in attendance as the guest of honor.</p>\r\n\r\n<p>Their close friends have disclosed that the majority of their time is spent at Khayrova&rsquo;s apartment in Knightsbridge, London, often enjoying private dinners at exclusive restaurants in the city. &ldquo;Tom has been staying the night at Elsina&rsquo;s apartment, which as you can imagine, is a very beautiful place. They enjoy hanging out together and despite their wealth, do a lot of the things that normal couples do,&rdquo; reports Daily Mail, citing an insider.</p>\r\n\r\n<p>&ldquo;It&rsquo;s well known within Elsina&rsquo;s circle that she and Tom are now an item. They&rsquo;ve grown very close over the past few weeks but take a lot of care not to be photographed together because they want to maintain their privacy,&rdquo; the media outlet adds.</p>\r\n\r\n<p>Rumours of their romance initially surfaced after sightings of the couple at a party in London&rsquo;s Mayfair neighborhood in December of the previous year. An eyewitness described them as inseparable, indicating Cruise&rsquo;s evident affection for Khayrova.</p>\r\n\r\n<p>&ldquo;They were inseparable, clearly a couple. He seemed to be besotted with her,&rdquo; an eyewitness told the Daily Mail at the time.</p>\r\n\r\n<p>Cruise, who has been married three times before, was previously wed to Mimi Rogers, Nicole Kidman, and Katie Holmes.</p>\r\n\r\n<p>On the other hand, Khayrova, a mother of two, separated from her ex-husband Dmitry Tsetkov in 2022. Tsetkov publicly discussed their contentious divorce in 2023, disclosing the considerable financial toll it took on him.</p>\r\n\r\n<p>Khayrova, a British citizen, is originally from Russia. She is the daughter of Rinat Khayrova, a member of the Russian Military Police. Khayrova often shares photographs of her life on social media, including heartfelt messages for her children.</p>\r\n\r\n<p>&nbsp;</p>', 'awesome,#RELATIONSHIP', 1, 1, NULL, 1, '2024-02-25', 'February', 1, 0, '2024-02-25 14:20:02', '2024-02-25 14:20:02'),
(30, 11, 16, 1, 'India to lead way in meeting climate targets, says environment secy.', 'india-to-lead-way-in-meeting-climate-targets,-says-environment-secy.', 'upload/news/1791697070131710.jpg', '<p>Dubai: India will proactively lead the way in achieving all its climate targets, said environment, forest and cimate change secretary Leena Nandan on Sunday.</p>\r\n\r\n<p>Speaking at a UNFCCC COP 28 side event in Dubai, Nandan highlighted India&#39;s success in decoupling emissions from economic growth. &ldquo;India has continued to grow, it has also progressively decoupled emissions from economic growth, and this has resulted in achievement of 33% reduction in emission intensity of GDP in 2019 itself,&quot; she said.</p>\r\n\r\n<p>Nandan credited this achievement to India&#39;s focus on renewable energy and its updated Nationally Determined Contributions (NDCs), which showcase heightened climate ambitions. She emphasized India&#39;s proactive role in addressing climate change despite not being a significant contributor to the problem.</p>\r\n\r\n<p>&ldquo;The NDCs updated last year reflect our concern that we indeed as a global fraternity need to do much more to tackle climate change&hellip; India has not been part of the problem but is facing the consequences of climate change, and yet India has stepped up to play a leading part in the solution,&quot; she said.</p>\r\n\r\n<p>This is effectively demonstrated in India&rsquo;s approach of balance between economy and ecology, development and environment, she added.</p>\r\n\r\n<p>The India Cooling Action Plan was highlighted as a pioneering model for sustainable cooling, with Nandan calling for further research and industry collaboration in this area. She underlined India&#39;s commitment to responsible and sustainable growth, inviting stakeholders to join in making India a leader in sustainable cooling.</p>\r\n\r\n<p>The event also showcased India&rsquo;s success in achieving targets under the Montreal Protocol and its roadmap towards creating a sustainable cooling and thermal comfort ecosystem, which has become a necessity for environmental sustainability.</p>\r\n\r\n<p>Rajasree Ray, economic adviser of the environment ministry underscored the importance of an integrated approach for achieving sustainable cooling and thermal comfort in India.</p>\r\n\r\n<p>India&#39;s initiatives, including the India Cooling Action Plan (ICAP), aim to address rising cooling demands across various sectors. The country has been a global leader in adopting technologies that reduce ozone depletion and global warming potential, with significant achievements in phasing out HCFCs ahead of Montreal Protocol schedules.</p>\r\n\r\n<p>Industry representatives from Blue Star Limited, SRF Limited and Subros Technical Centre and implementing agencies including UNDP, and UNEP also shared perspectives on sustainable cooling during the event, underscoring India&#39;s comprehensive approach to climate change mitigation.</p>', '#climate targets,#environment secy,#Nationally Determined Contributions,#Cooling Action Plan', 1, 1, 1, 1, '2024-02-20', 'February', 1, 0, '2024-02-25 14:19:58', '2024-02-25 14:19:58'),
(31, 11, 16, 1, 'Soil potassium depletion poses threat to world food yields: Study', 'soil-potassium-depletion-poses-threat-to-world-food-yields:-study', 'upload/news/1791697329368044.png', '<p>According to recent research by scientists from UCL, the University of Edinburgh, and the UK Centre for Ecology &amp; Hydrology,&nbsp;<a href=\"https://www.hindustantimes.com/lifestyle/health/hypertension-guidelines-do-not-include-potassium-enriched-salt-study-101706232206073.html\" target=\"_blank\">potassium</a>&nbsp;deficiency in agricultural soils poses a largely unknown but potentially serious threat to world food security if allowed unchecked.</p>\r\n\r\n<p>The study, published in Nature Food, found that more potassium is being removed from agricultural soils than is being added, throughout many regions of the world. It also gives a series of recommendations for how to mitigate the issue.</p>\r\n\r\n<p>Hindustan Times - your fastest source for breaking news!&nbsp;<a href=\"https://www.hindustantimes.com/india-news\" onclick=\"ga(\'send\', \'event\', \'Cricket Page\',\'Article detail text mid\',\'/environment/soil-potassium-depletion-poses-threat-to-world-food-yields-study-101708407060100.html\');\">Read now.</a></p>\r\n\r\n<p>Potassium is a vital nutrient for plant growth that helps with photosynthesis and respiration, the lack of which can inhibit plant growth and reduce crop yields.&nbsp;<a href=\"https://www.hindustantimes.com/topic/farmers-protest\" target=\"_blank\">Farmers&nbsp;</a>often spread potassium-rich fertilisers over their fields to replenish the depleted nutrient, but supply issues can inhibit its use, and there are lingering questions about its environmental impact.</p>\r\n\r\n<p>The researchers report that globally, about 20% of agricultural soils face severe potassium deficiency, with particular regions likely to experience more critical shortages, including 44% of&nbsp;<a href=\"https://www.hindustantimes.com/india-news/number-theory-why-market-fundamentalists-are-equally-wrong-about-agriculture-101708355424809.html\" target=\"_blank\">agricultural soils</a>&nbsp;in South-East Asia, 39% in Latin America, 30% in Sub-Saharan Africa and 20% in East Asia, largely due to more intensive agricultural practices.</p>\r\n\r\n<p>Co-author Professor Mark Maslin (UCL Geography) said: &quot;Potassium is critical to sustaining the crop yields that keep the world fed, and its depletion poses a significant threat to the food security of millions of people around the world. This is an overlooked issue that needs to be addressed with a range of actions as the world population continues to grow.&quot;</p>\r\n\r\n<p>Farmers often rely on potash as a fertiliser to replenish their field&#39;s potassium, but the price of the mineral can be quite volatile. Potash production is highly concentrated, with just twelve countries dominating the nearly &pound;12 billion international market for potassium fertilisers, with Canada, Russia, Belarus and China producing 80% of the world&#39;s total raw potash.</p>\r\n\r\n<p>The researchers highlight how in April 2022, the price of potash increased 500% above the previous year following a &quot;perfect storm&quot; of factors, including rising fertiliser demand, escalating fuel prices, recovery from the pandemic, a range of government actions around the world, and the Russian invasion of Ukraine. Russia and Belarus together export about 42% of the word&#39;s potash supply, but following the Russian invasion of Ukraine in 2022, the UK, US, Canada and the EU imposed import sanctions on the two countries, disrupting global supplies and exacerbating the price spike.</p>\r\n\r\n<p>Since the initial price spike, the cost of potash has fallen by about 50%, but remains elevated, raising concerns that farmers will not be able to access sufficient fertiliser to maintain food supplies under the current system.</p>\r\n\r\n<p>Co-author Dr Peter Alexander of the University of Edinburgh said: &quot;The volatility of potash prices has major implications across the global food system. Access to potassium is vital for farmers to maintain their crop yields, but the recent high cost of potash makes it more difficult for the most vulnerable to obtain.&quot;</p>\r\n\r\n<p>This market concentration and vulnerability is one of the reasons the researchers have called for better potassium management and a robust intergovernmental coordination mechanism. Currently there are no national or international policies or regulations governing the sustainable management of soil potassium akin to the systems that are being established for other vital crop nutrients like nitrogen and phosphorus.</p>\r\n\r\n<p>In 2021, global potash consumption reached 45 million tonnes, with global production projected to rise to about 69 million tonnes in 2025 with new projects starting up in Belarus, Canada, Russia, Australia, Eritrea and the UK. However, potash mining has raised human rights concerns and has significant impacts on the environment. Potash mining generates millions of tonnes of refuse mostly composed of sodium chloride salts, which can leach into soils and salinise soil and water tables, harming plants and animals.</p>\r\n\r\n<p>The impacts of potassium fertiliser runoff into local ecosystems are poorly understood, and the researchers recommend more study about its effects.</p>\r\n\r\n<p>Lead author Will Brownlie of the UK Centre for Ecology &amp; Hydrology, said: &quot;The environmental impact of potash mining and use in agriculture is something that needs greater scrutiny. There&#39;s much that we still don&#39;t understand about the effects that artificial potassium enrichment has on nearby ecosystems. By wisely handling nutrients like nitrogen, phosphorus, and potassium together, we can reap multiple benefits, prevent pollution, boost crop yields, and minimise nutrient loss. It&#39;s about coordinating our approach for better farming outcomes.&quot;</p>\r\n\r\n<p>The researchers put forward six recommendations for policies and practices to prevent potential crop yield declines, safeguard farmers from price volatility and address environmental concerns. The recommendations include:</p>\r\n\r\n<p>1. Setting up a global assessment of current potassium stocks and flows to identify the most at-risk countries and regions.</p>\r\n\r\n<p>2. Establishing national capabilities for monitoring, predicting and responding to potassium price fluctuations.</p>\r\n\r\n<p>3. Helping farmers maintain sufficient soil potassium levels with further research about the yield implications of limited potassium in various crops and soils.</p>\r\n\r\n<p>4. Evaluating the environmental effects of potash mining and developing sustainable application practices.</p>\r\n\r\n<p>5. Developing a global circular potassium economy that minimises the use and maximises the reuse and recycling of the nutrient.</p>\r\n\r\n<p>6. Increasing intergovernmental cooperation through the UN and other agencies to develop global policy coordination akin to what&#39;s been developed for nitrogen.</p>', '#Environment,#Soil,#India', 1, 1, NULL, 1, '2024-02-20', 'February', 1, 0, '2024-02-25 14:19:54', '2024-02-25 14:19:54'),
(32, 11, 16, 5, 'Modi government’s new environmental laws a threat to India’s biodiversity and forests.', 'modi-government’s-new-environmental-laws-a-threat-to-india’s-biodiversity-and-forests.', 'upload/news/1791697781074566.png', '<p>&nbsp;</p>\r\n\r\n<p>The seamless passage of the Biological Diversity (Amendment) Bill, 2021, and the Forest Conservation (Amendment) Bill, 2023, in the Lok Sabha and the Rajya Sabha, effectively emasculating regulatory powers contained in the parent laws, namely, the Biological Diversity Act (BDA) 2002 and the Forest Conservation Act (FCA) 1980, was guaranteed by the absence of the entire opposition, which was boycotting Parliament demanding that Prime Minister Narendra Modi speak on the Manipur crisis.</p>\r\n\r\n<p>As Jairam Ramesh, Rajya Sabha MP and former Environment Minister, has stated, the BDA amendments were pushed through rejecting all but one of the 21 recommendations proposed by the Joint Parliamentary Committee (JPC) that reviewed the Bill. And in the case of the FCA, another JPC constituted in March this year, unsurprisingly filled with BJP MPs, just sent it on without recommending any changes. The implications of these amendments on the country&rsquo;s socioeconomic and ecological securities are immense and deeply worrying.</p>\r\n\r\n<p>&nbsp;</p>', '#Nature,#Enviornment,#Fresh', 1, 1, NULL, 1, '2024-02-21', 'February', 1, 0, '2024-02-25 14:19:50', '2024-02-25 14:19:50'),
(33, 11, 16, 5, 'Environmental Injustice and Public Health in India: Towards a “Decolonial Intersectional Environmental Justice” Framework.', 'environmental-injustice-and-public-health-in-india:-towards-a-“decolonial-intersectional-environmental-justice”-framework.', 'upload/news/1791698118057334.png', '<p>This article examines the current inadequacy of environmental policies in protecting the ecology and health of the public, especially among the socially marginalised sections in India and argues for a &ldquo;decolonial intersectional environmental justice&rdquo; approach in framing and implementing inclusive environmental policies in India. This article argues that in the acute environmental health crisis, the&nbsp;government should provide research grants not only to environmental and natural scientists but also involve social scientists in research and formulating innovative policies that can lead to a better ecosystem and could provide environmental justice to the people living at the margins.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><strong>Public Health and Environmental Policies in India</strong></p>\r\n\r\n<p>The hardest hit of the global environmental crisis are the marginalised communities. Vulnerable populations in developed and developing countries first and foremost experience the catastrophic impacts of climate change (Nesmith et al 2021). In India, the environmental challenges are diverse, from a severe deficiency in environmental amenities like clean water and sanitation for bare human existence to pollution from the hazardous wastes generated by a modern consumer society (Sawhney 2018). Several environmental policies are intended to tackle environmental challenges, for example,&nbsp;the National Policy on Pollution Abatement, 1992; the National Conservation Strategy and Policy Statement on Environment and Development, 1992; the National Environment Policy of 2006; and the Clean India Mission of 2014. To implement these policies, the government has also set some legal frameworks such as the Air (Prevention and Control of Pollution) Act of 1981, amended in 1987; the Environment (Protection) Act of 1986; the Water (Prevention and Control of Pollution) Act of 1974, which was amended in 1988; the Water (Prevention and Control of Pollution) Cess Act of 1977, again amended in 1991; the Public Liability Insurance Act of 1991; the National Environmental Tribunal Act, 1995; the National Environmental Appellate Authority Act of 1997; and the&nbsp;National Action Plan on Climate Change, 2008.</p>', '#Nature,#Enviornment,#India', 1, 1, NULL, 1, '2024-02-24', 'February', 1, 0, '2024-02-25 14:19:46', '2024-02-25 14:19:46');
INSERT INTO `news_posts` (`id`, `category_id`, `subcategory_id`, `user_id`, `news_title`, `news_title_slug`, `image`, `news_details`, `tags`, `breaking_news`, `top_slider`, `first_section_three`, `first_section_nine`, `post_date`, `post_month`, `status`, `view_count`, `created_at`, `updated_at`) VALUES
(34, 11, 15, 1, 'Solutions to plastic pollution', 'solutions-to-plastic-pollution', 'upload/news/1791698407594392.jpg', '<p><strong>M</strong>ore than&nbsp;<a href=\"https://www.unep.org/resources/report/drowning-plastics-marine-litter-and-plastic-waste-vital-graphics\">400 million tonnes of plastic</a>&nbsp;is produced every year worldwide, half of which is designed to be used only once. Of that, less than 10 per cent is recycled.</p>\r\n\r\n<p>An estimated&nbsp;<a href=\"https://leap.unep.org/content/basic-page/plastics-pollution-toolkit-about\">19-23 million tonnes</a>&nbsp;end up in lakes, rivers and seas annually. That is approximately the weight of 2,200 Eiffel Towers all together.</p>\r\n\r\n<p><a href=\"http://unep.org/resources/report/microplastics\">Microplastics</a>&nbsp;&ndash; tiny plastic particles up to 5mm in diameter &ndash; find their way into food, water and air. It is estimated that each person on the planet consumes more than 50,000 plastic particles per year &ndash;and many more if inhalation is considered.</p>\r\n\r\n<p>Discarded or burnt single-use plastic harms human health and biodiversity and pollutes every ecosystem from mountain tops to the ocean floor.</p>\r\n\r\n<p>With available science and solutions to tackle the problem, governments, companies and other stakeholders must scale up and speed actions to solve this crisis.</p>\r\n\r\n<p>This underscores the importance of this&nbsp;<a href=\"https://www.worldenvironmentday.global/\">World Environment Day</a>&nbsp;in mobilizing transformative action from every corner of the world.</p>', '#Plastic,#Pollution,#Nature Fresh,#Enviornment', 1, 1, NULL, 1, '2024-02-23', 'February', 1, 0, '2024-02-25 14:19:43', '2024-02-25 14:19:43'),
(35, 11, 15, 5, 'What is climate change? A really simple guide', 'what-is-climate-change?-a-really-simple-guide', 'upload/news/1791698934812089.png', '<h3><img alt=\"Chart showing change in global temperature compared to the pre-industrial average since 1940. Temperatures have been rising, and 2023 was the warmest year on record at nearly 1.5C above pre-industrial levels.\" src=\"https://ichef.bbci.co.uk/news/2048/cpsprodpb/8720/production/_132229543_era5_global_yearly_anomaly_bars-nc.png\" style=\"border-style:solid; border-width:1px; height:469px; width:500px\" /></h3>\r\n\r\n<h2>What is climate change?</h2>\r\n\r\n<p>Climate change is the long-term shift in the Earth&#39;s average temperatures and weather conditions.</p>\r\n\r\n<p>Over the last decade, the world was on average around 1.2C warmer than during the late 19th Century.</p>\r\n\r\n<p>It has now been confirmed that&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-68110310\">global warming exceeded 1.5C across the 12 month period between February 2023 and January 2024</a>. That followed 2023&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-67861954\">being declared the warmest year on record</a>.</p>\r\n\r\n<p>The temperature increase was driven by human-caused climate change and boosted by&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-64192508\">the natural El Ni&ntilde;o weather phenomenon</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>How are humans causing climate change?</h2>\r\n\r\n<p>The climate has changed throughout the Earth&#39;s history and natural factors, such as El Ni&ntilde;o, can affect the weather for shorter periods of time, as happened in 2023.</p>\r\n\r\n<p>But natural causes cannot explain the particularly rapid warming seen in the last century, according to the UN&#39;s climate body, the IPCC.</p>\r\n\r\n<p>This long-term&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-58954530\">climate change has been caused by human activity</a>, the IPCC says, mainly from the widespread use of fossil fuels - coal, oil and gas - in homes, factories and transport.</p>\r\n\r\n<p>When fossil fuels burn, they release greenhouse gases - mostly carbon dioxide (CO2). This traps extra energy in the atmosphere near the Earth&#39;s surface, causing the planet to heat up.</p>\r\n\r\n<p>Since the start of the Industrial Revolution - when humans started burning large amounts of fossil fuels - the&nbsp;<a href=\"https://www.noaa.gov/news-release/carbon-dioxide-now-more-than-50-higher-than-pre-industrial-levels\">amount of CO2 in the atmosphere has risen by about 50%</a>.</p>\r\n\r\n<p>The&nbsp;<a href=\"https://www.climate.gov/news-features/climate-qa/how-do-we-know-build-carbon-dioxide-atmosphere-caused-humans\">CO2 released from burning fossil fuels</a>&nbsp;has a distinctive chemical fingerprint which matches the type increasingly found in the atmosphere.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><img alt=\"Over the last 800,000 years, CO2 concentrations in the atmosphere have fluctuated between about 180 and 300 parts per million in a sawtooth like pattern. Today, CO2 levels are around 420 parts per million and have risen sharply over the last century - a near vertical line on the graph.\" src=\"https://ichef.bbci.co.uk/news/2048/cpsprodpb/1604E/production/_131809109_co2_long_term_updated-nc.png\" style=\"height:430px; width:500px\" /></h3>', '#Nature Free,#Environment,#World Data', 1, 1, NULL, 1, '2024-02-22', 'February', 1, 0, '2024-02-25 14:19:39', '2024-02-25 14:19:39'),
(36, 8, 18, 1, 'Indian startup ecosystem: Why more women entrepreneurs are needed.', 'indian-startup-ecosystem:-why-more-women-entrepreneurs-are-needed.', 'upload/news/1791699255917930.png', '<p>The burgeoning Indian startup ecosystem has an incredible growth story, becoming the world&rsquo;s third-largest startup ecosystem over the last decade. However, if one were to ask what percentage of these startups were led by women founders, the answer would be pitiful.</p>\r\n\r\n<p>Although the country has seen entrepreneurs such as Falguni Nayyar of&nbsp;<a href=\"https://www.business-standard.com/company/fsn-e-commerce-75803.html\" target=\"_blank\">Nykaa</a>, Ghazal Alagh of&nbsp;<a href=\"https://www.business-standard.com/topic/mamaearth\" target=\"_blank\">Mamaearth</a>, Upasna Taku of Mobikwik, and Vani Kola of Kalaari Capital, who have emerged as trailblazers for women entrepreneurs across the country, India is still lagging behind greatly in this realm.</p>', '#Startup,#India,#Business', 1, 1, NULL, 1, '2024-02-21', 'February', 1, 0, '2024-02-25 14:19:35', '2024-02-25 14:19:35'),
(37, 8, 18, 5, 'Paytm crisis: \'Don\'t fall for any rumour,\' Vijay Shekhar Sharma clarifies after RBI extends deadline for services.', 'paytm-crisis:-\'don\'t-fall-for-any-rumour,\'-vijay-shekhar-sharma-clarifies-after-rbi-extends-deadline-for-services.', 'upload/news/1791699537549459.jpeg', '<p>Minutes after the Reserve Bank of India (RBI) extended the deadline for customers of&nbsp;<a href=\"https://www.businesstoday.in/stocks/one-97-communications-ltd-paytm-share-price-364523\" target=\"_blank\">Paytm</a>&nbsp;Payment Bank to make deposits and credit transactions, Paytm founder Vijay Shekhar Sharma clarified that Paytm QR, Soundbox, card machines will continue to work even after March 15 and won&#39;t be affected by the RBI restrictions.</p>\r\n\r\n<p>The central bank said deposits or credit transactions or top ups shall be allowed in any customer accounts, prepaid instruments, wallets, FASTags, National Common Mobility Cards, etc. till March 15, 2024. The earlier stipulated timeline was February 29, 2024.</p>\r\n\r\n<p>&quot;Paytm QR, Soundbox and EDC (card machine) will continue to work like always, even after March 15. The latest FAQ issued by RBI on point #21 clarifies it unambiguously. Do not fall for any rumour or let anyone deter you to championing Digital India !,&quot; Sharma posted on X on Friday.</p>\r\n\r\n<p>RBI had put restrictions on Paytm Payments Bank and asked it to stop accepting fresh deposits in its accounts or popular wallets. Paytm Payments Bank, managed by One 97 Communications, was told by the regulator that it will not be able to take fresh deposits, facilitate credit transactions, or offer fund transfers, including Unified Payments Interface (UPI) facility after February 29. The deadline has been extended to March 15, 2024.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Image\" src=\"https://pbs.twimg.com/media/GFMiXtVagAAq-zB?format=jpg&amp;name=900x900\" /></p>', '#RBI,#INDIA,#BUSINESS,#PAYTM', 1, 1, NULL, 1, '2024-02-20', 'February', 1, 0, '2024-02-25 14:19:30', '2024-02-25 14:19:30'),
(38, 8, 17, 1, 'WTCA’s Global Business Forum 2024 to position India as global investment destination.', 'wtca’s-global-business-forum-2024-to-position-india-as-global-investment-destination.', 'upload/news/1791700096972300.jpg', '<p>WTCA is an international trade organization that connects over 300 World Trade Center locations in nearly 100 countries. The 2024 Global Business Forum (GBF) is making its debut in India, hosted by the WTCA and World Trade Center Bengaluru.</p>\r\n\r\n<p>Prashant Gokhale, Managing Director, Buhler India and chair of B2B committee, GBF 2024 said over 100 businesses from 30 countries such as the United States and the United Kingdom will be participating in the four day event that will showcase India as an investment destination.</p>\r\n\r\n<ul>\r\n	<li>Also read:&nbsp;<strong><a href=\"https://www.thehindubusinessline.com/companies/jcbs-chairman-lord-bamford-backs-india-as-an-investment-destination/article67325519.ece\" target=\"_blank\">JCB&rsquo;s Chairman Lord Bamford backs India as an investment destination</a></strong></li>\r\n</ul>\r\n\r\n<p>Over 100 Indian companies are expected to participate in the GBF 2024, which will showcase investment opportunities across 12 diverse Indian industry sectors, including agriculture &amp; food processing, automotive, aviation &amp; aerospace, biotech, education, heavy engineering, IT, ITeS &amp; electronics, manufacturing, real estate &amp; construction, tech start-ups, textile &amp; garments, and travel &amp; tourism, said Gokhale, who is also the vice-president of Bangalore Chamber of Industry and Commerce (BCIC).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thehindubusinessline.com/companies/break-even-and-stabilisation-of-nmdc-steel-plant-likely-by-q2-fy25/article67867526.ece\" target=\"_top\">Related Article</a></p>\r\n\r\n<h3><a href=\"https://www.thehindubusinessline.com/companies/break-even-and-stabilisation-of-nmdc-steel-plant-likely-by-q2-fy25/article67867526.ece\" target=\"_top\">Break-even and stabilisation of NMDC Steel plant likely by Q2-FY25</a></h3>\r\n\r\n<p>BCIC is the knowledge partner to conduct B2B meetings and making that connect between the Indian industries and visiting delegates with our network, Gokhale said.</p>\r\n\r\n<p>&ldquo;EPIC: Empowering Progress through Innovation &amp; Collaboration,&rdquo; is the theme of the event in which several WTC businesses are bringing delegations to participate in the B2B matchmaking aspect.</p>\r\n\r\n<ul>\r\n	<li>Also read:&nbsp;<strong><a href=\"https://www.thehindubusinessline.com/opinion/gulf-nations-betting-big-on-india/article67509875.ece\" target=\"_blank\">Gulf nations betting big on India</a></strong></li>\r\n</ul>\r\n\r\n<p>Deloitte report</p>\r\n\r\n<p>Romal Shetty, CEO of Deloitte South Asia, will deliver the keynote address, unveiling the new Deloitte research report &ldquo;India as an Investment Destination.&rdquo; Other notable speakers include MR Jaishankar, Executive Chairman, Brigade Enterprises Ltd, and John E. Drew, Chair, WTCA Board of Directors. A robust agenda of panel discussions will cover topics such as AI &amp; tech start-ups, exporting overseas, agritech and real estate.</p>\r\n\r\n<p>Vineet Verma, Managing Director of World Trade Center Bengaluru, Chennai, and Kochi; and newly-appointed WTCA Board Member, in a statement said: &ldquo;This year&rsquo;s GBF will not only showcase India, specifically Karnataka, as a rising investment destination of the world but also serve to strengthen relationships between industry leaders. This will be an invaluable opportunity to interact with leading innovators and invest in India&rsquo;s growing economy &mdash; backed by our dynamic and skilled workforce.&rdquo;</p>\r\n\r\n<p>John E Drew, Chair, WTCA Board of Directors, said: &ldquo;India is experiencing rapid economic growth, coupled with a surging demand for commercial infrastructure and global business connectivity. As a result, our network has grown phenomenally in the country during the past decade. Today, we have our second-largest membership cluster here with 40 Members representing most of India&rsquo;s major cities and contributing to India&rsquo;s sustainable development. Bengaluru&rsquo;s entrepreneurial spirit makes it an ideal setting for fostering synergies and exploring lucrative business opportunities in one of the world&rsquo;s most promising economic regions.&rdquo;</p>', '#World,#Business,#India', 1, 1, NULL, 1, '2024-02-24', 'February', 1, 0, '2024-02-25 14:19:27', '2024-02-25 14:19:27'),
(39, 8, 17, 5, 'US announces 500+ sanctions against Russia to \'ensure Putin pays an even steeper price for his aggression\'', 'us-announces-500+-sanctions-against-russia-to-\'ensure-putin-pays-an-even-steeper-price-for-his-aggression\'', 'upload/news/1791700311545076.jpg', '<p>The United States on Friday (Feb 23rd) announced a fresh wave of more than 500 sanctions against Russia. These sanctions announced on the second anniversary of the Ukrainian war, come after the death of Kremlin critic Alexei Navalny in prison.</p>\r\n\r\n<p>Vowing sustained pressure to stop Russian President Vladimir Putin&#39;s &quot;war machine,&quot; President Joe Biden said that the sanctions will target more than 100 &quot;individuals connected to Navalny&#39;s imprisonment as well as Russia&rsquo;s financial sector, defence industrial base, procurement networks and sanctions evaders across multiple continents.&quot;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&ldquo;Words are, in my not-so-humble opinion, our most inexhaustible source of magic. Capable of both inflicting injury, and remedying it.&rdquo; &ndash; Albus Dumbledore (J. K. Rowling)</em></p>\r\n\r\n<p>An avid Harry Potter fan, Moohita wholeheartedly believes that words do, in fact, hold inexhaustible magic, which is why she chose journalism. She enjoys writing about science, technology, politics and trending news topics and tweets at @MoohitaKaurGarg.</p>', '#Business,#Sanctions,#Russia,#USA', 1, 1, NULL, 1, '2024-02-23', 'February', 1, 1, '2024-02-25 14:19:23', '2024-02-25 14:19:23'),
(40, 7, 20, 1, 'India vs England Live Score, 4th Test Day 1: Joe Root and Ollie Robinson take ENG 302/7 at stumps in Ranchi.', 'India vs England Live Score, 4th Test Day 1: Joe Root and Ollie Robinson take ENG 302/7 at stumps in Ranchi.', 'upload/news/1791700527597100.png', '<p><strong>IND vs ENG 4th Test Live Score Updates:&nbsp;</strong>Joe Root and Ollie Robinson have taken England to 302/7 at stumps on Day 1 at the JSCA International Stadium Complex in Ranchi. Right when it felt like India was going to bowl out England mid-way through the evening session but Robinson chipped in with a handy cameo. Root made a gritty ton to hold the English batting effort together.</p>\r\n\r\n<p>Earlier, Akash Deep had a sensational debut in MS Dhoni&rsquo;s hometown in Ranchi he picked three wickets. Akash Deep knocked over Zak Crawley but he had cut short his celebration as he was overstepped. However, the 27-year-old made a terrific comeback by removing England&rsquo;s top three. He first got rid of Ben Duckett with a beautiful outswinger. The nip backer and a bold DRS review from captain&nbsp;<a href=\"https://indianexpress.com/about/rohit-sharma/\">Rohit Sharma</a>&nbsp;got the better of England No 3 Ollie Pope. Crawley, who survived the earlier no-ball got cleaned up again.</p>\r\n\r\n<p>England skipper Ben Stokes won the toss and elected to bat against India.</p>\r\n\r\n<p><strong>With inputs from Tanishq V/Pratyush Raj and Sandip G from Ranchi.</strong></p>', '#India,#Sports,#Cricket,#Test Match', 1, 1, NULL, 1, '2024-02-23', 'February', 1, 2, '2024-02-25 14:09:15', '2024-02-25 14:09:15'),
(41, 7, 20, 1, 'Indian Sports highlights, February 22: Jamshedpur stun East Bengal; Nagal loses in ATP Pune Challenger.', 'indian-sports-highlights,-february-22:-jamshedpur-stun-east-bengal;-nagal-loses-in-atp-pune-challenger.', 'upload/news/1791700679347521.jpeg', '<h2>ISL: Jamshedpur sting East Bengal late in 2-1 victory</h2>\r\n\r\n<p>Jeremy Manzorro scored a sensational 97th-minute free-kick as Jamshedpur FC produced a stunning comeback in the ISL to beat East Bengal 2-1 at the JRD Tata Sports Complex on Thursday.</p>\r\n\r\n<p>East Bengal took the lead in first-half stoppage time thanks to a goal from Nandhakumar Sekar, and should have doubled that in the 80th minute, when Naorem Mahesh Singh missed a golden chance while through one-on-one with the goalkeeper. Mahesh was made to pay for that miss, as Rei Tachikawa brought Jamshedpur back level just a minute later. A foul from Mohammed Rakip gave Manzorro a chance to score his third free-kick in two games, and it was one that he gleefully took.</p>', '#Football,#Sports,#IFA', 1, 1, NULL, 1, '2024-02-24', 'February', 1, 2, '2024-02-25 14:19:18', '2024-02-25 14:19:18'),
(42, 7, 20, 5, 'Mumbai Indians vs Delhi Capitals Live Score, WPL 2024: Meg Lanning, Shafali Verma start proceedings, DC 1/0.', 'Mumbai Indians vs Delhi Capitals Live Score, WPL 2024: Meg Lanning, Shafali Verma start proceedings, DC 1/0.', 'upload/news/1791701056475491.png', '<p>Mumbai Indians vs Delhi Capitals WPL 2024 Live Score: Harmanpreet Kaur-led Mumbai Indians won the toss and opted to bowl first against Meg Lanning&rsquo;s Delhi Capitals, who finished runners-up in the inaugural edition, in the first match of the Women&rsquo; s Premier League at the M Chinnaswamy Stadium in Bengaluru on Friday. It will also be the battle between Meg Lanning and Hayley Matthews. Capitals&rsquo; skipper Meg Lanning, who has now retired from international cricket, took the Orange Cap last year for the highest run-getter, the Purple Cap went to Hayley Matthews of&nbsp; The worry for the Capitals ahead of the WPL is the fitness of veteran Marizanne Kapp, who is recovering from an illness that she suffered during the recent series against Australia. On the other hand, the defending champions doesn&rsquo;t have any injury concerns and the captain Harmanpreet Kaur has said on Thursday that they have been trying to keep their own expectation level to a minimum and focus on the WPL opener against&nbsp;<a href=\"https://indianexpress.com/section/sports/ipl/delhi-capitals/\">Delhi Capitals</a>.</p>', '#MI,#DC,#Cricket', 1, 1, NULL, 1, '2024-02-24', 'February', 1, 1, '2024-02-25 14:19:14', '2024-02-25 14:19:14'),
(43, 7, 20, 5, 'India Vs Hong Kong, Turkish Women\'s Cup 2024 Live Streaming: When And Where To Watch', 'india-vs-hong-kong,-turkish-women\'s-cup-2024-live-streaming:-when-and-where-to-watch', 'upload/news/1791701234775004.png', '<p>This will be India&#39;s fifth encounter against Hong Kong, ranked 79th in the FIFA rankings, and India would be buoyed by the fact that they have won all four previous games, netting 11 goals, while the opponents have managed just two.</p>\r\n\r\n<p>In their most recent clash, a friendly in 2019, India won by a solitary goal courtesy Pyari Xaxa, who also found the net in India&#39;s victory against Estonia in the ongoing tournament.</p>\r\n\r\n<p>India currently lead the table with three points and a goal difference of plus one, while Hong Kong are at the bottom having yet to open their account and a goal difference of -1 after losing 0-1 to Kosovo.</p>\r\n\r\n<p>Coach Chaoba Devi said Hong Kong had made a marked improvement since they last played in 2019 and her team would not underestimate the opponents.</p>\r\n\r\n<p>&quot;We played against Hong Kong a while ago, but they have shown significant improvement since then. We watched their recent match against Kosovo, where they put up a good fight despite losing by only one goal,&quot; said Chaoba Devi on the eve of the match.</p>\r\n\r\n<p>&quot;So, we can&#39;t underestimate them. We need to focus on our finishing, as we could have scored more goals in our first match against Estonia if our finishing was better. Today, we will do some finishing drills in our training to prepare for the Hong Kong match and ensure the girls are ready to perform well. It&#39;s our time to win this tournament,&quot; added Chaoba Devi.</p>\r\n\r\n<p>Xaxa, who was a junior when the two teams met in 2019, recollected that she had come off the bench in the second half to score the all-important goal against Hong Kong.</p>\r\n\r\n<p>&quot;I was a junior player back then. I came off the bench in the second half and playing with experienced senior players on an international tour was a big thing for me. Despite facing tough opponents, I assisted my team and scored a goal.</p>\r\n\r\n<p>&quot;We played as a unit against Estonia and had a never-give-up attitude. If we continue this way, we can win against Hong Kong as well. We just need to press hard and believe in our ball control,&quot; she said.</p>\r\n\r\n<p>Midfielder Anju Tamang said the win against Estonia was the result of cohesiveness in the side.</p>\r\n\r\n<p>&quot;After the Olympic Qualifiers Round 2, we are together and playing as a team. Winning against Estonia was an ample testimony of our cohesiveness. We need to keep ourselves motivated and play as a team, whatever happens. We will not take Hong Kong as an easy team and try to push our limits and win tomorrow also.&quot;</p>\r\n\r\n<p>Chaoba Devi added that the fine blend of young and experienced players was behind India&#39;s early success in the tournament.</p>\r\n\r\n<p>&quot;Our team&#39;s combination is really coming together nicely, and I feel fortunate to have some experienced players supporting me. Ashalata, our captain, plays a crucial role in defence and midfield. In midfield, Indumathi takes charge and controls the game.</p>\r\n\r\n<p>&quot;In our first match, we witnessed Indumathi&#39;s leadership on the field, guiding and motivating her teammates. When it comes to scoring, I knew she would do it. She consistently performs well in those situations, showcasing excellent footwork and skills.&quot;</p>', '#Hockey,#Sports', 1, 1, NULL, 1, '2024-02-23', 'February', 1, 2, '2024-02-25 14:19:11', '2024-02-25 14:19:11'),
(44, 7, 19, 1, 'Record-breaking 8-year-old chess prodigy Ashwath Kaushik tells CNN he wants to become a ‘world champion’', 'record-breaking-8-year-old-chess-prodigy-ashwath-kaushik-tells-cnn-he-wants-to-become-a-‘world-champion’', 'upload/news/1791701425681386.png', '<p>After becoming the youngest player to ever beat a&nbsp;<a href=\"https://cnn.com/2023/01/14/sport/chess-variants-explainer-spt-intl/index.html\">chess</a>&nbsp;grandmaster during a classical game over the board,&nbsp;<a href=\"https://cnn.com/2024/02/20/sport/ashwath-kaushil-chess-prodigy-grandmaster-spt-intl/index.html\">Ashwath Kaushik</a>&nbsp;has been adjusting to his new-found fame.</p>\r\n\r\n<p>The eight-year-old chess prodigy made history on Sunday by beating Poland&rsquo;s Jacek Stopa, 37, in round four of the Burgdorfer Stadthaus Open in Switzerland.</p>\r\n\r\n<p>The previous record had been set earlier this year by then eight-year-old Leonid Ivanovic &ndash; who became the first player under the age of nine to beat a grandmaster in a classical game &ndash; but Ashwath was five months younger than the Serbian when he beat Stopa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;I&rsquo;ve seen all the news about me beating a grandmaster and it feels amazing,&rdquo; Ashwath tells&nbsp;<a href=\"https://www.cnn.com/sport\">CNN Sport</a>, struggling to contain a beaming smile over Zoom.</p>\r\n\r\n<p>&ldquo;I feel proud of my game and how I played. I felt amazing, just unbelievable,&rdquo; adds Ashwath, who started playing chess when he was just four years old and quickly fell in love with the &ldquo;really fun&rdquo; game.</p>\r\n\r\n<p>His journey started when his parents introduced him to ChessKid.com &ndash; an online platform for children to learn about the game &ndash; as a way of making the most of the inevitable hours their son was spending in front of a screen.</p>\r\n\r\n<p>Ashwath was then given a chess board and it wasn&rsquo;t long before he started beating his parents and grandparents.</p>\r\n\r\n<p>His mother, Rohini Ramachandran, credits the Covid-19 pandemic for accelerating her son&rsquo;s chess development, with Ashwath having to stay indoors during those months of lockdown.</p>\r\n\r\n<p>Ashwath then started working with a coach and now practices up to eight hours a day during the weekends, focusing more on schoolwork during the weekdays.</p>\r\n\r\n<p>&ldquo;I practice a lot each day,&rdquo; Ashwath says when asked what makes him so good at chess. &ldquo;A lot of children have a natural talent, so I think I&rsquo;ve got a natural talent at chess.&rdquo;</p>\r\n\r\n<h2>Big dreams</h2>\r\n\r\n<p>Having a made a name for himself at youth level &ndash; notably becoming the world Under-8 Rapid champion in 2022, per&nbsp;<a href=\"https://www.chess.com/news/view/8-year-old-ashwath-kaushik-beats-chess-grandmaster-sets-new-record\" target=\"_blank\">Chess.com</a>&nbsp;&ndash; Ashwath wants to make it to the very top of the game.</p>\r\n\r\n<p>&ldquo;A world champion,&rdquo; he says, without hesitation, when asked what he wants to become when he&rsquo;s older, before adding: &ldquo;That will be a bit of time. It won&rsquo;t come quickly.&rdquo;</p>\r\n\r\n<p>Ashwath speaks passionately and eloquently about chess and says he&rsquo;s never nervous when playing opponents with decades more experience than himself.</p>\r\n\r\n<p><img alt=\"Ashwath says he\'s not nervous when playing against much older opponents.\" src=\"https://media.cnn.com/api/v1/images/stellar/prod/ashwath1-1.jpg?q=w_1110,c_fill\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>Ashwath says he&#39;s not nervous when playing against much older opponents.&nbsp;</p>\r\n\r\n<p>Carleton Lim/Singapore Chess Federation</p>\r\n\r\n<p>Given his rapid development as a chess player, Ashwath is unlike most eight-year-olds, but, in many ways, he&rsquo;s also like any other child his age.</p>\r\n\r\n<p>He says he spends his time away from the board playing with Lego, going on bike rides and visiting his friends, who he says are all very supportive of his fledgling chess career.</p>', '#Sports,# chess,#world Champion', 1, 1, NULL, 1, '2024-02-23', 'February', 1, 2, '2024-02-25 14:19:08', '2024-02-25 14:19:08'),
(45, 7, 19, 5, 'Mercedes’ Toto Wolff says investigation into Red Bull’s Christian Horner is ‘an issue for all Formula One’.', 'mercedes’-toto-wolff-says-investigation-into-red-bull’s-christian-horner-is-‘an-issue-for-all-formula-one’.', 'upload/news/1791701630434689.jpg', '<p>Mercedes team principal Toto Wolff has called for transparency around the investigation into allegations of misconduct&nbsp;<a href=\"https://cnn.com/2024/02/16/sport/red-bull-f1-team-principal-christian-horner-denies-allegation-spt-intl/index.html\">leveled against Red Bull boss Christian Horner.</a></p>\r\n\r\n<p>An independent investigation was launched by Red Bull in February after Horner was accused of engaging in inappropriate behavior towards a member of the racing team.</p>\r\n\r\n<p>&ldquo;What Red Bull has started as an independent investigation, if this is done in the right way with transparency and with rigor, I think that&rsquo;s something that we need to look at &ndash; what the outcomes are and what it means for Formula One, and how we can learn from that,&rdquo; Wolff said at a press conference on Wednesday.</p>\r\n\r\n<p>The Red Bull parent company in Austria has declined to comment on the investigation or provide a timeline for the outcome despite the season starting in Bahrain on March 2.</p>\r\n\r\n<p><a href=\"https://edition.cnn.com/2024/02/06/sport/formula-one-grid-walk-red-bull-spt-intl\"><img alt=\"SAO PAULO, BRAZIL - NOVEMBER 04: Maisa Silva poses for a photo with the car of Max Verstappen of the Netherlands and Oracle Red Bull Racing on the grid prior to the Sprint ahead of the F1 Grand Prix of Brazil at Autodromo Jose Carlos Pace on November 04, 2023 in Sao Paulo, Brazil. (Photo by Mark Thompson/Getty Images)\" src=\"https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-1774990265.jpeg?c=16x9&amp;q=h_144,w_256,c_fill\" style=\"width:500px\" /></a></p>\r\n\r\n<p><a href=\"https://edition.cnn.com/2024/02/06/sport/formula-one-grid-walk-red-bull-spt-intl\">RELATED ARTICLEA-list celebrities, fast cars and media mishaps: Inside the &lsquo;incredible&rsquo; world of an F1 grid walk</a></p>\r\n\r\n<p>&ldquo;I obviously deny fully the allegations that have been made against me,&rdquo;&nbsp;<a href=\"https://www.cnn.com/2024/02/16/sport/red-bull-f1-team-principal-christian-horner-denies-allegation-spt-intl/index.html\">Horner told CNN Sport last Thursday</a>&nbsp;at the launch of the team&rsquo;s car for the new season. &ldquo;There&rsquo;s an ongoing process and that obviously is being worked through at the moment.&rdquo;</p>\r\n\r\n<p>Horner also told the BBC that he remains in his role with the team and said he is focusing on preparing for the upcoming season.</p>\r\n\r\n<p>At a press conference on Wednesday, Wolff was reportedly the only one out of five team principals who addressed the Horner investigation.</p>\r\n\r\n<p><img alt=\"Wolff has called for transparency around the investigation into Horner.\" src=\"https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-1442730973.jpeg?q=w_1110,c_fill\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p>Wolff has called for transparency around the investigation into Horner.&nbsp;</p>\r\n\r\n<p>Bryn Lennon/Getty Images</p>\r\n\r\n<p>&ldquo;I think it&rsquo;s clear. Formula One and what the teams do, we stand for inclusion, equality, fairness, diversity and that&rsquo;s not only talking about it, but living it day-in, day-out,&rdquo; Wolff said.</p>\r\n\r\n<p>&ldquo;And I think these are the standards we&rsquo;re setting ourselves. We are a global sport, one of the most important sports platforms in the world, and we are role models,&rdquo; he added.</p>\r\n\r\n<p>Earlier this month, Dutch news outlet&nbsp;<a href=\"https://www.telegraaf.nl/sport/1645545426/schok-bij-red-bull-onafhankelijk-onderzoek-gestart-naar-teambaas-christian-horner\" target=\"_blank\">De Telegraaf</a>&nbsp;reported that Horner had been accused of inappropriate behavior towards a member of Red Bull Racing, according to several unnamed sources.</p>\r\n\r\n<p>The report doesn&rsquo;t name the team member or describe the circumstances.</p>\r\n\r\n<p>Wolff went on to speak about the Horner investigation, adding, &ldquo;There is a lot of speculation that&rsquo;s been happening over the last weeks, speculation that we have heard of, and lots of things that are going on.</p>\r\n\r\n<p>&ldquo;Because we want to talk about racing cars and we want to talk about the sport rather than these kind of very critical topics, that are more [than] just a team&rsquo;s issue, it&rsquo;s a phenomenon or it&rsquo;s an issue for all of Formula One and in general for every individual that works out there,&rdquo; Wolff added.</p>', '#Sports,#F1', 1, 1, NULL, 1, '2024-02-24', 'February', 1, 0, '2024-02-25 14:19:05', '2024-02-25 14:19:05'),
(46, 12, NULL, 1, 'India Government highlights govt\'s vision for the youth.', 'india-government-highlights-govt\'s-vision-for-the-youth.', 'upload/news/1791722866541603.jpg', '<p>New Delhi: Prime Minister Narendra Modi emphasized the government&#39;s commitment to realizing the aspirations of India&#39;s youth, highlighting the next 25 years as a period of significant opportunities.&nbsp;</p>\r\n\r\n<p>Speaking at an event on Tuesday, Modi underscored a strategic plan to support the ambitions of young Indians, regardless of their regional or social backgrounds.</p>\r\n\r\n<p>&ldquo;The youth of India, irrespective of which region or society they are born in, have limitless dreams. To fulfill these dreams, the government has a clear roadmap and a clear vision,&quot; an official statement said quoting the Prime Minister.</p>\r\n\r\n<p>The Prime Minister highlighted key initiatives like the National Education Policy, the establishment of 10,000 Atal Tinkering Labs, and the startup culture. He also noted the emergence of eight crore entrepreneurs from vulnerable sections of the society had emerged due to the &lsquo;Mudra Yojana&rsquo;, a scheme to provide loans up to 10 lakh to the non-corporate, non-farm small/micro enterprises</p>\r\n\r\n<p>India&#39;s goal to become the third-largest economy will benefit the youth, ensuring improved health, education, employment opportunities, and life quality, Modi said.&nbsp;</p>\r\n\r\n<p>He attributed the success of Indian athletes in global competitions to the Khelo India campaign, which provides accessible sports facilities and transparent athlete selection.</p>\r\n\r\n<p>Modi urged the youth to prioritize health, advocating physical exercise, digital detox, mental well-being, sufficient rest, and a diet including millet. Addressing the issue of drug addiction, he called for a unified national effort against it, involving religious leaders, the government, and families.</p>', '#Good initiative,#Youth,#India', 1, 1, NULL, 1, '2024-02-25', 'February', 1, 1, '2024-02-27 07:40:47', '2024-02-27 07:40:47'),
(47, 9, NULL, 1, 'Iran forces kill Jaish al-Adl terrorists inside Pakistan territory: Report', 'iran-forces-kill-jaish-al-adl-terrorists-inside-pakistan-territory:-report', 'upload/news/1791880670597553.jpg', '<p>In the latest development, Iran&#39;s forces, in an armed clash, attacked a militant group, one month after the two countries conducted air strikes on each other</p>\r\n\r\n<p>Iran&#39;s military forces killed senior Jaish al-Adl (Army of Justice) militant group commander Ismail Shahbakhsh and some of his companions in the Pakistan territory, Iran International English reported, citing Iran&#39;s state-run media.</p>\r\n\r\n<p>In the latest development, Iran&#39;s forces, in an armed clash, attacked a militant group, one month after the two countries conducted air strikes on each other.</p>\r\n\r\n<p>Hindustan Times - your fastest source for breaking news!&nbsp;</p>\r\n\r\n<p>Formed in 2012, Jaish al-Adl, designated as a &quot;terrorist&quot; organization by Iran, is a Sunni terrorist group that operates in Iran&#39;s southeastern province of Sistan-Baluchistan, Al Arabiya News reported.</p>\r\n\r\n<p>Over the years, Jaish al-Adl has launched numerous attacks on Iranian security forces. In December, Jaish al-Adl took responsibility for an attack on a police station in Sistan-Balochistan that claimed the lives of at least 11 police personnel, according to Al Arabiya News.</p>\r\n\r\n<p>However, last month, weeks after carrying out missile strikes against &quot;terror units&quot; in each other&#39;s territories, Pakistan and Iran mutually agreed to expand security cooperation, The News International reported.</p>\r\n\r\n<p>The agreement was announced during a joint press conference by Pakistan Foreign Minister Jalil Abbas Jilani and his Iranian counterpart Hossein Amir-Abdollahian at the Pakistan Foreign Office.</p>\r\n\r\n<p>Jilani said that both Iran and Pakistan can resolve &quot;misunderstandings&quot; fairly quickly. The two countries also agreed to fight terrorism in their respective areas and allay each other&#39;s concerns, he added.</p>\r\n\r\n<p>However, the recent attack showed the opposite.</p>\r\n\r\n<p>Notably, tensions between the two nations escalated after Tehran and Islamabad carried out missile strikes against each other targeting &#39;terror units&#39;.</p>\r\n\r\n<p>Iran carried out missile and drone strikes in Pakistan on the late night of January 16, to destroy two &quot;important headquarters&quot; of Jaish al-Adl (Army of Justice). Islamabad alleged that the strikes killed two children and injured three girls, Al Arabiya News reported, citing Tasnim News Agency.</p>\r\n\r\n<p>Pakistan withdrew its ambassador from Iran on January 17 and announced that it would not allow the Iranian envoy visiting his home country at that time to return to protest a &quot;blatant breach&quot; of its sovereignty.</p>\r\n\r\n<p>The next day, on January 18, Pakistan launched strikes inside Iran in a retaliatory attack. Islamabad said it targeted the hideouts used by &#39;terrorist militant organizations,&#39; namely the Balochistan Liberation Army (BLA) and the Balochistan Liberation Front (BLF).</p>\r\n\r\n<p>However, later, both countries agreed on the return of ambassadors of both countries to their respective posts and also decided to mutually work for &#39;de-escalation&#39; of tensions, Geo News reported.</p>', '#Iran,#Militent,#International news', 1, 1, NULL, 1, '2024-02-25', 'February', 1, 0, '2024-02-27 07:40:49', '2024-02-27 07:40:49'),
(48, 20, 22, 15, 'IPL schedule announcement LIVE: CSK vs RCB on March 24', 'ipl-schedule-announcement-live:-csk-vs-rcb-on-march-24', 'upload/news/1792351895498493.jpg', '<p><strong>IPL 2024 schedule announcement highlights:</strong>&nbsp;The Board of Control for Cricket in India (BCCI) has unveiled the much-awaited schedule of the Indian Premier League (IPL) 2024. The BCCI released the IPL 2024 schedule for only the first 15 days of the elite tournament. The roster for the remaining matches will be announced once dates for the General Elections are finalised. Set for its 17th season, the Indian Premier League promises to be bigger and better than ever. We are just a month away from Indian cricket&#39;s biggest T20 carnival. After all, it feels like just last month that Ravindra Jadeja struck a boundary off the last ball to take Chennai Super Kings to their fifth IPL title, but the fact remains that it&#39;s been 8 long months to that epic night in Ahmedabad. Guess that&#39;s what the IPL does &ndash; leave an ever-lasting impact!</p>\r\n\r\n<p>The IPL 2024&#39;s biggest roadblock was the fact that it is expected to clash with the Lok Sabha elections. Twice has it happened previously, and it led to scattered decisions. The 2009 edition was moved entirely to South Africa, whereas in 2014, the IPL was played in two halves &ndash; the first in the UAE and the other back in India. In 2019, the two events did not collide, and hence the IPL, starting March 23, was played entirely in India. This year too, while there were speculations, IPL chairman Arun Dhumal clarified once and for all that the IPL will not be moved abroad, but the full picture will only be painted once there is more clarity.</p>\r\n\r\n<p>Back to the cricket. This year&#39;s IPL has so much to look forward to. Mumbai Indians have a new captain in Hardik Pandya and Gujarat Titans has Shubman Gill. And of course, the big swansong of MS Dhoni. The Chennai Super Kings captain said last year that winning the IPL in 2023 would have been the perfect time for him to retire but he plans on coming back for one last run &#39;next year&#39;. Cut to 2024, here we are. In what is Dhoni&#39;s final season in all probability, MSD is rocking shades of when he burst onto the scene. He has grown his hair like it was in the mid-2000s and he is likely to play with BAS as his bat sticker. Only Dhoni is capable of such meaningful and priceless gestures.</p>\r\n\r\n<p>Moving on to CSK&#39;s biggest rivals, the Mumbai Indians have already created headlines even before the start of the tournament. In fact, they created ripples on December 15, 2023 itself when they announced Hardik the new captain of the franchise, replacing Rohit Sharma. The decision created a social media storm with truckloads of MI and other fans spamming their franchise&#39;s timelines and being vocal with their displeasure. But it is what it is. The team felt that now is the right time for MI, who have gone without a title for three seasons, to make the transition, and once Hardik came on board, they just knew who it was going to be. In fact, according to reports, Hardik&#39;s stipulation for his return to MI was allegedly a guarantee of captaincy.</p>\r\n\r\n<p>Outside of MI and CSK, the biggest factor heading into the IPL 2024 are the auction, that took place on December 19, where Pat Cummins and Mitchell Marsh struck gold. The Australian pace-bowling duo smashed records, with Cummins becoming the first player to surpass the 20-crore margin, eventually heading to Sunrisers Hyderabad. However, even before the news if Cummins&#39; record-breaking deal could reach to all parts of the world, it was bettered by Starc, who became the costliest player of all time, with KKR splurging a gobsmacking&nbsp;₹24.75 crore on him. Meanwhile, Harshal Patel emerged as the most expensive India, with Punjab Kings shelling out&nbsp;₹11.75 crore.</p>\r\n\r\n<p>So yeah, the stage is set. Will Cummins, Starc be able to live up to the expectations? Who will be this year&#39;s breakout star? The first step towards answering all these questions was taken today at 5:30 PM.</p>\r\n\r\n<p><strong>Below are a few important pointers related to the IPL 2024 schedule announcement:</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>Chennai Super Kings and Royal Challengers Bangalore will play the IPL 2024 opener at Chepauk.</p>\r\n\r\n<p>-Delhi Capitals (DC) will play their first two home games in Visakhapatnam.</p>\r\n\r\n<p>- The schedule was announced on Thursday at 5:30 PM IST.</p>\r\n\r\n<p>- The entire schedule was not unveiled by the BCCI.</p>\r\n\r\n<p>- The IPL 2024 will begin on March 22.</p>\r\n\r\n<p>- The entire IPL 2024 will take place in India.</p>', 'awesome', 1, 1, 1, 1, '2024-03-01', 'March', 1, 0, '2024-03-01 13:36:09', '2024-03-01 19:06:09'),
(49, 20, 23, 15, 'Beijing secures hosting rights for 2027 World Athletics Championships', 'beijing-secures-hosting-rights-for-2027-world-athletics-championships', 'upload/news/1792352130833324.jpg', '<p>NEW DELHI:&nbsp;<a href=\"https://www.happytrips.com/topic/beijing\" target=\"\">Beijing</a>&nbsp;has been successfully chosen as the host city for the&nbsp;2027 World Athletics Championships. The decision follows the withdrawal of Rome&#39;s bid earlier in the day, as the&nbsp;Italian athletics federation&nbsp;faced challenges in securing financial support from the government.<br />\r\nThis marks Beijing&#39;s second time hosting the&nbsp;World Athletics&nbsp;Championships, with the city previously staging the event in 2015.World&nbsp;Athletics&nbsp;President Sebastian Coe exte&nbsp;..<br />\r\n&nbsp;</p>\r\n\r\n<p>&quot;Congratulations to Beijing on their successful bid to host &nbsp;..<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'awesome', NULL, 1, NULL, 1, '2024-03-01', 'March', 1, 0, '2024-03-02 20:11:46', '2024-03-02 14:41:46'),
(50, 22, 24, 1, 'Deepika Padukone and Ranveer Singh get mobbed at Jamnagar airport. Watch how he protected his pregnant wife', 'deepika-padukone-and-ranveer-singh-get-mobbed-at-jamnagar-airport.-watch-how-he-protected-his-pregnant-wife', 'upload/news/1792353511046033.jpeg', '<p>Deepika Padukone and Ranveer Singh were mobbed at Jamnagar airport on Thursday, when they arrived for Anant Ambani and Radhika Merchant&rsquo;s pre-wedding bash.On Thursday evening, parents-to-be&nbsp;<a href=\"https://www.hindustantimes.com/entertainment/bollywood/deepika-padukone-pregnant-ranveer-singh-baby-due-date-september-101709181410047.html\" target=\"_blank\">Deepika Padukone</a>&nbsp;and Ranveer Singh were clicked at Mumbai and Jamnagar airports. The actors had just shared their pregnancy news earlier in the day and were adorably twinning in white as they arrived for Anant Ambani and Radhika Merchant&rsquo;s pre-wedding festivities in Jamnagar.&nbsp;</p>\r\n\r\n<p><strong>Mobbed by fans</strong></p>\r\n\r\n<p>As Deepika Padukone and Ranveer Singh arrived at Jamnagar, they were mobbed by fans, who wanted to click pictures and selfies.&nbsp;<a href=\"https://www.hindustantimes.com/entertainment/bollywood/deepika-padukone-ranveer-singh-announce-pregnancy-sonam-kapoor-priyanka-chopra-vikrant-massey-madhuri-dixit-shower-love-101709183924309.html\" target=\"_blank\">Ranveer&nbsp;</a>could be seen holding Deepika&rsquo;s hand and helping her make her way to their car. He even put his arms around her to protect her from the crowd. Ranveer looked happy as he couldn&rsquo;t stop grinning and waved to fans. The couple was also flanked by security, who kept the crowd from getting too close.</p>', '#Movie,#ENTERTAINMENT,#BOLLYWOOD', 1, NULL, NULL, 1, '2024-03-01', 'March', 1, 0, '2024-03-01 14:01:49', '2024-03-01 19:31:49'),
(51, 22, 25, 15, 'Friends actor Matthew Perry dies at 54 Perry found dead in a hot tub at his Los Angeles home, the LA Times reports.', 'friends-actor-matthew-perry-dies-at-54-perry-found-dead-in-a-hot-tub-at-his-los-angeles-home,-the-la-times-reports.', 'upload/news/1792353710557269.jpg', '<p>Perry was found dead on Saturday afternoon in a hot tub at his Los Angeles home, the LA Times reported, citing law enforcement sources.</p>\r\n\r\n<p>Perry became one of the world&rsquo;s most recognised actors for his role as the sarcastic, wisecracking Bing in NBC&rsquo;s Friends, which ran for 10 seasons from 1994 to 2004.</p>\r\n\r\n<p>Warner Bros TV, which produced Friends, said in a statement: &ldquo;We are devastated by the passing of our dear friend Matthew Perry.</p>\r\n\r\n<p>&ldquo;The impact of his comedic genius was felt around the world, and his legacy will live on in the hearts of so many.</p>\r\n\r\n<p>&ldquo;This is a heartbreaking day, and we send our love to his family, his loved ones, and all of his devoted fans.&rdquo;</p>\r\n\r\n<p>Maggie Wheeler, who played Bing&rsquo;s on-and-off girlfriend Janice in Friends, was the first of Perry&rsquo;s Friends co-stars to publicly respond to his death.</p>\r\n\r\n<p>&ldquo;I feel so very blessed by every creative moment we shared,&rdquo; Wheeler wrote on Instagram.</p>\r\n\r\n<p>Perry, who also starred in the films Fools Rush In and The Whole Nine Yards, had spoken openly about his struggles with addiction and had attended rehab for painkillers and alcohol.In his 2022 memoir Friends, Lovers, and the Big Terrible Thing, Perry recounted a five-month hospitalisation in 2018 following a colon rupture that he said left him with a 2 percent chance of surviving the night.</p>', '#WORLDENTERTAINMENT,#HOLLYWOOD,#WEBSERIES,#FRIENDS', NULL, 1, NULL, 1, '2024-03-01', 'March', 1, 0, '2024-03-01 14:05:00', '2024-03-01 19:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('26298b7b-a56f-45f7-8ffb-bdd14c65659c', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 16, '{\"message\":\"New Review Added In News\"}', NULL, '2024-02-28 12:48:49', '2024-02-28 12:48:49'),
('2f6069d2-94ef-46c9-9111-2c1c559cd16e', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 1, '{\"message\":\"New Review Added In News\"}', NULL, '2024-02-28 12:48:49', '2024-02-28 12:48:49'),
('7f0d7ef0-013f-486d-b345-ce77e6b05083', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 13, '{\"message\":\"New Review Added In News\"}', NULL, '2024-02-28 12:48:49', '2024-02-28 12:48:49'),
('a0ef79c3-052f-457c-8ed5-2be6c33b3016', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 15, '{\"message\":\"New Review Added In News\"}', NULL, '2024-02-28 12:48:49', '2024-02-28 12:48:49'),
('d99af5bd-cc3d-480d-abc2-01addac2eed9', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 5, '{\"message\":\"New Review Added In News\"}', NULL, '2024-02-28 12:48:49', '2024-02-28 12:48:49');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(2, 'category.list', 'web', 'category', '2024-02-27 11:50:06', '2024-02-27 11:50:06'),
(3, 'category.add', 'web', 'category', '2024-02-27 11:50:31', '2024-02-27 11:50:31'),
(4, 'category.edit', 'web', 'category', '2024-02-27 11:50:42', '2024-02-27 11:50:42'),
(5, 'category.delete', 'web', 'category', '2024-02-27 11:50:57', '2024-02-27 11:50:57'),
(6, 'subcategory.menu', 'web', 'subCategory', '2024-02-27 11:51:50', '2024-02-27 11:51:50'),
(7, 'subcategory.list', 'web', 'subCategory', '2024-02-27 11:52:10', '2024-02-27 11:52:10'),
(8, 'subcategory.add', 'web', 'subCategory', '2024-02-27 11:52:20', '2024-02-27 11:52:20'),
(9, 'subcategory.edit', 'web', 'subCategory', '2024-02-27 11:52:32', '2024-02-27 11:52:32'),
(10, 'subcategory.delete', 'web', 'subCategory', '2024-02-27 11:52:43', '2024-02-27 11:52:43'),
(11, 'news.menu', 'web', 'news', '2024-02-27 11:52:57', '2024-02-27 11:52:57'),
(12, 'news.list', 'web', 'news', '2024-02-27 11:53:11', '2024-02-27 11:53:11'),
(13, 'news.add', 'web', 'news', '2024-02-27 11:53:22', '2024-02-27 11:53:22'),
(14, 'news.edit', 'web', 'news', '2024-02-27 11:53:33', '2024-02-27 11:53:33'),
(15, 'news.delete', 'web', 'news', '2024-02-27 11:53:46', '2024-02-27 11:53:46'),
(16, 'banner.menu', 'web', 'banner', '2024-02-27 11:54:01', '2024-02-27 11:54:01'),
(17, 'photo.menu', 'web', 'photo', '2024-02-27 11:54:14', '2024-02-27 11:54:14'),
(18, 'photo.list', 'web', 'photo', '2024-02-27 11:54:25', '2024-02-27 11:54:25'),
(19, 'photo.add', 'web', 'photo', '2024-02-27 11:54:38', '2024-02-27 11:54:38'),
(20, 'photo.edit', 'web', 'photo', '2024-02-27 11:54:50', '2024-02-27 11:54:50'),
(21, 'photo.delete', 'web', 'photo', '2024-02-27 11:55:01', '2024-02-27 11:55:01'),
(22, 'video.menu', 'web', 'video', '2024-02-27 11:55:15', '2024-02-27 11:55:15'),
(23, 'video.list', 'web', 'video', '2024-02-27 11:55:26', '2024-02-27 11:55:26'),
(24, 'video.add', 'web', 'video', '2024-02-27 11:55:36', '2024-02-27 11:55:36'),
(25, 'video.edit', 'web', 'video', '2024-02-27 11:55:49', '2024-02-27 11:55:49'),
(26, 'video.delete', 'web', 'video', '2024-02-27 11:55:59', '2024-02-27 11:55:59'),
(27, 'live.menu', 'web', 'live', '2024-02-27 11:56:12', '2024-02-27 11:56:12'),
(28, 'review.menu', 'web', 'review', '2024-02-27 11:56:23', '2024-02-27 11:56:23'),
(29, 'seo.menu', 'web', 'seo', '2024-02-27 11:56:34', '2024-02-27 11:56:34'),
(30, 'setting.menu', 'web', 'admin', '2024-02-27 11:56:51', '2024-02-27 11:56:51'),
(31, 'role.menu', 'web', 'role', '2024-02-27 11:57:03', '2024-02-27 11:57:03'),
(33, 'category.menu', 'web', 'category', '2024-02-27 13:22:56', '2024-02-27 13:22:56'),
(36, 'About.Us', 'web', 'admin', '2024-02-29 22:53:52', '2024-02-29 22:55:51'),
(37, 'admin.carrer', 'web', 'admin', '2024-03-02 07:48:38', '2024-03-02 07:49:04'),
(38, 'admin.create_all_job_designation', 'web', 'admin', '2024-03-03 14:18:01', '2024-03-03 14:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photo_galleries`
--

CREATE TABLE `photo_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photo_galleries`
--

INSERT INTO `photo_galleries` (`id`, `photo_gallery`, `post_date`, `created_at`, `updated_at`) VALUES
(1, 'upload/multi/1791894788285156.jpg', '25 February 2024', NULL, '2024-02-25 12:30:37'),
(2, 'upload/multi/1791894001729287.jpg', '25 February 2024', NULL, NULL),
(3, 'upload/multi/1791894002197937.jpg', '25 February 2024', NULL, NULL),
(4, 'upload/multi/1791894002723874.jpg', '25 February 2024', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `privacy`, `created_at`, `updated_at`) VALUES
(6, '<p>Upcoming Our Privacy Policy..</p>', '2024-03-01 03:28:44', '2024-03-01 03:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `news_id`, `user_id`, `comments`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 8, 'hello this news is very helpful', '1', '2024-02-26 14:17:21', '2024-02-26 15:13:49'),
(3, 11, 8, 'hii this is very helpfull post', '1', '2024-02-26 15:14:35', '2024-02-26 15:16:37'),
(4, 11, 8, 'source of this news from where?', '1', '2024-02-26 15:15:07', '2024-02-26 15:16:32'),
(5, 5, 8, 'Wow Election is coming', '1', '2024-02-28 12:45:11', '2024-02-28 12:55:09'),
(6, 5, 8, 'Wow Election is coming', '1', '2024-02-28 12:48:47', '2024-02-28 12:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(3, 'SuperAdmin', 'web', '2024-02-27 12:58:00', '2024-02-27 14:20:19'),
(5, 'Editor', 'web', '2024-02-27 12:58:43', '2024-02-27 12:58:43'),
(6, 'Reporter', 'web', '2024-02-27 12:59:03', '2024-02-27 13:00:58'),
(8, 'Admin', 'web', '2024-02-27 15:05:31', '2024-02-27 15:05:31'),
(10, 'visitor', 'web', '2024-02-28 09:04:40', '2024-02-28 09:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 3),
(2, 5),
(2, 8),
(2, 10),
(3, 3),
(3, 5),
(3, 8),
(3, 10),
(4, 3),
(4, 5),
(4, 8),
(4, 10),
(5, 3),
(5, 8),
(5, 10),
(6, 3),
(6, 8),
(7, 3),
(7, 8),
(8, 3),
(8, 8),
(9, 3),
(9, 8),
(10, 3),
(10, 8),
(11, 3),
(11, 6),
(11, 8),
(12, 3),
(12, 6),
(12, 8),
(13, 3),
(13, 6),
(13, 8),
(14, 3),
(14, 6),
(14, 8),
(15, 3),
(15, 6),
(15, 8),
(16, 3),
(17, 3),
(17, 5),
(17, 6),
(17, 8),
(18, 3),
(18, 5),
(18, 6),
(18, 8),
(19, 3),
(19, 5),
(19, 6),
(19, 8),
(20, 3),
(20, 5),
(20, 6),
(20, 8),
(21, 3),
(21, 5),
(21, 6),
(21, 8),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(30, 6),
(30, 8),
(31, 3),
(31, 8),
(33, 3),
(33, 5),
(33, 8),
(33, 10),
(36, 3),
(36, 8),
(37, 3),
(37, 8),
(38, 3),
(38, 8);

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `meta_title`, `meta_author`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Best Online News Portal', 'Admin', 'News', 'Best Online News Portal', NULL, '2024-02-27 00:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 19, 'INTERNATIONAL AFFAIR', 'international-affair', NULL, '2024-02-23 01:20:03'),
(2, 19, 'INDIAN POLITICS', 'indian politics', NULL, NULL),
(3, 19, 'WORLD POLITICS', 'world politics', NULL, NULL),
(4, 19, 'ELECTION NEWS', 'election news', NULL, NULL),
(5, 15, 'EDUCATION', 'education', NULL, NULL),
(6, 15, 'TECH GADGETS', 'tech gadgets', NULL, NULL),
(7, 15, 'ASTRONOMIC', 'astronomic', NULL, NULL),
(9, 14, 'CARRER', 'carrer', NULL, NULL),
(10, 13, 'HEALTH', 'health', NULL, NULL),
(11, 13, 'FASHION', 'fashion', NULL, NULL),
(12, 13, 'FOOD', 'food', NULL, NULL),
(13, 13, 'HOME DECOR', 'home decor', NULL, NULL),
(14, 13, 'RELATIONSHIP', 'relationship', NULL, NULL),
(15, 11, 'WORLD NEWS', 'world news', NULL, NULL),
(16, 11, 'INDIAN NEWS', 'indian news', NULL, NULL),
(17, 8, 'WORLD BUSINESS', 'world business', NULL, NULL),
(18, 8, 'INDIAN BUSINESS', 'indian business', NULL, NULL),
(19, 7, 'WORLD SPORTS', 'world sports', NULL, NULL),
(20, 7, 'INDIAN SPORTS', 'indian sports', NULL, NULL),
(22, 20, 'INDIAN SPORTS', 'indian sports', NULL, NULL),
(23, 20, 'WORLD SPORTS', 'world sports', NULL, NULL),
(24, 22, 'INDIAN ENTERTAINMENT', 'indian entertainment', NULL, NULL),
(25, 22, 'WORLD ENTERTAINMENT', 'world entertainment', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$5/TxQyo1y3NhhykHJwIWd.z6D8ql58Ul69ro1VDpC2VRUx9YvH.X6', '240218205610915176_760941077332603_627587076912229947_n.jpg', '9732429170', 'admin', 'active', NULL, NULL, '2024-02-28 08:59:03'),
(2, 'demouser', 'demouser', 'demouser@gmail.com', NULL, '$2y$10$5/TxQyo1y3NhhykHJwIWd.z6D8ql58Ul69ro1VDpC2VRUx9YvH.X6', '24022014071f4e2.svg', '9732429170', 'user', 'active', NULL, NULL, '2024-02-20 08:37:06'),
(4, 'Oswaldo McDermott', NULL, 'jamey.bogan@example.net', '2024-02-18 02:56:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '386-717-4278', 'user', 'inactive', 'kcmAXHtUK8', '2024-02-18 02:56:42', '2024-02-18 02:56:42'),
(5, 'Shayam Das', 'Shayam Das', 'ShayamDas@gmail.com', '2024-02-18 02:56:42', '$2a$12$ZIPeMQs5.gbHM92aGNQsoOVXftpCpC/peyGGbeUEubiw3LrQsMV6G', '202402220628jurnalism.png', '9765899654', 'admin', 'active', 'LbOgrEEsaBVj8NnA3qLMasO36MWN75IxbDyRDDlU0BsIXGjC7xwYwaMWVPpx', '2024-02-18 02:56:42', '2024-02-28 09:10:40'),
(7, 'SARBANI PAUL', NULL, 'sarbani007@gmail.com', NULL, '$2y$10$W5ckDkMeuk/.myXiSFFIz.aPaOkSE7VuwSrogKWUXiwNq1X0Evf5.', NULL, NULL, 'user', 'active', NULL, '2024-02-20 03:40:18', '2024-02-20 03:40:18'),
(8, 'demo', NULL, 'demo@gmail.com', NULL, '$2a$12$zoDhjwcIKsCV/m1hSor66up22dAI/7jFOl1RoTW5WfQnV/yyrIVAK', '24022618431643105576_1641121485_rupam5.jpg', NULL, 'user', 'active', NULL, '2024-02-20 03:47:05', '2024-02-26 13:13:44'),
(9, 'santosh paul', NULL, 'santosh1001@gmail.com', NULL, '$2y$10$I/vobVPxLVhvfF1w.i1N3O6xDPlXsqjl/O9cXYPka6WT5Hy3oFPnm', NULL, NULL, 'user', 'active', NULL, '2024-02-20 03:52:26', '2024-02-20 03:52:26'),
(13, 'Elon Mask', 'Elon Mask', 'elon@gmail.com', NULL, '$2y$10$tPVrqRYpr/SlQ0W1Ab1At.PgvSVVbiQyx27d1x.aLfxzRKrP9oVvu', NULL, '9735266489', 'admin', 'active', NULL, '2024-02-28 08:25:09', '2024-02-28 08:58:26'),
(15, 'Sangita Das', 'Sangita Das', 'sangita@gmail.com', NULL, '$2a$12$ZIPeMQs5.gbHM92aGNQsoOVXftpCpC/peyGGbeUEubiw3LrQsMV6G', '202402281408untitled-20221020214140.jpg', '9732429171', 'admin', 'active', NULL, '2024-02-28 08:34:04', '2024-03-01 13:30:32'),
(16, 'sourav paul', 'sourav paul', 'sourav@gmail.com', NULL, '$2y$10$IxhHnJD0uuiDB5bDbG6MxuMge6Fp4z7rj0z4bgGYrQW58hnZyHNCa', '202402281442user-4.jpg', '1234567890', 'admin', 'active', NULL, '2024-02-28 09:10:35', '2024-03-02 08:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `video_galleries`
--

CREATE TABLE `video_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_galleries`
--

INSERT INTO `video_galleries` (`id`, `video_image`, `video_title`, `video_url`, `post_date`, `created_at`, `updated_at`) VALUES
(2, 'upload/video/1791939287974516.jpg', 'Bishakto Manush - Fossils - Lyrics || বিষাক্ত মানুষ - ফসিলস - লিরিক্স || Rupam Islam', 'https://www.youtube.com/watch?v=fYKipzYTnZ0', '26 February 2024', NULL, '2024-02-26 00:46:23'),
(3, 'upload/video/1791939363037805.png', 'Khnoro Aamar Fossil | Rupam Islam | Pujo Strings | Sangeet Bangla', 'https://www.youtube.com/watch?v=y4xWrmc_q-Q', '26 February 2024', NULL, NULL),
(4, 'upload/video/1791939430840033.jpeg', 'Best of Rupam Islam | Bengali Audio Jukebox | Bengali Hit Songs | SVF Music', 'https://www.youtube.com/watch?v=nrutVZvFmw4', '26 February 2024', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_applies`
--
ALTER TABLE `candidate_applies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carrers`
--
ALTER TABLE `carrers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_job_designations`
--
ALTER TABLE `create_job_designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `live_tvs`
--
ALTER TABLE `live_tvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `news_posts`
--
ALTER TABLE `news_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_news_id_foreign` (`news_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_galleries`
--
ALTER TABLE `video_galleries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidate_applies`
--
ALTER TABLE `candidate_applies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carrers`
--
ALTER TABLE `carrers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `create_job_designations`
--
ALTER TABLE `create_job_designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_tvs`
--
ALTER TABLE `live_tvs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `news_posts`
--
ALTER TABLE `news_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `video_galleries`
--
ALTER TABLE `video_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
