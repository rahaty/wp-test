DROP TABLE IF EXISTS `wpsa_mcloud_task_schedule`;
CREATE TABLE `wpsa_mcloud_task_schedule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tuid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `recurring` int NOT NULL DEFAULT '0',
  `lastRun` bigint DEFAULT NULL,
  `nextRun` bigint DEFAULT NULL,
  `schedule` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `taskType` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `selection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
