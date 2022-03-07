DROP TABLE IF EXISTS `company_size`;
CREATE TABLE `company_size` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `company_size` VALUES 
(0,'100-499'),
(1,'Less than 10'),
(2,'500-999'),
(3,'10-24'),
(4,'5000-9999'),
(5,'25-99'),
(6,'1000-4999'),
(7,'10000-19999'),
(8,'Over 50000'),
(9,'20000-49999'),
(10,'Over 60000');
