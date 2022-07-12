DROP TABLE IF EXISTS `wpstg0_e_events`;
CREATE TABLE `wpstg0_e_events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `event_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
