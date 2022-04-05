DROP TABLE IF EXISTS `cv`;
CREATE TABLE `cv`
(
    `id`           char(36) NOT NULL,
    `attendant_id` char(36)     DEFAULT NULL,
    `email`        varchar(322) DEFAULT 'default@email.com',
    `phone`        varchar(11)  DEFAULT '0912345678',
    `year_of_exp`  int          DEFAULT '0',
    `job_level`    int          DEFAULT '0',
    `job_title`    varchar(100) DEFAULT '',
    PRIMARY KEY (`id`),
    UNIQUE KEY `cv_id_uindex` (`id`),
    KEY `job_level_cv___fk` (`job_level`),
    KEY `attendant_id_cv___fk` (`attendant_id`),
    CONSTRAINT `attendant_id_cv___fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`),
    CONSTRAINT `job_level_cv___fk` FOREIGN KEY (`job_level`) REFERENCES `job_level` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;