DROP TABLE IF EXISTS `job_type`;
CREATE TABLE `job_type` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `job_type` VALUES 
(0,'Full-time'),
(1,'Internship'),
(2,'Part-time'),
(3,'Freelancer'),
(4,'Other'),
(5,'Seasonal');
