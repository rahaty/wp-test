DROP TABLE IF EXISTS `wpsa_wpr_rucss_resources`;
CREATE TABLE `wpsa_wpr_rucss_resources` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `media` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT 'all',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `hash` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `prewarmup` tinyint unsigned DEFAULT '0',
  `warmup_status` tinyint unsigned DEFAULT '0',
  `modified` datetime DEFAULT '0000-00-00 00:00:00',
  `last_accessed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`),
  KEY `url` (`url`(150)),
  KEY `type` (`type`),
  KEY `last_accessed` (`last_accessed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
