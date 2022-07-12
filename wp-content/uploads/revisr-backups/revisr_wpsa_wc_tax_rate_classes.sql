DROP TABLE IF EXISTS `wpsa_wc_tax_rate_classes`;
CREATE TABLE `wpsa_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
LOCK TABLES `wpsa_wc_tax_rate_classes` WRITE;
INSERT INTO `wpsa_wc_tax_rate_classes` VALUES ('1','Reduced rate','reduced-rate'), ('2','Zero rate','zero-rate');
UNLOCK TABLES;
