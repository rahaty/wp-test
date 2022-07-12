DROP TABLE IF EXISTS `wpstg0_AnythingPopup`;
CREATE TABLE `wpstg0_AnythingPopup` (
  `pop_id` int NOT NULL AUTO_INCREMENT,
  `pop_width` int NOT NULL DEFAULT '450',
  `pop_height` int NOT NULL DEFAULT '300',
  `pop_headercolor` varchar(10) NOT NULL DEFAULT '#4D4D4D',
  `pop_bordercolor` varchar(10) NOT NULL DEFAULT '#4D4D4D',
  `pop_header_fontcolor` varchar(10) NOT NULL DEFAULT '#FFFFFF',
  `pop_title` varchar(1024) NOT NULL DEFAULT 'Anything Popup',
  `pop_content` text CHARACTER SET utf8mb3 COLLATE utf8_bin NOT NULL,
  `pop_caption` varchar(2024) NOT NULL DEFAULT 'Click to open popup',
  PRIMARY KEY (`pop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
LOCK TABLES `wpstg0_AnythingPopup` WRITE;
INSERT INTO `wpstg0_AnythingPopup` VALUES ('1','900','600','#4D4D4D','#4D4D4D','#FFFFFF','Anything Popup','<section class=\\\"main_class\\\">\r\n<div>\r\n<h1>A1 Tools</h1>\r\n\r\n<div class=\\\"main-a1\\\">\r\n     <div class=\\\"main-b1\\\">\r\n        <div class=\\\"tool-c1\\\">\r\n            <img src=\\\"https://a1office.co/wp-content/uploads/2022/03/img1.png\\\">\r\n             <p>Image to PDF</p>\r\n        </div>\r\n <div class=\\\"tool-c1\\\">\r\n  <img src=\\\"https://a1office.co/wp-content/uploads/2022/03/img3.png\\\">\r\n\r\n             <p>Merge PDF</p>\r\n        </div>\r\n <div class=\\\"tool-c1\\\">\r\n <img src=\\\"https://a1office.co/wp-content/uploads/2022/03/img5.png\\\">\r\n             <p>Invert PDF</p>\r\n        </div>\r\n <div class=\\\"tool-c1\\\">\r\n<img src=\\\"https://a1office.co/wp-content/uploads/2022/03/img7.png\\\">\r\n\r\n             <p>Split PDF</p>\r\n        </div>\r\n     </div>\r\n\r\n     <div class=\\\"main-b2\\\">\r\n         <div class=\\\"tool-c1\\\">\r\n            <img src=\\\"https://a1office.co/wp-content/uploads/2022/03/img2.png\\\">\r\n             <p>Excel to PDF</p>\r\n        </div>\r\n <div class=\\\"tool-c1\\\">\r\n            <img src=\\\"https://a1office.co/wp-content/uploads/2022/03/img4.png\\\">\r\n             <p>Compress PDF</p>\r\n        </div>\r\n <div class=\\\"tool-c1\\\">\r\n            <img src=\\\"https://a1office.co/wp-content/uploads/2022/03/img6.png\\\">\r\n             <p>e-Signature</p>\r\n        </div>\r\n     </div>\r\n\r\n\r\n</div>\r\n\r\n\r\n\r\n\r\n</div>\r\n</section>','View Tools');
UNLOCK TABLES;
