DROP TABLE IF EXISTS `booth_job_position`;
CREATE TABLE `booth_job_position`
(
    `id`                     char(36)     NOT NULL,
    `title`                  varchar(100) NOT NULL,
    `contact_person_name`    varchar(100) NOT NULL,
    `contact_email`          varchar(100) NOT NULL,
    `description`            text         NOT NULL,
    `requirements`           text         NOT NULL,
    `min_salary`             double       NOT NULL,
    `max_salary`             double       DEFAULT NULL,
    `num_of_position`        int          NOT NULL,
    `location_id`            char(36)     DEFAULT NULL,
    `level_id`               int          NOT NULL,
    `job_type_id`            int          NOT NULL,
    `preferred_language_id`  char(3)      NOT NULL,
    `origin_job_position_id` char(36)     DEFAULT NULL,
    `job_fair_booth_id`      char(36)     DEFAULT NULL,
    `is_have_test`           tinyint      DEFAULT '0',
    `test_time_length`       int          DEFAULT '0',
    `num_of_question`        int          DEFAULT '0',
    `pass_mark`              int          DEFAULT '0',
    `note`                   varchar(500) DEFAULT '',
    PRIMARY KEY (`id`),
    KEY `registration_job_position_job_type_id_fk` (`job_type_id`),
    KEY `registration_job_position_language_id_fk` (`preferred_language_id`),
    KEY `registration_job_position_level_id_fk` (`level_id`),
    KEY `booth_job_position_job_fair_booth_id_fk` (`job_fair_booth_id`),
    CONSTRAINT `booth_job_position_job_fair_booth_id_fk` FOREIGN KEY (`job_fair_booth_id`) REFERENCES `job_fair_booth` (`id`),
    CONSTRAINT `registration_job_position_job_type_id_fk` FOREIGN KEY (`job_type_id`) REFERENCES `job_type` (`id`),
    CONSTRAINT `registration_job_position_language_id_fk` FOREIGN KEY (`preferred_language_id`) REFERENCES `language` (`id`),
    CONSTRAINT `registration_job_position_level_id_fk` FOREIGN KEY (`level_id`) REFERENCES `job_level` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;


