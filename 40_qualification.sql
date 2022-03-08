DROP TABLE IF EXISTS `qualification`;
CREATE TABLE `qualification` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `qualification` VALUES 
(0,'College'),
(1,'Bachelors'),
(2,'Doctorate'),
(3,'High school'),
(4,'Others'),
(5,'Masters'),
(6,'Associate Degree');
