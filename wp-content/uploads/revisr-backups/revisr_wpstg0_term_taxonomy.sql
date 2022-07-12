DROP TABLE IF EXISTS `wpstg0_term_taxonomy`;
CREATE TABLE `wpstg0_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wpstg0_term_taxonomy` WRITE;
INSERT INTO `wpstg0_term_taxonomy` VALUES ('1','1','category','','0','0'), ('2','2','nav_menu','','0','11'), ('3','3','wp_theme','','0','1'), ('4','4','nav_menu','','0','5'), ('5','5','nav_menu','','0','3'), ('6','6','elementor_library_type','','0','2'), ('7','7','category','','0','0'), ('8','8','category','','0','10'), ('9','9','post_tag','','0','0'), ('10','10','post_tag','','0','0'), ('11','11','post_tag','','0','0'), ('12','12','web_story_media_source','','0','0'), ('13','13','web_story_media_source','','0','0'), ('14','14','web_story_media_source','','0','0'), ('15','15','web_story_media_source','','0','0'), ('16','16','web_story_media_source','','0','0'), ('17','17','web_story_media_source','','0','0'), ('18','18','web_story_media_source','','0','0'), ('19','19','web_story_tag','','0','1'), ('20','20','web_story_tag','','0','1'), ('21','21','web_story_tag','','0','1'), ('22','22','web_story_tag','','0','1');
UNLOCK TABLES;
