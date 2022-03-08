DROP TABLE IF EXISTS `profession_category`;
CREATE TABLE `profession_category` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `profession_category` VALUES 
(0,'Manufacturing'),
(1,'Type'),
(2,'Front Office'),
(3,'FMCG & Retail'),
(4,'Medical'),
(5,'Building & Construction'),
(6,'Transportation'),
(7,'Technology'),
(8,'Production'),
(9,'Hospitality & Tourism'),
(10,'Back office'),
(11,'Financial service'),
(12,'Services'),
(13,'Communications & Media'),
(14,'Engineering');
