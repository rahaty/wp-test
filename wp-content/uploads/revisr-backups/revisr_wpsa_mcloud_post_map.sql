DROP TABLE IF EXISTS `wpsa_mcloud_post_map`;
CREATE TABLE `wpsa_mcloud_post_map` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `post_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `post_url` (`post_url`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
LOCK TABLES `wpsa_mcloud_post_map` WRITE;
INSERT INTO `wpsa_mcloud_post_map` VALUES ('1','2174','https://dev.a1office.co/wp-content/uploads/2022/03/Docx-Editor-Online.jpg');
UNLOCK TABLES;
