DROP TABLE IF EXISTS `registration_job_category`;
CREATE TABLE `registration_job_category`
(
    `id`                           int      NOT NULL AUTO_INCREMENT,
    `registration_job_position_id` char(36) NOT NULL,
    `sub_category_id`              int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `registration_job_category_registration_job_fk` (`registration_job_position_id`),
    KEY `registration_job_category_sub_category_fk` (`sub_category_id`),
    CONSTRAINT `registration_job_category_registration_job_fk` FOREIGN KEY (`registration_job_position_id`) REFERENCES `registration_job_position` (`id`),
    CONSTRAINT `registration_job_category_sub_category_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 31
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;


