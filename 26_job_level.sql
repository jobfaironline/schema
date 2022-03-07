DROP TABLE IF EXISTS `job_level`;
CREATE TABLE `job_level` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `job_level` VALUES 
(0,'Intern/Student'),
(1,'Fresher/Entry level'),
(2,'Experienced (non-manager)'),
(3,'Director'),
(4,'Director and above');
