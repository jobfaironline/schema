DROP TABLE IF EXISTS `application`;

CREATE TABLE `application`
(
    `id`                    char(36)   NOT NULL,
    `summary`               varchar(1000) DEFAULT NULL,
    `create_date`           bigint        DEFAULT NULL,
    `status`                tinyint(1) NOT NULL,
    `evaluate_message`      varchar(255)  DEFAULT NULL,
    `evaluate_date`         bigint        DEFAULT NULL,
    `authorizer_id`         char(36)      DEFAULT NULL,
    `booth_job_position_id` char(36)      DEFAULT NULL,
    `test_status`           int           DEFAULT NULL,
    `email`                 varchar(322)  DEFAULT '',
    `phone`                 varchar(11)   DEFAULT '',
    `year_of_exp`           int           DEFAULT '0',
    `job_level`             int           DEFAULT NULL,
    `job_title`             varchar(100)  DEFAULT NULL,
    `attendant_id`          char(36)      DEFAULT NULL,
    `origin_cv_id`          char(36)      DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `cv_application_id_fk` (`cv_id`),
    KEY `application_authorizer_id__fk` (`authorizer_id`),
    KEY `application_booth_job_position_id_fk` (`booth_job_position_id`),
    CONSTRAINT `application_authorizer_id__fk` FOREIGN KEY
(`authorizer_id`) REFERENCES `company_employee` (`account_id`),
    CONSTRAINT `application_booth_job_position_id_fk` FOREIGN KEY
(`booth_job_position_id`) REFERENCES `booth_job_position` (`id`),
    CONSTRAINT `cv_application_id_fk` FOREIGN KEY (`cv_id`) REFERENCES
`cv` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
    KEY `application_authorizer_id__fk` (`authorizer_id`),
    KEY `application_booth_job_position_id_fk` (`booth_job_position_id`),
    KEY `application_job_level_id_fk` (`job_level`),
    KEY `application_attendant_account_id_fk` (`attendant_id`),
    CONSTRAINT `application_attendant_account_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`),
    CONSTRAINT `application_authorizer_id__fk` FOREIGN KEY (`authorizer_id`) REFERENCES `company_employee` (`account_id`),
    CONSTRAINT `application_booth_job_position_id_fk` FOREIGN KEY (`booth_job_position_id`) REFERENCES `booth_job_position` (`id`),
    CONSTRAINT `application_job_level_id_fk` FOREIGN KEY (`job_level`) REFERENCES `job_level` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
