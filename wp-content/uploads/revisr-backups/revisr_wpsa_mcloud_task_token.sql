DROP TABLE IF EXISTS `wpsa_mcloud_task_token`;
CREATE TABLE `wpsa_mcloud_task_token` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `time` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
