-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 08, 2020 at 02:35 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appblog_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_text_rich_texts`
--

CREATE TABLE `action_text_rich_texts` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` longtext,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `action_text_rich_texts`
--

INSERT INTO `action_text_rich_texts` (`id`, `name`, `body`, `record_type`, `record_id`, `created_at`, `updated_at`) VALUES
(1, 'content', '<div>Meu primeiro artigo.<br><br>Olá mundo! Este é o <strong>meu primeiro artigo</strong>.<br><br>Link para o <a href=\"https://codigofacilito.com%5Cusuarios%5Curiel\">meu perfil</a></div>', 'Article', 2, '2020-09-06 03:22:22.215882', '2020-09-06 03:22:22.215882'),
(3, 'content', '<div>Este é um artigo criado por Uriel Hernandez que aborda as melhorias nessa nova versão do Ruby on Rails.</div>', 'Article', 4, '2020-09-06 21:00:44.162344', '2020-09-06 21:00:44.162344'),
(4, 'content', '<div>Artigo sendo criado para testar a funcionalidade de parâmetros fortes.</div>', 'Article', 5, '2020-09-06 22:47:51.157965', '2020-09-06 22:47:51.157965'),
(6, 'content', '<div>Olá mundo!</div>', 'Article', 7, '2020-09-07 05:04:06.708139', '2020-09-07 05:04:06.708139'),
(7, 'content', '<div>Informando a que categorias pertence o artigo.</div>', 'Article', 1, '2020-09-07 06:44:00.578057', '2020-09-07 06:44:00.578057');

-- --------------------------------------------------------

--
-- Table structure for table `active_storage_attachments`
--

CREATE TABLE `active_storage_attachments` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `blob_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `active_storage_attachments`
--

INSERT INTO `active_storage_attachments` (`id`, `name`, `record_type`, `record_id`, `blob_id`, `created_at`) VALUES
(1, 'avatar', 'User', 2, 1, '2020-09-07 19:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `active_storage_blobs`
--

CREATE TABLE `active_storage_blobs` (
  `id` bigint(20) NOT NULL,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `byte_size` bigint(20) NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `active_storage_blobs`
--

INSERT INTO `active_storage_blobs` (`id`, `key`, `filename`, `content_type`, `metadata`, `byte_size`, `checksum`, `created_at`) VALUES
(1, 'q5odbczfgwggkfx7aejeund38fs0', 'avatar_uriel.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 7612, 'JryMLPEfhRikPasCSt4srw==', '2020-09-07 19:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `status`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Demo', NULL, '2020-09-06 02:33:32.281687', '2020-09-07 06:44:00.668345', 1),
(2, 'Texto enriquecido v2', NULL, '2020-09-06 03:22:21.328455', '2020-09-06 04:47:03.852745', 1),
(4, 'Melhorias da versão 6 do Ruby on Rails', NULL, '2020-09-06 21:00:42.622564', '2020-09-06 21:00:44.314574', 2),
(5, 'Artigo para teste de strong parameters - Corrigido', NULL, '2020-09-06 22:47:49.758651', '2020-09-06 22:52:01.596020', 2),
(7, 'Demo com categories', NULL, '2020-09-07 05:04:05.284149', '2020-09-07 17:24:23.572023', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2020-09-06 01:44:34.640059', '2020-09-06 01:44:34.640059');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Programação', '#000000', '2020-09-07 01:32:14.344188', '2020-09-07 02:17:38.295712'),
(2, 'Tech', '#00ff40', '2020-09-07 05:22:01.066825', '2020-09-07 05:22:01.066825');

-- --------------------------------------------------------

--
-- Table structure for table `has_categories`
--

CREATE TABLE `has_categories` (
  `id` bigint(20) NOT NULL,
  `article_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `has_categories`
--

INSERT INTO `has_categories` (`id`, `article_id`, `category_id`, `created_at`, `updated_at`) VALUES
(6, 1, 2, '2020-09-07 07:01:51.352185', '2020-09-07 07:01:51.352185'),
(7, 4, 1, '2020-09-07 14:30:02.469842', '2020-09-07 14:30:02.469842'),
(8, 4, 2, '2020-09-07 14:30:02.782089', '2020-09-07 14:30:02.782089'),
(9, 7, 1, '2020-09-07 17:25:05.509281', '2020-09-07 17:25:05.509281');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20200906013328'),
('20200906024946'),
('20200906024947'),
('20200906151750'),
('20200906194246'),
('20200907010301'),
('20200907024131');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `created_at`, `updated_at`) VALUES
(1, 'betopinheiro1005@yahoo.com.br', '$2a$12$PtOEG1PeP3GLtIhk9q0BWOWV2krSnH4BD7owg.5mqYgB.4BGcXMbO', NULL, NULL, NULL, '2020-09-06 16:00:48.130015', '2020-09-06 16:00:48.130015'),
(2, 'uriel_hernandez@gmail.com', '$2a$12$/F7Ws2LXbEag0xRahmvHqO3If/0eI5lLqdel6OsmiwTdvUn8bVyka', NULL, NULL, NULL, '2020-09-06 20:34:18.311941', '2020-09-07 19:10:25.569977');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_text_rich_texts`
--
ALTER TABLE `action_text_rich_texts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_action_text_rich_texts_uniqueness` (`record_type`,`record_id`,`name`);

--
-- Indexes for table `active_storage_attachments`
--
ALTER TABLE `active_storage_attachments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  ADD KEY `index_active_storage_attachments_on_blob_id` (`blob_id`);

--
-- Indexes for table `active_storage_blobs`
--
ALTER TABLE `active_storage_blobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_active_storage_blobs_on_key` (`key`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_articles_on_user_id` (`user_id`);

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `has_categories`
--
ALTER TABLE `has_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_has_categories_on_article_id` (`article_id`),
  ADD KEY `index_has_categories_on_category_id` (`category_id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`email`),
  ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_text_rich_texts`
--
ALTER TABLE `action_text_rich_texts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `active_storage_attachments`
--
ALTER TABLE `active_storage_attachments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `active_storage_blobs`
--
ALTER TABLE `active_storage_blobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `has_categories`
--
ALTER TABLE `has_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `active_storage_attachments`
--
ALTER TABLE `active_storage_attachments`
  ADD CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`);

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk_rails_3d31dad1cc` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `has_categories`
--
ALTER TABLE `has_categories`
  ADD CONSTRAINT `fk_rails_7cabfe7326` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `fk_rails_809874f81a` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
