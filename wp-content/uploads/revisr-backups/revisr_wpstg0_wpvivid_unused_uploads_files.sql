DROP TABLE IF EXISTS `wpstg0_wpvivid_unused_uploads_files`;
CREATE TABLE `wpstg0_wpvivid_unused_uploads_files` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `folder` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
