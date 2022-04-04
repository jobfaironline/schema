DROP TABLE IF EXISTS `job_position`;
CREATE TABLE `job_position`
(
    `id`                    char(36)     NOT NULL,
    `title`                 varchar(200) NOT NULL,
    `contact_person_name`   varchar(100) NOT NULL,
    `contact_email`         varchar(322) DEFAULT NULL,
    `company_id`            char(36)     NOT NULL,
    `location_id`           char(36)     DEFAULT NULL,
    `level_id`              int          DEFAULT NULL,
    `job_type_id`           int          DEFAULT NULL,
    `preferred_language_id` char(3)      DEFAULT NULL,
    `description`           text,
    `requirements`          text,
    `created_date`          bigint       NULL,
    `last_updated_date`     bigint       NULL,

    PRIMARY KEY (`id`),
    KEY `job_position_job_location_id_fk` (`location_id`),
    KEY `job_position_company_id_fk` (`company_id`),
    KEY `job_position_language_id_fk` (`preferred_language_id`),
    KEY `job_position__job_level_id_fk` (`level_id`),
    KEY `job_position_job_type_id_fk` (`job_type_id`),
    CONSTRAINT `job_position__job_level_id_fk` FOREIGN KEY (`level_id`) REFERENCES `job_level` (`id`),
    CONSTRAINT `job_position_company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
    CONSTRAINT `job_position_job_location_id_fk` FOREIGN KEY (`location_id`) REFERENCES `company_location` (`id`),
    CONSTRAINT `job_position_job_type_id_fk` FOREIGN KEY (`job_type_id`) REFERENCES `job_type` (`id`),
    CONSTRAINT `job_position_language_id_fk` FOREIGN KEY (`preferred_language_id`) REFERENCES `language` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

