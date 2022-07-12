DROP TABLE IF EXISTS `wpsa_wpvivid_scan_result`;
CREATE TABLE `wpsa_wpvivid_scan_result` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `from_post` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
