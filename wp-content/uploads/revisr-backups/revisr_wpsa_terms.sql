DROP TABLE IF EXISTS `wpsa_terms`;
CREATE TABLE `wpsa_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wpsa_terms` WRITE;
INSERT INTO `wpsa_terms` VALUES ('1','Uncategorized','uncategorized','0'), ('2','Financy Header Menu','financy-header-menu','0'), ('3','sala','sala','0'), ('4','Company','company','0'), ('5','Blogs','blogs','0'), ('6','section','section','0'), ('7','blogs','blogs','0'), ('8','blog','blog','0'), ('9','How to edit a PDF on Mac','how-to-edit-a-pdf-on-mac','0'), ('10','how to edit pdf on mac','how-to-edit-pdf-on-mac','0'), ('11','how to add text to a pdf on mac','how-to-add-text-to-a-pdf-on-mac','0'), ('12','editor','editor','0'), ('13','poster-generation','poster-generation','0'), ('14','video-optimization','video-optimization','0'), ('15','source-video','source-video','0'), ('16','gif-conversion','gif-conversion','0'), ('17','source-image','source-image','0'), ('18','page-template','page-template','0'), ('19','docx editor','docx-editor','0'), ('20','office suite','office-suite','0'), ('21','document editor','document-editor','0'), ('22','docx viewer','docx-viewer','0'), ('23','sala-child','sala-child','0'), ('24','header','header','0'), ('25','related tools','related-tools','0'), ('26','page','page','0'), ('27','generatepress','generatepress','0'), ('28','footer','footer','0'), ('29','excel','excel','0'), ('30','pdf','pdf','0'), ('31','docx','docx','0'), ('32','simple','simple','0'), ('33','grouped','grouped','0'), ('34','variable','variable','0'), ('35','external','external','0'), ('36','exclude-from-search','exclude-from-search','0'), ('37','exclude-from-catalog','exclude-from-catalog','0'), ('38','featured','featured','0'), ('39','outofstock','outofstock','0'), ('40','rated-1','rated-1','0'), ('41','rated-2','rated-2','0'), ('42','rated-3','rated-3','0'), ('43','rated-4','rated-4','0'), ('44','rated-5','rated-5','0'), ('45','Uncategorized','uncategorized','0'), ('46','Main menu','main-menu','0'), ('47','popup','popup','0');
UNLOCK TABLES;
