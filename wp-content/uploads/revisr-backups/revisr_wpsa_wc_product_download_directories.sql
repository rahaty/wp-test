DROP TABLE IF EXISTS `wpsa_wc_product_download_directories`;
CREATE TABLE `wpsa_wc_product_download_directories` (
  `url_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_id`),
  KEY `url` (`url`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
LOCK TABLES `wpsa_wc_product_download_directories` WRITE;
INSERT INTO `wpsa_wc_product_download_directories` VALUES ('1','file:///var/www/html/wp-content/uploads/woocommerce_uploads/','1'), ('2','https://cdn.a1office.co/wp-content/uploads/woocommerce_uploads/','1');
UNLOCK TABLES;
