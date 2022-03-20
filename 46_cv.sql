DROP TABLE IF EXISTS `cv`;
CREATE TABLE `cv` (
  `id` char(36) NOT NULL,
  `attendant_id` char(36) DEFAULT NULL,
  `email` varchar(100) DEFAULT 'default@email.com',
  `phone` varchar(11) DEFAULT '0912345678',
  `year_of_exp` int DEFAULT '0',
  `job_level` int DEFAULT '0',
  `title` char(100) DEFAULT 'default',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cv_id_uindex` (`id`),
  KEY `job_level_cv___fk` (`job_level`),
  KEY `attendant_id_cv___fk` (`attendant_id`),
  CONSTRAINT `attendant_id_cv___fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`),
  CONSTRAINT `job_level_cv___fk` FOREIGN KEY (`job_level`) REFERENCES `job_level` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `cv` (`id`, `attendant_id`, `email`, `phone`, `year_of_exp`, `job_level`, `title`) VALUES ('d45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5','31ba4aff-a7c7-4398-9359-92fe8d305e3c','default@email.com','0912345678',0,0,'default');