DROP TABLE IF EXISTS `skill_tag`;
CREATE TABLE `skill_tag` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `skill_tag` VALUES 
(0,'IT System'),
(1,'IT Operation'),
(2,'Developer Angular'),
(3,'Graphic'),
(4,'Colorist'),
(5,'Ban hang'),
(6,'Bao Chi'),
(7,'Bat dong san');
