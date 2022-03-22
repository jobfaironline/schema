DROP TABLE IF EXISTS `registration_job_skill_tag`;
CREATE TABLE `registration_job_skill_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `skill_tag_id` int NOT NULL,
  `registration_job_position_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `registration_job_skill_tag_registration_job_fk` (`registration_job_position_id`),
  KEY `registration_job_skill_tag_skill_tag_fk` (`skill_tag_id`),
  CONSTRAINT `registration_job_skill_tag_registration_job_fk` FOREIGN KEY (`registration_job_position_id`) REFERENCES `registration_job_position` (`id`),
  CONSTRAINT `registration_job_skill_tag_skill_tag_fk` FOREIGN KEY (`skill_tag_id`) REFERENCES `skill_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

