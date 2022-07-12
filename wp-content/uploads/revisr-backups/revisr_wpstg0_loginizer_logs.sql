DROP TABLE IF EXISTS `wpstg0_loginizer_logs`;
CREATE TABLE `wpstg0_loginizer_logs` (
  `username` varchar(255) NOT NULL DEFAULT '',
  `time` int NOT NULL DEFAULT '0',
  `count` int NOT NULL DEFAULT '0',
  `lockout` int NOT NULL DEFAULT '0',
  `ip` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
LOCK TABLES `wpstg0_loginizer_logs` WRITE;
INSERT INTO `wpstg0_loginizer_logs` VALUES ('devA1office','1653458305','1','0','172.70.142.125','https://dev.a1office.co/wp-staging-site/wp-login.php'), ('devA1office','1653458271','1','0','172.70.143.42','https://dev.a1office.co/wp-staging-site/wp-login.php'), ('devA1office','1653458354','1','0','172.70.188.193','https://dev.a1office.co/wp-staging-site/wp-login.php'), ('rahat','1653458406','1','0','172.70.188.211','https://dev.a1office.co/wp-staging-site/wp-login.php'), ('a1office','1653402850','3','1','172.70.85.67','https://dev.a1office.co/wp-staging-site//xmlrpc.php');
UNLOCK TABLES;
