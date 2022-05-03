DROP TABLE IF EXISTS `application_reference`;

CREATE TABLE `application_reference`
(
    `id`             char(36) NOT NULL,
    `full_name`      varchar(1000) DEFAULT '',
    `position`       varchar(100)  DEFAULT '',
    `company`        varchar(1000) DEFAULT '',
    `email`          varchar(322)  DEFAULT '',
    `phone_number`   char(11)      DEFAULT '',
    `application_id` char(36)      DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `application_reference_application_id_fk` (`application_id`),
    CONSTRAINT `application_reference_application_id_fk` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

