DROP TABLE IF EXISTS `application_education`;

CREATE TABLE `application_education`
(
    `id`               char(36) NOT NULL,
    `subject`          varchar(100)  DEFAULT '',
    `school`           varchar(100)  DEFAULT '',
    `from_date`        bigint        DEFAULT '0',
    `to_date`          bigint        DEFAULT '0',
    `achievement`      varchar(5000) DEFAULT '',
    `qualification_id` int           DEFAULT NULL,
    `application_id`   char(36)      DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `application_education_application_id_fk` (`application_id`),
    KEY `application_education_qualification_id_fk` (`qualification_id`),
    CONSTRAINT `application_education_application_id_fk` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`),
    CONSTRAINT `application_education_qualification_id_fk` FOREIGN KEY (`qualification_id`) REFERENCES `qualification` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

