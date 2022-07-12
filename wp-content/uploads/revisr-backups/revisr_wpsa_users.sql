DROP TABLE IF EXISTS `wpsa_users`;
CREATE TABLE `wpsa_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wpsa_users` WRITE;
INSERT INTO `wpsa_users` VALUES ('1','a1office','$P$BEdB64vxjOr3srgJJQY/OI9jsNPSdI/','a1office','helixgamesdev@gmail.com','https://dev.a1office.co/','2022-02-08 18:04:11','','0','a1office'), ('3','ankita','$P$BbbNSiM4zOymf/ZlyQrFx74DeZQYZU/','ankita','ankita@spiraldevapps.com','','2022-04-07 11:49:15','','0','ankita'), ('4','amaan','$P$Bz9Xzs/ETQHcO0ZDpGKoIHajLe0CZK0','amaan','amaan@spiraldevapps.com','','2022-05-04 13:04:48','','0','Amaan'), ('5','gautam','$P$BHRTxYfSFCswMR6Jp4/UHnDw9D3zFN1','gautam','gautam@spiraldevapps.com','','2022-05-05 06:27:44','1651732064:$P$BWDp0hbSKs9wxrBnKe6B0h8aZ1ZrvI.','0','Gautam'), ('6','rahat@12','$P$BlxBQPff/tLh7OPWznIIM.ximjAy/e/','rahat12','rahat@spiraldevapps.com','','2022-05-25 06:12:23','1653459143:$P$BGyo3tNE/Ht6IePHvPi3sL2IgCWvxD/','0','Rahat Yasmin'), ('7','namit','$P$Bnw1Ybf9XoWGjxAM8uMsf81eCIJfyL1','namit','namit@spiraldevapps.com','','2022-07-11 09:55:14','1657533314:$P$BVUpjWWxRuzMK/UGtDSNMXzIZjX5Ys1','0','Namit');
UNLOCK TABLES;
