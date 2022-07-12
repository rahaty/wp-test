DROP TABLE IF EXISTS `wpsa_term_taxonomy`;
CREATE TABLE `wpsa_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wpsa_term_taxonomy` WRITE;
INSERT INTO `wpsa_term_taxonomy` VALUES ('1','1','category','','0','0'), ('2','2','nav_menu','','0','11'), ('3','3','wp_theme','','0','1'), ('4','4','nav_menu','','0','5'), ('5','5','nav_menu','','0','3'), ('6','6','elementor_library_type','','0','5'), ('7','7','category','','0','0'), ('8','8','category','','0','10'), ('9','9','post_tag','','0','0'), ('10','10','post_tag','','0','0'), ('11','11','post_tag','','0','0'), ('12','12','web_story_media_source','','0','0'), ('13','13','web_story_media_source','','0','0'), ('14','14','web_story_media_source','','0','0'), ('15','15','web_story_media_source','','0','0'), ('16','16','web_story_media_source','','0','0'), ('17','17','web_story_media_source','','0','0'), ('18','18','web_story_media_source','','0','0'), ('19','19','web_story_tag','','0','1'), ('20','20','web_story_tag','','0','1'), ('21','21','web_story_tag','','0','1'), ('22','22','web_story_tag','','0','1'), ('23','23','wp_theme','','0','1'), ('24','24','elementor_library_type','','0','1'), ('25','25','nav_menu','','0','2'), ('26','26','elementor_library_type','','0','4'), ('27','27','wp_theme','','0','1'), ('28','28','elementor_library_type','','0','1'), ('29','29','post_tag','','0','3'), ('30','30','post_tag','','0','3'), ('31','31','post_tag','','0','2'), ('32','32','product_type','','0','0'), ('33','33','product_type','','0','0'), ('34','34','product_type','','0','0'), ('35','35','product_type','','0','0'), ('36','36','product_visibility','','0','0'), ('37','37','product_visibility','','0','0'), ('38','38','product_visibility','','0','0'), ('39','39','product_visibility','','0','0'), ('40','40','product_visibility','','0','0'), ('41','41','product_visibility','','0','0'), ('42','42','product_visibility','','0','0'), ('43','43','product_visibility','','0','0'), ('44','44','product_visibility','','0','0'), ('45','45','product_cat','','0','0'), ('46','46','nav_menu','','0','5'), ('47','47','elementor_library_type','','0','1');
UNLOCK TABLES;
