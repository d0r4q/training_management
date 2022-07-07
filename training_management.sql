-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-07-06 16:09:37
-- サーバのバージョン： 10.4.24-MariaDB
-- PHP のバージョン: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `training_management`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `failed_jobs`
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
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2014_10_12_000000_create_users_table', 2),
(8, '2022_06_10_080716_create_trainings_table', 3),
(9, '2022_06_14_054756_create_users_weights_table', 4),
(10, '2022_06_15_040807_create_users_trainings', 5),
(12, '2022_06_23_093049_create_users_favorites', 6);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sunlightflat.yama@gmail.com', '$2y$10$k7aLQ1hKWKFjLI0ccHEIC.6TT/OqDhpRdkvuDSm07.gN8ORiK102e', '2022-06-08 00:17:49'),
('hugahuga@huga', '$2y$10$g.dRzTlg7gGKnzWCzuxgUegbIUrahZsi3c60FqG1GgkhIdgi4nFhO', '2022-06-16 20:13:37');

-- --------------------------------------------------------

--
-- テーブルの構造 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `METs` int(4) NOT NULL,
  `base_weight` tinyint(1) NOT NULL,
  `base_amount` int(11) NOT NULL,
  `base_set` tinyint(1) NOT NULL,
  `unit` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtubeURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '詳細に表示する動画',
  `del_flg` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `trainings`
--

INSERT INTO `trainings` (`id`, `name`, `main_category`, `sub_category`, `text`, `METs`, `base_weight`, `base_amount`, `base_set`, `unit`, `youtubeURL`, `del_flg`, `created_at`, `updated_at`) VALUES
(1, 'ウォーキング', '有酸素運動', 'サンプル', 'test', 4, 0, 1, 0, '分', '1Qmd5Ow3JvI', 1, NULL, '2022-06-28 18:15:16'),
(3, 'ランニング', '有酸素運動', 'サンプル', 'サンプル', 10, 0, 1, 0, '分', 'YRNU276n6lY', 0, '2022-06-15 03:26:17', '2022-07-05 18:44:15'),
(4, 'スクワット', '筋力トレーニング', '脚　大腿四頭筋　大殿筋', 'スクワット\r\n筋力トレーニング\r\n脚　大腿四頭筋　ハムストリングス', 5, 1, 6, 1, '回', 'huoV5y6kerY', 0, '2022-06-15 03:26:17', '2022-07-05 18:36:36'),
(6, 'ベンチプレス', '筋力トレーニング', '胸　大胸筋上部及び中部', 'サンプル', 4, 1, 1, 1, '回', 'CgLWhJmTJbg', 0, '2022-06-15 03:26:17', '2022-06-15 03:26:17'),
(7, 'ダンベルベンチプレス', '筋力トレーニング', '胸　大胸筋上部及び中部', 'サンプル', 4, 1, 1, 1, '回', 'CgLWhJmTJbg', 0, '2022-06-15 03:26:17', '2022-06-15 03:26:17'),
(9, 'ジョギング', '有酸素運動', 'サンプル', 'サンプル', 6, 0, 1, 0, '分', 'YRNU276n6lY', 0, '2022-06-15 03:26:17', '2022-06-15 03:26:17'),
(10, 'デッドリフト', '筋力トレーニング', '背中　広背筋、僧帽筋、脊柱起立筋', 'サンプル', 4, 1, 1, 1, '回', 'CgLWhJmTJbg', 0, '2022-06-15 03:26:17', '2022-06-15 03:26:17');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `del_flg` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `remember_token`, `height`, `age`, `sex`, `del_flg`, `created_at`, `updated_at`) VALUES
(1, 'hoge@hoge', '$2y$10$M9aW6EcadzNnj65jd9cS6eB3Q3DIj7P4CD.aZez4z8eWXA1bSgIAG', 1, 'z5d6guTvnSn70mQWObq8wmGlLPQAey65nAHBLwvfqyo0BPLcyUwM5EQbEq5q', 214, 15, NULL, 0, '2022-06-09 19:07:08', '2022-06-28 18:16:23'),
(2, 'admin@admin', '$2y$10$sPFnzmGh7qwUXaiJ4hLywOriHsMRi3C.UyIGcvAkh4sCCdkzfqce6', 0, NULL, NULL, NULL, NULL, 0, '2022-06-09 19:07:58', '2022-06-09 19:07:58'),
(3, 'huga@huga', '$2y$10$PmuQa0HruoEQZoe.aAoJVOPlW/.4qHdETZKCFAiDqkJJ2zOpsp5XC', 1, NULL, 154, 22, NULL, 0, '2022-06-13 17:37:26', '2022-06-16 21:04:44'),
(5, 'huga@hugahuga', '$2y$10$PmuQa0HruoEQZoe.aAoJVOPlW/.4qHdETZKCFAiDqkJJ2zOpsp5XC', 1, NULL, NULL, NULL, NULL, 1, '2022-06-13 17:37:26', '2022-06-27 21:30:04'),
(6, 'hoge@hogehoge', '$2y$10$YV/5pGP4w27riMk5v1.TyOoXfV5EJDEfawEUemsMg6H/3Yvz7oHNW', 1, NULL, 421, 12, NULL, 0, '2022-06-09 19:07:08', '2022-06-13 21:01:32'),
(7, 'hugahuga@huga', '$2y$10$kj5nN9n3ZfCiOZ6VD1hNI.VzbtX9EmQtyudCO2tTfsCwXyDqv5eKO', 1, NULL, NULL, NULL, NULL, 1, '2022-06-16 19:59:59', '2022-06-27 21:13:13'),
(8, 'hugahuga@hoge', '$2y$10$kj5nN9n3ZfCiOZ6VD1hNI.VzbtX9EmQtyudCO2tTfsCwXyDqv5eKO', 1, NULL, NULL, NULL, NULL, 1, '2022-06-16 19:59:59', '2022-06-27 21:37:36'),
(9, 'hoge@hogehuga', '$2y$10$YV/5pGP4w27riMk5v1.TyOoXfV5EJDEfawEUemsMg6H/3Yvz7oHNW', 1, NULL, 421, 12, NULL, 0, '2022-06-09 19:07:08', '2022-06-13 21:01:32'),
(10, 'hugahoge@hoge', '$2y$10$kj5nN9n3ZfCiOZ6VD1hNI.VzbtX9EmQtyudCO2tTfsCwXyDqv5eKO', 1, NULL, NULL, NULL, NULL, 0, '2022-06-16 19:59:59', '2022-06-16 19:59:59'),
(11, 'huga@hugahoge', '$2y$10$PmuQa0HruoEQZoe.aAoJVOPlW/.4qHdETZKCFAiDqkJJ2zOpsp5XC', 1, NULL, 154, 22, NULL, 0, '2022-06-13 17:37:26', '2022-06-16 21:04:44'),
(12, 'hoge@hogehogehoge', '$2y$10$Y1Lk8/DEQIWy3S2DCLIhi.57SPxNR8EtUIQTjbeLtiQ0OhxsxMHJK', 1, 'yiiPqW87TYriEmfg3KIijiRNkVe2PMC7QmRiJ4zhFN3NoufaoQ3aBjpA4Yg5', 214, 15, NULL, 0, '2022-06-09 19:07:08', '2022-06-23 01:38:10');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_favorites`
--

CREATE TABLE `users_favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `training_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users_favorites`
--

