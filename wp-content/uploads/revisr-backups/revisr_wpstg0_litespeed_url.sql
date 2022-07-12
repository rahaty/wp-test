DROP TABLE IF EXISTS `wpstg0_litespeed_url`;
CREATE TABLE `wpstg0_litespeed_url` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cache_tags` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`(191)),
  KEY `cache_tags` (`cache_tags`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wpstg0_litespeed_url` WRITE;
INSERT INTO `wpstg0_litespeed_url` VALUES ('1','https://a1office.co',''), ('2','404',''), ('3','https://a1office.co/docx-editor-online',''), ('4','https://a1office.co/excel-sheet-editor',''), ('5','https://a1office.co/write-on-pdf',''), ('6','https://a1office.co/blog/how-to-open-and-edit-docx-files',''), ('7','https://a1office.co/blogs/pdf-to-word-online',''), ('8','https://a1office.co/privacy-policy-2',''), ('9','https://a1office.co/support',''), ('10','https://a1office.co/blogs',''), ('11','https://a1office.co/solutions',''), ('12','https://a1office.co/solutions/android',''), ('13','https://a1office.co/solutions/android/pdf-scanner',''), ('14','https://a1office.co/solutions/android/doc-reader',''), ('15','https://a1office.co/blog/doc-vs-docx',''), ('16','https://a1office.co/blog/how-to-open-docx-file',''), ('17','https://a1office.co/category/blog',''), ('18','https://dev.a1office.co/wp-staging-site','');
UNLOCK TABLES;
