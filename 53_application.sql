DROP TABLE IF EXISTS cv;
CREATE TABLE `application`
(
    `id`                           char(36) NOT NULL,
    `summary`                      varchar(1000) DEFAULT NULL,
    `create_date`                  bigint        DEFAULT NULL,
    `status`                       tinyint(1) NOT NULL,
    `registration_job_position_id` char(36)      DEFAULT NULL,
    `cv_id`                        char(36)      DEFAULT NULL,
    `evaluate_message`             varchar(255)  DEFAULT NULL,
    `evaluate_date`                mediumtext,
    `authorizer_id`                char(36)      DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY                            `application_registration_job_position_fk` (`registration_job_position_id`),
    KEY                            `cv_application_id_fk` (`cv_id`),
    KEY                            `application_authorizer_id__fk` (`authorizer_id`),
    CONSTRAINT `application_authorizer_id__fk` FOREIGN KEY (`authorizer_id`) REFERENCES `company_employee` (`account_id`),
    CONSTRAINT `application_registration_job_position_fk` FOREIGN KEY (`registration_job_position_id`) REFERENCES `registration_job_position` (`id`),
    CONSTRAINT `cv_application_id_fk` FOREIGN KEY (`cv_id`) REFERENCES `cv` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `application` (`id`, `summary`, `create_date`, `status`, `registration_job_position_id`, `cv_id`, `evaluate_message`, `evaluate_date`, `authorizer_id`) VALUES ('7151284c-fd71-4673-82bf-92895a2d7b73','test create application',1647795873715,6,'6f299327-6317-4cae-9fd5-03e27456fa87','d45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5','al','1647798274534','79dc6dea-8a7d-4ecc-a5cf-6eeb843467f0');