INSERT INTO `users_favorites` (`id`, `user_id`, `training_id`, `created_at`, `updated_at`) VALUES
(10, 1, 1, '2022-06-23 20:35:43', '2022-06-23 20:35:43'),
(14, 1, 4, '2022-06-30 20:38:54', '2022-06-30 20:38:54'),
(32, 1, 6, '2022-07-04 21:13:53', '2022-07-04 21:13:53'),
(33, 1, 3, '2022-07-04 21:21:27', '2022-07-04 21:21:27'),
(34, 1, 7, '2022-07-05 18:27:38', '2022-07-05 18:27:38');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_trainings`
--

CREATE TABLE `users_trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `training_id` int(11) NOT NULL,
  `training_weight` int(11) DEFAULT NULL,
  `training_amount` int(11) NOT NULL DEFAULT 0,
  `training_set` int(11) DEFAULT NULL,
  `record_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users_trainings`
--

INSERT INTO `users_trainings` (`id`, `user_id`, `training_id`, `training_weight`, `training_amount`, `training_set`, `record_date`, `created_at`, `updated_at`) VALUES
(64, 1, 1, 0, 0, 0, '2022-06-12', '2022-06-24 10:07:23', '2022-06-24 10:07:23'),
(67, 1, 4, 1, 0, 1, '2022-06-12', '2022-06-24 10:10:15', '2022-06-24 10:10:15'),
(68, 1, 1, 0, 0, 0, '2022-06-12', '2022-06-24 10:10:21', '2022-06-24 10:10:21'),
(69, 1, 1, 0, 10, 0, '2022-06-24', '2022-06-24 10:31:38', '2022-06-29 01:26:49'),
(70, 1, 3, 0, 0, 0, '2022-06-24', '2022-06-24 10:31:40', '2022-06-24 10:31:40'),
(71, 1, 6, 51, 51, 3, '2022-06-29', '2022-06-29 03:21:44', '2022-06-29 19:21:56'),
(72, 1, 6, 50, 15, 3, '2022-06-29', '2022-06-29 03:21:44', '2022-06-29 19:54:27'),
(89, 1, 3, 0, 31, 0, '2022-06-30', '2022-06-30 06:21:11', '2022-06-30 01:56:12'),
(101, 1, 9, 0, 51, 0, '2022-06-30', '2022-06-30 10:52:15', '2022-06-30 21:03:27'),
(102, 1, 10, 44, 51, 1, '2022-06-30', '2022-06-30 10:52:16', '2022-06-30 21:01:47'),
(103, 1, 3, 0, 0, 0, '2022-07-02', '2022-07-01 03:02:58', '2022-07-01 03:02:58'),
(104, 1, 6, 1, 41, 1, '2022-07-02', '2022-07-01 03:03:00', '2022-06-30 18:03:26'),
(105, 1, 4, 1, 0, 1, '2022-07-02', '2022-07-01 03:03:01', '2022-07-01 03:03:01'),
(108, 1, 4, 40, 11, 3, '2022-07-01', '2022-07-01 03:07:48', '2022-06-30 21:37:14'),
(110, 1, 7, 35, 15, 3, '2022-07-01', '2022-07-01 04:26:18', '2022-06-30 19:44:27'),
(112, 1, 10, 60, 10, 3, '2022-07-01', '2022-07-01 05:30:08', '2022-07-01 00:35:03'),
(113, 1, 9, 0, 42, 0, '2022-07-01', '2022-07-01 08:22:33', '2022-07-01 00:34:53'),
(114, 1, 6, 1, 0, 1, '2022-07-01', '2022-07-01 08:25:46', '2022-07-01 08:25:46'),
(115, 1, 7, 12, 31, 12, '2022-06-30', '2022-07-01 10:26:37', '2022-07-01 01:26:58'),
(117, 1, 6, 50, 55, 2, '2022-07-03', '2022-07-03 03:28:49', '2022-07-03 01:05:58'),
(130, 1, 7, 1, 2, 2, '2022-07-03', '2022-07-03 06:03:47', '2022-07-03 01:06:47'),
(132, 1, 6, 1, 0, 1, '2022-07-03', '2022-07-03 10:01:20', '2022-07-03 10:01:20'),
(142, 1, 6, 11, 222, 5, '2022-07-04', '2022-07-04 08:52:54', '2022-07-04 01:11:27'),
(144, 1, 4, 22, 5, 44, '2022-07-04', '2022-07-04 09:09:04', '2022-07-04 00:48:07'),
(204, 1, 6, 40, 15, 3, '2022-07-05', '2022-07-05 06:13:32', '2022-07-04 21:20:13'),
(206, 1, 3, 0, 15, 0, '2022-07-05', '2022-07-05 06:21:01', '2022-07-04 21:21:09'),
(207, 1, 6, 40, 10, 3, '2022-07-06', '2022-07-06 03:25:08', '2022-07-05 18:25:42'),
(208, 1, 7, 40, 15, 3, '2022-07-06', '2022-07-06 03:25:53', '2022-07-05 18:26:10'),
(209, 1, 9, 0, 15, 0, '2022-07-06', '2022-07-06 03:26:33', '2022-07-05 18:26:42');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_weights`
--

CREATE TABLE `users_weights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `weight` decimal(4,1) NOT NULL,
  `record_date` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users_weights`
--

INSERT INTO `users_weights` (`id`, `user_id`, `weight`, `record_date`, `created_at`, `updated_at`) VALUES
(7, 1, '11.0', '2022-06-15', '2022-06-15', '2022-06-16'),
(8, 1, '111.0', '2022-06-10', '2022-06-15', '2022-06-15'),
(9, 1, '45.0', '2022-06-16', '2022-06-16', '2022-06-16'),
(10, 1, '111.0', '2022-06-14', '2022-06-16', '2022-06-16'),
(12, 1, '21.0', '2022-06-21', '2022-06-21', '2022-06-22'),
(13, 1, '999.9', '2022-06-23', '2022-06-23', '2022-06-24'),
(14, 1, '321.0', '2022-06-19', '2022-06-23', '2022-06-23'),
(15, 1, '421.0', '2022-06-24', '2022-06-24', '2022-06-24'),
(16, 1, '66.0', '2022-06-22', '2022-06-24', '2022-06-24'),
(17, 1, '55.0', '2022-06-29', '2022-06-29', '2022-06-29'),
(18, 1, '55.0', '2022-06-30', '2022-06-30', '2022-06-30'),
(19, 1, '3.0', '2022-07-02', '2022-07-01', '2022-07-03'),
(20, 1, '3.0', '2022-07-01', '2022-07-01', '2022-07-03'),
(21, 1, '44.0', '2022-07-03', '2022-07-03', '2022-07-03'),
(22, 1, '66.0', '2022-07-04', '2022-07-04', '2022-07-04'),
(23, 1, '65.0', '2022-07-05', '2022-07-05', '2022-07-05'),
(24, 1, '65.0', '2022-07-06', '2022-07-06', '2022-07-06');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- テーブルのインデックス `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- テーブルのインデックス `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trainings_name_unique` (`name`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- テーブルのインデックス `users_favorites`
--
ALTER TABLE `users_favorites`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_trainings`
--
ALTER TABLE `users_trainings`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_weights`
--
ALTER TABLE `users_weights`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- テーブルの AUTO_INCREMENT `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- テーブルの AUTO_INCREMENT `users_favorites`
--
ALTER TABLE `users_favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- テーブルの AUTO_INCREMENT `users_trainings`
--
ALTER TABLE `users_trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- テーブルの AUTO_INCREMENT `users_weights`
--
ALTER TABLE `users_weights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
