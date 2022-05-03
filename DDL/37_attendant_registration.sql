DROP TABLE IF EXISTS `attendant_registration`;
CREATE TABLE `attendant_registration`
(
    `id`           char(36) NOT NULL,
    `attendant_id` char(36) NOT NULL,
    `job_fair_id`  char(36) NOT NULL,
    `create_time`  bigint  DEFAULT NULL,
    `is_visit`     tinyint DEFAULT NULL,
    `visit_time`   bigint  DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `attendant_register_job_fair_attendant_id_fk` (`attendant_id`),
    KEY `attendant_register_job_fair_job_fair_id_fk` (`job_fair_id`),
    CONSTRAINT `attendant_register_job_fair_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`),
    CONSTRAINT `attendant_register_job_fair_job_fair_id_fk` FOREIGN KEY (`job_fair_id`) REFERENCES `job_fair` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

