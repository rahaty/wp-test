DROP TABLE IF EXISTS `wpsa_loginizer_logs`;
CREATE TABLE `wpsa_loginizer_logs` (
  `username` varchar(255) NOT NULL DEFAULT '',
  `time` int NOT NULL DEFAULT '0',
  `count` int NOT NULL DEFAULT '0',
  `lockout` int NOT NULL DEFAULT '0',
  `ip` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
