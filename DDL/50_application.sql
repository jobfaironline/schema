DROP TABLE IF EXISTS `application`;
CREATE TABLE `application`
(
    `id`                    char(36)   NOT NULL,
    `summary`               varchar(1000) DEFAULT NULL,
    `create_date`           bigint        DEFAULT NULL,
    `status`                tinyint(1) NOT NULL,
    `cv_id`                 char(36)      DEFAULT NULL,
    `evaluate_message`      varchar(255)  DEFAULT NULL,
    `evaluate_date`         bigint        DEFAULT NULL,
    `authorizer_id`         char(36)      DEFAULT NULL,
    `booth_job_position_id` char(36)      DEFAULT NULL,
    `test_status`           int           DEFAULT NULL,
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
