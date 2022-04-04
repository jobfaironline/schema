DROP TABLE IF EXISTS `company_registration`;
CREATE TABLE `company_registration`
(
    `id`            char(36) NOT NULL,
    `create_date`   bigint   NOT NULL,
    `description`   text,
    `job_fair_id`   char(36) NOT NULL,
    `company_id`    char(36) NOT NULL,
    `status`        int           DEFAULT NULL,
    `cancel_reason` text,
    `admin_message` varchar(1000) DEFAULT NULL,
    `authorizer_id` char(36)      DEFAULT NULL,
    `creator_id`    char(36) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `company_registration_company_id_fk` (`company_id`),
    KEY `company_registration_job_fair_id_fk` (`job_fair_id`),
    KEY `company_registration_creator_id_fk` (`creator_id`),
    CONSTRAINT `company_registration_company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
    CONSTRAINT `company_registration_job_fair_id_fk` FOREIGN KEY (`job_fair_id`) REFERENCES `job_fair` (`id`),
    CONSTRAINT `company_registration_creator_id_fk` FOREIGN KEY (`creator_id`) REFERENCES `account` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
