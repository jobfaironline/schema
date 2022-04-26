DROP TABLE IF EXISTS `attendant`;
CREATE TABLE `attendant`
(
    `account_id`     char(36) NOT NULL,
    `title`          varchar(100)  DEFAULT NULL,
    `address`        varchar(1000) DEFAULT NULL,
    `dob`            bigint        DEFAULT NULL,
    `job_title`      varchar(100)  DEFAULT NULL,
    `year_of_exp`    float         DEFAULT NULL,
    `marital_status` tinyint(1)    DEFAULT NULL,
    `country_id`     int           DEFAULT NULL,
    `residence_id`   int           DEFAULT NULL,
    `job_level_id`   int           DEFAULT NULL,
    PRIMARY KEY (`account_id`),
    KEY `account_residence_id_fk` (`residence_id`),
    KEY `account_country_id_fk` (`country_id`),
    KEY `attendant_job_level_id_fk` (`job_level_id`),
    CONSTRAINT `account_country_id_fk` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
    CONSTRAINT `account_residence_id_fk` FOREIGN KEY (`residence_id`) REFERENCES `residence` (`id`),
    CONSTRAINT `attendant_account_id_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
    CONSTRAINT `attendant_job_level_id_fk` FOREIGN KEY (`job_level_id`) REFERENCES `job_level` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;