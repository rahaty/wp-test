DROP TABLE IF EXISTS `wpsa_wpr_rucss_used_css`;
CREATE TABLE `wpsa_wpr_rucss_used_css` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `css` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `unprocessedcss` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `retries` tinyint(1) NOT NULL DEFAULT '1',
  `is_mobile` tinyint(1) NOT NULL DEFAULT '0',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_accessed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `url` (`url`(150),`is_mobile`),
  KEY `modified` (`modified`),
  KEY `last_accessed` (`last_accessed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
