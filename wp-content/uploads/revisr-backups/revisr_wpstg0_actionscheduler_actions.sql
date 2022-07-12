DROP TABLE IF EXISTS `wpstg0_actionscheduler_actions`;
CREATE TABLE `wpstg0_actionscheduler_actions` (
  `action_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `group_id` bigint unsigned NOT NULL DEFAULT '0',
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=1983 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wpstg0_actionscheduler_actions` WRITE;
INSERT INTO `wpstg0_actionscheduler_actions` VALUES ('1974','rank_math/analytics/data_fetch','complete','2022-04-18 06:30:34','2022-04-18 06:30:34','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1650263434;s:18:\"\0*\0first_timestamp\";i:1649658600;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1650263434;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}','3','1','2022-04-18 06:36:08','2022-04-18 06:36:08','0',''), ('1975','rank_math/analytics/data_fetch','complete','2022-04-25 06:36:08','2022-04-25 06:36:08','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1650868568;s:18:\"\0*\0first_timestamp\";i:1649658600;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1650868568;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}','3','1','2022-04-25 06:38:00','2022-04-25 06:38:00','0',''), ('1976','rank_math/analytics/data_fetch','complete','2022-05-02 06:38:00','2022-05-02 06:38:00','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1651473480;s:18:\"\0*\0first_timestamp\";i:1649658600;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1651473480;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}','3','1','2022-05-05 13:11:16','2022-05-05 13:11:16','0',''), ('1977','action_scheduler/migration_hook','complete','2022-04-28 19:57:14','2022-04-28 19:57:14','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1651175834;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1651175834;}','1','1','2022-04-28 19:58:04','2022-04-28 19:58:04','0',''), ('1978','action_scheduler/migration_hook','canceled','2022-04-28 19:57:14','2022-04-28 19:57:14','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1651175834;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1651175834;}','1','0','2022-04-28 19:58:04','2022-04-28 19:58:04','0',''), ('1979','action_scheduler/migration_hook','complete','2022-05-03 15:09:58','2022-05-03 15:09:58','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1651590598;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1651590598;}','1','1','2022-05-05 13:11:16','2022-05-05 13:11:16','0',''), ('1980','rank_math/analytics/data_fetch','complete','2022-05-12 13:11:16','2022-05-12 13:11:16','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1652361076;s:18:\"\0*\0first_timestamp\";i:1649658600;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1652361076;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}','3','1','2022-05-12 13:12:04','2022-05-12 13:12:04','0',''), ('1981','rank_math/analytics/data_fetch','pending','2022-05-19 13:12:04','2022-05-19 13:12:04','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1652965924;s:18:\"\0*\0first_timestamp\";i:1649658600;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1652965924;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}','3','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0',''), ('1982','action_scheduler/migration_hook','pending','2022-05-13 11:27:24','2022-05-13 11:27:24','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1652441244;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1652441244;}','1','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0','');
UNLOCK TABLES;
