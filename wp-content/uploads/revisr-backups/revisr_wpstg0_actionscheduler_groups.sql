DROP TABLE IF EXISTS `wpstg0_actionscheduler_groups`;
CREATE TABLE `wpstg0_actionscheduler_groups` (
  `group_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wpstg0_actionscheduler_groups` WRITE;
INSERT INTO `wpstg0_actionscheduler_groups` VALUES ('1','action-scheduler-migration'), ('2','workflow'), ('3','rank-math');
UNLOCK TABLES;
