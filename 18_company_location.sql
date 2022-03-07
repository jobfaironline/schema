DROP TABLE IF EXISTS `company_location`;
CREATE TABLE `company_location` (
  `id` char(36) NOT NULL,
  `office_name` varchar(50) DEFAULT NULL,
  `country_id` char(36) DEFAULT NULL,
  `office_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_location_country_id_fk` (`country_id`),
  CONSTRAINT `job_location_country_id_fk` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


