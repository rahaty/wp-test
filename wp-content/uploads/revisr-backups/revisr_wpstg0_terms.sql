DROP TABLE IF EXISTS `wpstg0_terms`;
CREATE TABLE `wpstg0_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wpstg0_terms` WRITE;
INSERT INTO `wpstg0_terms` VALUES ('1','Uncategorized','uncategorized','0'), ('2','Financy Header Menu','financy-header-menu','0'), ('3','sala','sala','0'), ('4','Company','company','0'), ('5','Blogs','blogs','0'), ('6','section','section','0'), ('7','blogs','blogs','0'), ('8','blog','blog','0'), ('9','How to edit a PDF on Mac','how-to-edit-a-pdf-on-mac','0'), ('10','how to edit pdf on mac','how-to-edit-pdf-on-mac','0'), ('11','how to add text to a pdf on mac','how-to-add-text-to-a-pdf-on-mac','0'), ('12','editor','editor','0'), ('13','poster-generation','poster-generation','0'), ('14','video-optimization','video-optimization','0'), ('15','source-video','source-video','0'), ('16','gif-conversion','gif-conversion','0'), ('17','source-image','source-image','0'), ('18','page-template','page-template','0'), ('19','docx editor','docx-editor','0'), ('20','office suite','office-suite','0'), ('21','document editor','document-editor','0'), ('22','docx viewer','docx-viewer','0');
UNLOCK TABLES;
