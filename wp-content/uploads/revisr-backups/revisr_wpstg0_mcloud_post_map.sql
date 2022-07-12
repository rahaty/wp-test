DROP TABLE IF EXISTS `wpstg0_mcloud_post_map`;
CREATE TABLE `wpstg0_mcloud_post_map` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `post_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `post_url` (`post_url`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
LOCK TABLES `wpstg0_mcloud_post_map` WRITE;
INSERT INTO `wpstg0_mcloud_post_map` VALUES ('1','2174','https://dev.a1office.co/wp-staging-site/wp-content/uploads/2022/03/Docx-Editor-Online.jpg');
UNLOCK TABLES;
