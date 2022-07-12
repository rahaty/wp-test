DROP TABLE IF EXISTS `wpsa_smush_dir_images`;
CREATE TABLE `wpsa_smush_dir_images` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `path_hash` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resize` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lossy` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `error` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image_size` int unsigned DEFAULT NULL,
  `orig_size` int unsigned DEFAULT NULL,
  `file_time` int unsigned DEFAULT NULL,
  `last_scan` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `meta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `path_hash` (`path_hash`),
  KEY `image_size` (`image_size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
