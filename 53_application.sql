DROP TABLE IF EXISTS `application`;
CREATE TABLE `application`
(
    `id`                           char(36) NOT NULL,
    `summary`                      varchar(1000) DEFAULT NULL,
    `create_date`                  bigint        DEFAULT NULL,
    `attendant_id`                 char(36)      DEFAULT NULL,
    `status`                       tinyint(1) NOT NULL,
    `registration_job_position_id` char(36)      DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY                            `cv_attendant_id_fk` (`attendant_id`),
    KEY                            `application_registration_job_position_fk` (`registration_job_position_id`),
    CONSTRAINT `application_registration_job_position_fk` FOREIGN KEY (`registration_job_position_id`) REFERENCES `registration_job_position` (`id`),
    CONSTRAINT `cv_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;