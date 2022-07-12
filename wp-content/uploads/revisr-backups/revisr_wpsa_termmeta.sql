DROP TABLE IF EXISTS `wpsa_termmeta`;
CREATE TABLE `wpsa_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wpsa_termmeta` WRITE;
INSERT INTO `wpsa_termmeta` VALUES ('1','1','pagelayer_imported_id','1'), ('2','404','theplus_transient_widgets','a:2:{i:0;s:18:\"tp-navigation-menu\";i:1;s:12:\"tp-site-logo\";}'), ('3','8','theplus_transient_widgets','a:2:{i:0;s:18:\"tp-navigation-menu\";i:1;s:12:\"tp-site-logo\";}'), ('4','30','theplus_transient_widgets','a:1:{i:0;s:12:\"tp-site-logo\";}'), ('5','31','theplus_transient_widgets','a:1:{i:0;s:12:\"tp-site-logo\";}'), ('6','29','theplus_transient_widgets','a:1:{i:0;s:12:\"tp-site-logo\";}'), ('7','3','theplus_transient_widgets','a:2:{i:0;s:18:\"tp-navigation-menu\";i:1;s:12:\"tp-site-logo\";}'), ('8','5','theplus_transient_widgets','a:1:{i:0;s:12:\"tp-site-logo\";}'), ('9','1','theplus_transient_widgets','a:1:{i:0;s:12:\"tp-site-logo\";}');
UNLOCK TABLES;
