DROP TABLE IF EXISTS `wpstg0_actionscheduler_logs`;
CREATE TABLE `wpstg0_actionscheduler_logs` (
  `log_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint unsigned NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wpstg0_actionscheduler_logs` WRITE;
INSERT INTO `wpstg0_actionscheduler_logs` VALUES ('33','1974','action created','2022-04-11 06:30:34','2022-04-11 06:30:34'), ('34','1974','action started via WP Cron','2022-04-18 06:36:08','2022-04-18 06:36:08'), ('35','1974','action complete via WP Cron','2022-04-18 06:36:08','2022-04-18 06:36:08'), ('36','1975','action created','2022-04-18 06:36:08','2022-04-18 06:36:08'), ('37','1975','action started via WP Cron','2022-04-25 06:37:59','2022-04-25 06:37:59'), ('38','1975','action complete via WP Cron','2022-04-25 06:38:00','2022-04-25 06:38:00'), ('39','1976','action created','2022-04-25 06:38:00','2022-04-25 06:38:00'), ('40','1977','action created','2022-04-28 19:56:14','2022-04-28 19:56:14'), ('41','1978','action created','2022-04-28 19:56:14','2022-04-28 19:56:14'), ('42','1977','action started via WP Cron','2022-04-28 19:58:04','2022-04-28 19:58:04'), ('43','1978','action canceled','2022-04-28 19:58:04','2022-04-28 19:58:04'), ('44','1977','action complete via WP Cron','2022-04-28 19:58:04','2022-04-28 19:58:04'), ('45','1978','action ignored via WP Cron','2022-04-28 19:58:04','2022-04-28 19:58:04'), ('46','1979','action created','2022-05-03 15:08:58','2022-05-03 15:08:58'), ('47','1976','action started via WP Cron','2022-05-05 13:11:16','2022-05-05 13:11:16'), ('48','1976','action complete via WP Cron','2022-05-05 13:11:16','2022-05-05 13:11:16'), ('49','1980','action created','2022-05-05 13:11:16','2022-05-05 13:11:16'), ('50','1979','action started via WP Cron','2022-05-05 13:11:16','2022-05-05 13:11:16'), ('51','1979','action complete via WP Cron','2022-05-05 13:11:16','2022-05-05 13:11:16'), ('52','1980','action started via WP Cron','2022-05-12 13:12:04','2022-05-12 13:12:04'), ('53','1980','action complete via WP Cron','2022-05-12 13:12:04','2022-05-12 13:12:04'), ('54','1981','action created','2022-05-12 13:12:04','2022-05-12 13:12:04'), ('55','1982','action created','2022-05-13 11:26:24','2022-05-13 11:26:24');
UNLOCK TABLES;
