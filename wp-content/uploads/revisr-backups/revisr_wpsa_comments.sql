DROP TABLE IF EXISTS `wpsa_comments`;
CREATE TABLE `wpsa_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wpsa_comments` WRITE;
INSERT INTO `wpsa_comments` VALUES ('1','1','A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-02-08 18:04:11','2022-02-08 18:04:11','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.','0','1','','comment','0','0'), ('6','2951','Becker','Igorb823@gmail.com','','2003:c0:f736:a100:c82a:7610:5afe:1498','2022-04-23 08:02:26','2022-04-23 08:02:26','REZEPT FÜR MICH\r\nRohypnol oder flunitrazepam 1mg 20st. N2','0','1','Mozilla/5.0 (Linux; Android 11; SM-A225F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36','comment','0','0'), ('7','3250','Gautam','gautam@spiraldevapps.com','','172.70.219.22','2022-05-05 07:20:20','2022-05-05 07:20:20','This is great!','0','1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36','comment','0','5'), ('8','3250','AnaeleNag','AnaeleNag@maill1.xyz','','141.101.99.16','2022-05-10 19:44:22','2022-05-10 19:44:22','https://newfasttadalafil.com/ - cialis daily Lin MD PHD Nephrologist Massachusetts General Hospital Associate Professor of Medicine Harvard Medical School. <a href=\"https://newfasttadalafil.com/\" / rel=\"nofollow ugc\">cialis 5 mg best price usa</a> m  on the moon. Vbcfyr buy cialis from an anline pharmacy Gbbujb https://newfasttadalafil.com/ - Cialis Zremjx','0','0','Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36','comment','0','0');
UNLOCK TABLES;
