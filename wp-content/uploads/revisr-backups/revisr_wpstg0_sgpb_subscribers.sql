DROP TABLE IF EXISTS `wpstg0_sgpb_subscribers`;
CREATE TABLE `wpstg0_sgpb_subscribers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subscriptionType` int DEFAULT NULL,
  `cDate` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `unsubscribed` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
